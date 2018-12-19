unit uAgente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB, Dialogs, StdCtrls, Mask, DBCtrls, Buttons, UDm1,
  ExtCtrls, JvDBComb, rsDBUtils, JvLookup;

type
  TfAgente = class(TForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fAgente: TfAgente;

implementation


{$R *.dfm}

procedure TfAgente.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tPessoa.Cancel;
  Close;
end;

procedure TfAgente.BitBtn1Click(Sender: TObject);
begin
  if Fdm1.tPessoaNOME.IsNull then
  begin
    ShowMessage('Nome deve ser preenchido!');
    Exit;
  end;
  if Fdm1.tPessoaCIDADE.IsNull then
  begin
    ShowMessage('Cidade deve ser preenchida!');
    Exit;
  end;
  if Fdm1.tPessoa.State in [dsInsert] then
    Fdm1.tPessoaID.AsInteger := Fdm1.Incrementa('ID','PESSOA');
  Fdm1.tPessoa.Post;
  Fdm1.tPessoa.ApplyUpdates(0);
  Close;
end;

procedure TfAgente.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tPessoa.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tPessoa.State in [dsBrowse] then
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

procedure TfAgente.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
