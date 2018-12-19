unit uDiarioBairro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, DBCtrls, Buttons, uDm1, uDmDiario,
  FMTBcd, Mask, DB, DBClient, Provider, SqlExpr, JvLookup, rsDBUtils,
  ExtCtrls;

type
  TfDiarioBairro = class(TForm)
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    sdsViatura: TSQLDataSet;
    dspViatura: TDataSetProvider;
    cdsViatura: TClientDataSet;
    dsViatura: TDataSource;
    sdsViaturaID: TIntegerField;
    sdsViaturaATIVA: TStringField;
    sdsViaturaPLACA: TStringField;
    cdsViaturaID: TIntegerField;
    cdsViaturaATIVA: TStringField;
    cdsViaturaPLACA: TStringField;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmDiario: TDmDiario;
  end;

var
  fDiarioBairro: TfDiarioBairro;

implementation

{$R *.dfm}

procedure TfDiarioBairro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfDiarioBairro.BitBtn1Click(Sender: TObject);
begin
  if fDmDiario.cdsDiario.ReadOnly then
  begin
    ShowMessage('Diário revisado não pode ser alterado!');
    BitBtn2.Click;
    Exit;
  end;

  fDmDiario.cdsDiarioBairroHORA.AsDateTime := Now;
  fDmDiario.cdsDiarioBairroPLACA.AsString  := JvDBLookupCombo1.Text;
  fDmDiario.cdsDiarioBairro.Post;
  Close;
end;

procedure TfDiarioBairro.BitBtn2Click(Sender: TObject);
begin
  fDmDiario.cdsDiarioBairro.Cancel;
  Close;
end;

procedure TfDiarioBairro.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmDiario);
end;

procedure TfDiarioBairro.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if fDmDiario.cdsDiarioBairro.State in [dsInsert,dsEdit] then
    BitBtn2.Click;
end;

end.
