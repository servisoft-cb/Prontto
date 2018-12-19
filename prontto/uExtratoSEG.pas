unit uExtratoSEG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, FMTBcd, StdCtrls,
  Buttons, Mask, JvToolEdit, DB, DBClient, Provider, SqlExpr, JvLookup, Grids, DBGrids, SMDBGrid, DateUtils,
  ComCtrls;

type
  TfExtratoSEG = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    JvDBLookupCombo2: TJvDBLookupCombo;
    sdsCliente: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    dsCliente: TDataSource;
    JvDateEdit1: TJvDateEdit;
    JvDateEdit2: TJvDateEdit;
    BitBtn1: TBitBtn;
    sdsOcorrencias: TSQLDataSet;
    dspOcorrencias: TDataSetProvider;
    cdsOcorrencias: TClientDataSet;
    dsOcorrencias: TDataSource;
    sdsOcorrenciasNOME: TStringField;
    sdsOcorrenciasDATA: TDateField;
    sdsOcorrenciasMOTIVO: TStringField;
    cdsOcorrenciasNOME: TStringField;
    cdsOcorrenciasDATA: TDateField;
    cdsOcorrenciasMOTIVO: TStringField;
    cdsResumo: TClientDataSet;
    cdsResumoNomeOcorrencia: TStringField;
    cdsResumoHora: TTimeField;
    cdsResumoObservacao: TStringField;
    cdsResumoData: TDateField;
    dsResumo: TDataSource;
    cdsResumoCliente: TStringField;
    StatusBar1: TStatusBar;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fExtratoSEG: TfExtratoSEG;

implementation

uses UDm1;

{$R *.dfm}

procedure TfExtratoSEG.BitBtn1Click(Sender: TObject);
var
  vCont: Integer;
begin
//SEG - Especiais
  vCont := 0;
  cdsResumo.Open;
  cdsResumo.EmptyDataSet;
  cdsOcorrencias.Close;
  sdsOcorrencias.CommandText := 'SELECT P.NOME, D.DATA, DE.MOTIVO ' +
                                'FROM DIARIO D ' +
                                'LEFT JOIN DIARIO_ESPECIAL DE ON (D.ID = DE.DIARIO_ID) ' +
                                'INNER JOIN PESSOA P ON (P.ID = DE.CLIENTE_ID) ' +
                                'WHERE D.DATA BETWEEN :D1 AND :D2 ';
  if JvDBLookupCombo2.KeyValue > 0 then
  begin
    sdsOcorrencias.CommandText := sdsOcorrencias.CommandText + 'AND DE.CLIENTE_ID = ' + JvDBLookupCombo2.Value;
  end;
    sdsOcorrencias.CommandText := sdsOcorrencias.CommandText + 'ORDER BY P.NOME, D.DATA';
  sdsOcorrencias.ParamByName('D1').AsDate := JvDateEdit1.Date;
  sdsOcorrencias.ParamByName('D2').AsDate := JvDateEdit2.Date;
  cdsOcorrencias.Open;
  while not cdsOcorrencias.Eof do
  begin
    inc(vCont);
    cdsResumo.Insert;
    cdsResumoCliente.AsString        := cdsOcorrenciasNOME.AsString;
    cdsResumoData.AsDateTime         := cdsOcorrencias.FieldByName('DATA').AsDateTime;
//    cdsResumoHora.AsSQLTimeStamp := cdsOcorrencias.FieldByName('DATA').AsSQLTimeStamp;
    cdsResumoNomeOcorrencia.AsString := 'SEG';
    cdsResumoObservacao.AsString     := cdsOcorrencias.FieldByName('MOTIVO').AsString;
    cdsResumo.Post;
    cdsOcorrencias.Next;
  end;
  StatusBar1.Panels[0].Text := 'Total: ' + IntToStr(vCont) + ' occorrências';
end;

procedure TfExtratoSEG.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfExtratoSEG.FormShow(Sender: TObject);
begin
  cdsCliente.Open;
  JvDateEdit2.Date := Date;
  JvDateEdit1.Date := IncMonth(Date,-1);
end;

end.
