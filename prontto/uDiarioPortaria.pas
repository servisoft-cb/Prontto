unit uDiarioPortaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, JvLookup, StdCtrls, Mask, DBCtrls, Buttons,
  ExtCtrls, uDmDiario, FMTBcd, DB, DBClient, Provider, SqlExpr, rsDBUtils, JvDBComb;

type
  TfDiarioPortaria = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
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
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label4: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    sdsAgente: TSQLDataSet;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    dspAgente: TDataSetProvider;
    cdsAgente: TClientDataSet;
    IntegerField4: TIntegerField;
    StringField4: TStringField;
    dsAgente: TDataSource;
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
  fDiarioPortaria: TfDiarioPortaria;

implementation

{$R *.dfm}

procedure TfDiarioPortaria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfDiarioPortaria.BitBtn2Click(Sender: TObject);
begin
  fDmDiario.cdsDiarioPortaria.Cancel;
  Close;
end;

procedure TfDiarioPortaria.BitBtn1Click(Sender: TObject);
begin
  if fDmDiario.cdsDiario.ReadOnly then
  begin
    ShowMessage('Diário revisado não pode ser alterado!');
    BitBtn2.Click;
    Exit;
  end;

  fDmDiario.cdsDiarioPortariaCLIENTE.AsString := JvDBLookupCombo2.Text;
  fDmDiario.cdsDiarioPortaria.Post;
  Close;
end;

procedure TfDiarioPortaria.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

procedure TfDiarioPortaria.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmDiario);
end;

procedure TfDiarioPortaria.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if fDmDiario.cdsDiarioPortaria.State in [dsInsert,dsEdit] then
    BitBtn2.Click;
end;

end.
