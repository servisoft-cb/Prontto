unit uBinaHistorico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvDBCtrl, FMTBcd, DB, SqlExpr, DBClient,
  Provider, ExtCtrls, UDm1, rsDBUtils;

type
  TfBinaHistorico = class(TForm)
    JvDBGrid1: TJvDBGrid;
    BinaHistorico: TSQLDataSet;
    BinaHistoricoP: TDataSetProvider;
    tBinaHistorico: TClientDataSet;
    tBinaHistoricoID: TIntegerField;
    tBinaHistoricoNUMERO: TStringField;
    tBinaHistoricoNOME: TStringField;
    tBinaHistoricoDATA: TDateField;
    tBinaHistoricoHORA: TTimeField;
    tBinaHistoricoTIPO: TStringField;
    tBinaHistoricoCONT: TIntegerField;
    tBinaHistoricoPROCEDIMENTO: TMemoField;
    dsBinaHistorico: TDataSource;
    Timer1: TTimer;
    BinaHistorico2: TSQLDataSet;
    BinaHistorico2P: TDataSetProvider;
    tBinaHistorico2: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    DateField1: TDateField;
    TimeField1: TTimeField;
    StringField3: TStringField;
    IntegerField2: TIntegerField;
    MemoField1: TMemoField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    Fdm1: TDm1;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBinaHistorico: TfBinaHistorico;
  ct: String;

implementation



{$R *.dfm}

procedure TfBinaHistorico.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

{  ct := BinaHistorico.CommandText;
  BinaHistorico.CommandText := 'SELECT NUMERO, NOME, MAX(DATA) DATA, MAX(HORA) HORA, ' +
                                     'COUNT(ID) ID, TIPO, PROCEDIMENTO ' +
                                     'FROM BINAHISTORICO ' +
                                     'GROUP BY NUMERO, NOME, TIPO, PROCEDIMENTO ' +
                                     'ORDER BY MAX(DATA), MAX(HORA) DESC';
  tBinaHistorico.Open;}
  Fdm1.tAlarmeAcc.Open;
  tBinaHistorico.Open;
  tBinaHistorico2.Open;
  Fdm1.tOcorrenciaAcc.Open;
end;

procedure TfBinaHistorico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tAlarmeAcc.Close;
  tBinaHistorico.Close;
  tBinaHistorico2.Close;
  Fdm1.tOcorrenciaAcc.Close;
  tBinaHistorico.Close;
  BinaHistorico.CommandText := ct;
end;

procedure TfBinaHistorico.JvDBGrid1DblClick(Sender: TObject);
begin
{  fProcedimento := TfProcedimento.Create(Self);
  fProcedimento.ShowModal;
  fProcedimento.Free;}
end;

procedure TfBinaHistorico.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false;
  tBinaHistorico2.Filtered := False;
  tBinaHistorico2.Filter   := 'Data = ' + QuotedStr(DateToStr(Date));
  tBinaHistorico2.Filtered := True;
  Fdm1.tOcorrenciaAcc.Filtered := False;
  Fdm1.tOcorrenciaAcc.Filter   := 'Data = ' + QuotedStr(DateToStr(Date));
  Fdm1.tOcorrenciaAcc.Filtered := True;
  Fdm1.tOcorrenciaAcc.First;
  while not Fdm1.tOcorrenciaAcc.Eof do
    begin
      if not tBinaHistorico2.Locate('ID',Fdm1.tOcorrenciaAccIdOcorrencia.Value, ([loCaseInsensitive])) then
        begin
          Fdm1.tAlarmeAcc.Locate('IdAlarme',Fdm1.tOcorrenciaAccIdAlarme.Value,([loCaseInsensitive]));
          tBinaHistorico.Insert;
          tBinaHistoricoID.Value     := Fdm1.tOcorrenciaAccIdOcorrencia.Value;
          tBinaHistoricoNUMERO.Value := Fdm1.tAlarmeAccFoneIdentificacao1.Value;
          tBinaHistoricoNOME.Value   := Fdm1.tAlarmeAccNomeLocal.Value;
          tBinaHistoricoDATA.Value   := Fdm1.tOcorrenciaAccData.Value;
          tBinaHistoricoHORA.Value   := Fdm1.tOcorrenciaAccHora.Value;
          tBinaHistoricoTIPO.Value   := IntToStr(Fdm1.tOcorrenciaAccTipo.Value);
          tBinaHistorico.Post;
        end;  
      Fdm1.tOcorrenciaAcc.Next;
    end;
  tBinaHistorico.ApplyUpdates(0);
  Fdm1.tOcorrenciaAcc.Filtered := False;
  tBinaHistorico2.Filtered := False;
  Timer1.Enabled := true;
end;

procedure TfBinaHistorico.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
