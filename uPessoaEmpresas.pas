unit uPessoaEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, JvLookup, UDm1, rsDBUtils,
  JvToolEdit, JvDBCtrl;

type
  TfPessoaEmpresas = class(TForm)
    Label3: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    JvDBLookupCombo8: TJvDBLookupCombo;
    Label1: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    Label2: TLabel;
    JvDBDateEdit2: TJvDBDateEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure JvDBLookupCombo8Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvDBLookupCombo8Change(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fPessoaEmpresas: TfPessoaEmpresas;

implementation

uses UDmCons;

{$R *.dfm}

procedure TfPessoaEmpresas.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tPessoaEmpresas.Cancel;
  Close;
end;

procedure TfPessoaEmpresas.BitBtn1Click(Sender: TObject);
begin
  if JvDBLookupCombo8.Text = '' then
  begin
    ShowMessage('Nome deve ser preenchido!');
    JvDBLookupCombo8.SetFocus;
    Exit;
  end;
  if JvDBDateEdit1.Date < 1000 then
  begin
    ShowMessage('Data de início deve ser preenchida!');
    JvDBDateEdit1.SetFocus;
    Exit;
  end;
  fdm1.tPessoaEmpresasNOME.AsString := JvDBLookupCombo8.Text;
  Fdm1.tPessoaEmpresas.Post;
  Close;
end;

procedure TfPessoaEmpresas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tPessoaEmpresas.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tPessoaEmpresas.State in [dsBrowse] then
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

procedure TfPessoaEmpresas.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfPessoaEmpresas.JvDBLookupCombo8Enter(Sender: TObject);
begin
  DmCons.qPessoa.IndexFieldNames := 'NOME';
end;

procedure TfPessoaEmpresas.FormCreate(Sender: TObject);
begin
  DmCons.qPessoa.Open;
end;

procedure TfPessoaEmpresas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DmCons.qPessoa.Close;
end;

procedure TfPessoaEmpresas.JvDBLookupCombo8Change(Sender: TObject);
begin
  fdm1.tPessoaEmpresasNOME.AsString := JvDBLookupCombo8.Text;
end;

end.
