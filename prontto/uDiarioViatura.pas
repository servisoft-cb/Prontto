unit uDiarioViatura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, JvLookup, StdCtrls, Mask, DBCtrls, Buttons,
  ExtCtrls, uDmDiario, FMTBcd, DB, DBClient, Provider, SqlExpr, rsDBUtils;

type
  TfDiarioViatura = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    sdsAgente: TSQLDataSet;
    sdsAgenteID: TIntegerField;
    sdsAgenteNOME: TStringField;
    dspAgente: TDataSetProvider;
    cdsAgente: TClientDataSet;
    cdsAgenteID: TIntegerField;
    cdsAgenteNOME: TStringField;
    dsAgente: TDataSource;
    JvDBLookupCombo2: TJvDBLookupCombo;
    sdsViatura: TSQLDataSet;
    sdsViaturaID: TIntegerField;
    sdsViaturaATIVA: TStringField;
    sdsViaturaPLACA: TStringField;
    dspViatura: TDataSetProvider;
    cdsViatura: TClientDataSet;
    cdsViaturaID: TIntegerField;
    cdsViaturaATIVA: TStringField;
    cdsViaturaPLACA: TStringField;
    dsViatura: TDataSource;
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
  fDiarioViatura: TfDiarioViatura;

implementation
              
{$R *.dfm}

procedure TfDiarioViatura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfDiarioViatura.BitBtn2Click(Sender: TObject);
begin
  fDmDiario.cdsDiarioViatura.Cancel;
  Close;
end;

procedure TfDiarioViatura.BitBtn1Click(Sender: TObject);
begin
  if fDmDiario.cdsDiario.ReadOnly then
  begin
    ShowMessage('Diário revisado não pode ser alterado!');
    BitBtn2.Click;
    Exit;
  end;
  fDmDiario.cdsViatura.Close;
  fDmDiario.sdsViatura.CommandText := fDmDiario.ctViatura + ' AND ID = ' + fDmDiario.cdsDiarioViaturaVIATURA_ID.AsString;
  fDmDiario.cdsViatura.Open;
  if (fDmDiario.cdsViaturaKM.AsInteger > dmDiario.cdsDiarioViaturaKM_INICIAL.AsInteger) then
  begin
    ShowMessage('Kilometragem inicial da viatura está menor do que a última leitura!');
    DBEdit1.SetFocus;
    Exit;
  end;
  if ((dmDiario.cdsDiarioViaturaKM_FINAL.AsInteger - dmDiario.cdsDiarioViaturaKM_INICIAL.AsInteger) > 100) then
  begin
    if MessageDlg('Kilometragem ultrapassou 100Km! Confirma a kilometragem?',mtConfirmation,[mbOk,mbNo],0) = mrNo then
    begin
      DBEdit1.SetFocus;
      Exit;
    end;
  end;

  fDmDiario.cdsViatura.Edit;
  fDmDiario.cdsViaturaKM.AsInteger := dmDiario.cdsDiarioViaturaKM_INICIAL.AsInteger;
  fDmDiario.cdsViatura.Post;
  fDmDiario.cdsViatura.ApplyUpdates(0);
  fDmDiario.cdsViatura.Close;

  fDmDiario.cdsDiarioViaturaAGENTE.AsString := JvDBLookupCombo1.Text;
  fDmDiario.cdsDiarioViatura.Post;
  Close;
end;

procedure TfDiarioViatura.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

procedure TfDiarioViatura.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmDiario);
end;

procedure TfDiarioViatura.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if fDmDiario.cdsDiarioViatura.State in [dsInsert,dsEdit] then
    BitBtn2.Click;
end;

end.
