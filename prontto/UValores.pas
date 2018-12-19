unit UValores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, JvLookup, JvEdit,
  JvTypedEdit, JvToolEdit, JvCurrEdit, Grids, DBGrids, SMDBGrid, JvDBComb,
  JvDBCtrl, FMTBcd, DBClient, Provider, SqlExpr, UDm1, rsDBUtils;

type
  TfValores = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Funcionario: TSQLQuery;
    FuncionarioP: TDataSetProvider;
    qFuncionario: TClientDataSet;
    qFuncionarioID: TIntegerField;
    qFuncionarioNOME: TStringField;
    qFuncionarioFUNCIONARIO: TStringField;
    qsFuncionario: TDataSource;
    Label5: TLabel;
    JvDBLookupCombo2: TJvDBLookupCombo;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Fdm1: Tdm1;
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fValores: TfValores;

implementation

uses UDmCons;

{$R *.dfm}

procedure TfValores.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tValores.Cancel;
  Close;
end;

procedure TfValores.BitBtn1Click(Sender: TObject);
begin
  if Fdm1.tValoresFUNCIONARIO.IsNull then
  begin
    ShowMessage('Nome deve ser preenchido!');
    Exit;
  end;
  if Fdm1.tValores.State in [dsInsert] then
    Fdm1.tValoresID.AsInteger := Fdm1.Incrementa('ID','Valores');
  Fdm1.tValoresNOMEFUNCIONARIO.AsString := JvDBLookupCombo1.Text;
  Fdm1.tValoresEVENTO.AsString := JvDBLookupCombo2.Text;
  Fdm1.tValores.Post;
  Fdm1.tValores.ApplyUpdates(0);
  Close;
end;

procedure TfValores.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tValores.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tValores.State in [dsBrowse] then
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

procedure TfValores.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  Fdm1.tEventos.Open;
end;

procedure TfValores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Fdm1.tEventos.Close;
end;

end.
