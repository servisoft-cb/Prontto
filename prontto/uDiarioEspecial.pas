unit uDiarioEspecial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, JvLookup, StdCtrls, Mask, DBCtrls, Buttons,
  ExtCtrls, uDmDiario, FMTBcd, DB, DBClient, Provider, SqlExpr, rsDBUtils, JvDBComb;

type
  TfDiarioEspecial = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    sdsAgente: TSQLDataSet;
    sdsAgenteID: TIntegerField;
    sdsAgenteNOME: TStringField;
    dspAgente: TDataSetProvider;
    cdsAgente: TClientDataSet;
    cdsAgenteID: TIntegerField;
    cdsAgenteNOME: TStringField;
    dsAgente: TDataSource;
    Label5: TLabel;
    JvDBLookupCombo2: TJvDBLookupCombo;
    sdsCliente: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    dsCliente: TDataSource;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    JvDBComboBox1: TJvDBComboBox;
    JvDBComboBox2: TJvDBComboBox;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    fDmDiario: TDmDiario;
  public
    { Public declarations }
    property DmDiario: TDmDiario read fDmDiario write fDmDiario;
  end;

var
  fDiarioEspecial: TfDiarioEspecial;

implementation

{$R *.dfm}

procedure TfDiarioEspecial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfDiarioEspecial.BitBtn2Click(Sender: TObject);
begin
  fDmDiario.cdsDiarioEspecial.Cancel;
  Close;
end;

procedure TfDiarioEspecial.BitBtn1Click(Sender: TObject);
begin
  if fDmDiario.cdsDiarioEspecialAGENTE_ID.IsNull then
  begin
    ShowMessage('Agente deve ser selecionado!');
    Exit;
  end;

  if fDmDiario.cdsDiario.ReadOnly then
  begin
    ShowMessage('Diário revisado não pode ser alterado!');
    BitBtn2.Click;
    Exit;
  end;

  fDmDiario.cdsDiarioEspecialAGENTE.AsString  := JvDBLookupCombo1.Text;
  fDmDiario.cdsDiarioEspecialCLIENTE.AsString := JvDBLookupCombo2.Text;
  fDmDiario.cdsDiarioEspecial.Post;
  Close;
end;

procedure TfDiarioEspecial.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

procedure TfDiarioEspecial.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmDiario);
end;

procedure TfDiarioEspecial.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if fDmDiario.cdsDiarioEspecial.State in [dsInsert,dsEdit] then
    BitBtn2.Click;
end;

end.
