unit uDiarioCamera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, JvLookup, StdCtrls, Mask, DBCtrls, Buttons,
  ExtCtrls, uDmDiario, FMTBcd, DB, DBClient, Provider, SqlExpr, rsDBUtils, JvDBComb;

type
  TfDiarioCamera = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    DBEdit3: TDBEdit;
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
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBText1: TDBText;
    Label6: TLabel;
    DBEdit4: TDBEdit;
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
  fDiarioCamera: TfDiarioCamera;

implementation
             
{$R *.dfm}

procedure TfDiarioCamera.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfDiarioCamera.BitBtn2Click(Sender: TObject);
begin
  fDmDiario.cdsDiarioCamera.Cancel;
  Close;
end;

procedure TfDiarioCamera.BitBtn1Click(Sender: TObject);
begin
  if fDmDiario.cdsDiario.ReadOnly then
  begin
    ShowMessage('Diário revisado não pode ser alterado!');
    BitBtn2.Click;
    Exit;
  end;

  fDmDiario.cdsDiarioCameraCLIENTE.AsString := JvDBLookupCombo2.Text;
  fDmDiario.cdsDiarioCamera.Post;
  Close;
end;

procedure TfDiarioCamera.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

procedure TfDiarioCamera.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmDiario);
end;

procedure TfDiarioCamera.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if fDmDiario.cdsDiarioCamera.State in [dsInsert,dsEdit] then
    BitBtn2.Click;
end;

end.
