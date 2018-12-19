unit uPessoaAtendimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB, Dialogs, StdCtrls, Mask, DBCtrls, Buttons, UDm1, 
  ExtCtrls, JvLookup, JvToolEdit, JvDBCtrl, rsDBUtils;

type
  TfPessoaAtendimento = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label46: TLabel;
    JvDBDateEdit2: TJvDBDateEdit;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    DBMemo2: TDBMemo;
    Label2: TLabel;
    DBMemo3: TDBMemo;
    Label3: TLabel;
    DBMemo4: TDBMemo;
    Label4: TLabel;
    Label5: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure JvDBLookupCombo1Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }
  public
    { Public declarations }

    property Dm1: Tdm1 read Fdm1 write Fdm1;

  end;

var
  fPessoaAtendimento: TfPessoaAtendimento;

implementation


{$R *.dfm}

procedure TfPessoaAtendimento.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tPessoaAtendimento.Cancel;
  Close;
end;

procedure TfPessoaAtendimento.BitBtn1Click(Sender: TObject);
begin
  if JvDBDateEdit2.Date < 1 then
  begin
    ShowMessage('Data deve ser preenchida!');
    Exit;
  end;
  Fdm1.tPessoaAtendimentoID.AsInteger    := Fdm1.Incrementa('ID', 'Pessoa_Atendimento');
  Fdm1.tPessoaAtendimentoPESSOA_ID.Value := Fdm1.tPessoaID.Value;
  Fdm1.tPessoaAtendimento.Post;
  Fdm1.tPessoaAtendimento.ApplyUpdates(0);
  Close;
end;

procedure TfPessoaAtendimento.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tPessoaAtendimento.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tPessoaAtendimento.State in [dsBrowse] then
                CanClose := True;
             end;
      mrNo: begin
              BitBtn2.Click;
              CanClose := true;
            end;
    end;
  end
  else
    CanClose := True;
end;

procedure TfPessoaAtendimento.JvDBLookupCombo1Enter(Sender: TObject);
begin
  Fdm1.tPessoa.IndexFieldNames := 'Nome';
  Fdm1.tPessoa.First;
end;

procedure TfPessoaAtendimento.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
