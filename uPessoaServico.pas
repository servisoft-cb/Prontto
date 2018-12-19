unit uPessoaServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB, Dialogs, StdCtrls, Mask, DBCtrls, Buttons, UDm1, 
  ExtCtrls, JvLookup, JvToolEdit, JvDBCtrl, JvCurrEdit, rsDBUtils;

type
  TfPessoaServico = class(TForm)
    Label3: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label46: TLabel;
    JvDBDateEdit2: TJvDBDateEdit;
    Label1: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure JvDBLookupCombo1Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fPessoaServico: TfPessoaServico;

implementation

{$R *.dfm}

procedure TfPessoaServico.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tPessoaServico.Cancel;
  Close;
end;

procedure TfPessoaServico.BitBtn1Click(Sender: TObject);
begin
  if JvDBLookupCombo1.Text = '' then
  begin
    ShowMessage('Serviço deve ser preenchido!');
    Exit;
  end;
  Fdm1.tPessoaServicoNOME.AsString := JvDBLookupCombo1.Text;
  Fdm1.tPessoaServico.Post;
  Close;
end;

procedure TfPessoaServico.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tPessoaServico.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tPessoaServico.State in [dsBrowse] then
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

procedure TfPessoaServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tServico.Close;
end;

procedure TfPessoaServico.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  Fdm1.tServico.Open;
end;

procedure TfPessoaServico.JvDBLookupCombo1Enter(Sender: TObject);
begin
  fdm1.tServico.IndexFieldNames := 'NOME';
end;

procedure TfPessoaServico.DBEdit2Exit(Sender: TObject);
begin
  Fdm1.tPessoaServicoTER_HR_INI.AsString := DBEdit2.Text;
  Fdm1.tPessoaServicoQUA_HR_INI.AsString := DBEdit2.Text;
  Fdm1.tPessoaServicoQUI_HR_INI.AsString := DBEdit2.Text;
  Fdm1.tPessoaServicoSEX_HR_INI.AsString := DBEdit2.Text;
end;

procedure TfPessoaServico.DBEdit3Exit(Sender: TObject);
begin
  Fdm1.tPessoaServicoTER_HR_FIM.AsString := DBEdit3.Text;
  Fdm1.tPessoaServicoQUA_HR_FIM.AsString := DBEdit3.Text;
  Fdm1.tPessoaServicoQUI_HR_FIM.AsString := DBEdit3.Text;
  Fdm1.tPessoaServicoSEX_HR_FIM.AsString := DBEdit3.Text;
end;

end.
