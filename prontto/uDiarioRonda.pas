unit uDiarioRonda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, DBCtrls, Buttons, uDm1, uDmDiario,
  FMTBcd, Mask, DB, DBClient, Provider, SqlExpr, JvLookup, rsDBUtils,
  ExtCtrls;

type
  TfDiarioRonda = class(TForm)
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
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    fDmDiario: TDmDiario;
  public
    { Public declarations }
    property dmDiario: TDmDiario read fDmDiario write fDmDiario;
  end;

var
  fDiarioRonda: TfDiarioRonda;

implementation

{$R *.dfm}

procedure TfDiarioRonda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfDiarioRonda.BitBtn1Click(Sender: TObject);
begin
  if fDmDiario.cdsDiario.ReadOnly then
  begin
    ShowMessage('Diário revisado não pode ser alterado!');
    BitBtn2.Click;
    Exit;
  end;

  fDmDiario.cdsDiarioRondaHORA.AsDateTime := Now;
  fDmDiario.cdsDiarioRondaPLACA.AsString  := JvDBLookupCombo1.Text;
  fDmDiario.cdsDiarioRonda.Post;
  Close;
end;

procedure TfDiarioRonda.BitBtn2Click(Sender: TObject);
begin
  fDmDiario.cdsDiarioRonda.Cancel;
  Close;
end;

procedure TfDiarioRonda.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmDiario);
end;

procedure TfDiarioRonda.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if fDmDiario.cdsDiarioRonda.State in [dsInsert,dsEdit] then
    BitBtn2.Click;
end;

end.
