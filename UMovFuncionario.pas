unit UMovFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, Grids, DBGrids, SMDBGrid, Mask,
  JvToolEdit, JvLookup, FMTBcd, SqlExpr, Provider, UDm1, rsDBUtils;

type
  TfMovFuncionario = class(TForm)
    JvDBLookupCombo1: TJvDBLookupCombo;
    JvDateEdit1: TJvDateEdit;
    JvDateEdit2: TJvDateEdit;
    SMDBGrid1: TSMDBGrid;
    BitBtn1: TBitBtn;
    MovFuncionario: TClientDataSet;
    dsMovFuncionario: TDataSource;
    MovFuncionarioCodFuncionario: TIntegerField;
    MovFuncionarioMes: TIntegerField;
    MovFuncionarioAno: TIntegerField;
    MovFuncionarioHoras: TFloatField;
    MovFuncionarioValor: TFloatField;
    MovFuncionarioCodEvento: TIntegerField;
    FuncionarioP: TDataSetProvider;
    Funcionario: TSQLQuery;
    qFuncionario: TClientDataSet;
    qFuncionarioID: TIntegerField;
    qFuncionarioNOME: TStringField;
    qFuncionarioFUNCIONARIO: TStringField;
    qsFuncionario: TDataSource;
    qFuncionarioTIPOSALARIO: TStringField;
    qFuncionarioVALORSALARIO: TFloatField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Gera: TSQLQuery;
    GeraP: TDataSetProvider;
    qGera: TClientDataSet;
    qGeraFUNCIONARIO: TIntegerField;
    qGeraVALOR: TFloatField;
    qGeraNOME: TStringField;
    qGeraHORA: TFloatField;
    dsGera: TDataSource;
    qGeraID: TIntegerField;
    MovFuncionarioNomeFuncionario: TStringField;
    MovFuncionarioNomeEvento: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
    procedure geraSQL;
    procedure montaMov;
  public
    { Public declarations }
  end;

var
  fMovFuncionario: TfMovFuncionario;

implementation


{$R *.dfm}

procedure TfMovFuncionario.geraSQL;
var
  vSQL : String;
begin
  vSQL := ' AND ';
  qGera.Close;
  Gera.SQL.Clear;
  Gera.SQL.Add('SELECT distinct(A.FUNCIONARIO), SUM(A.VALOR) VALOR, B.ID, B.nome, SUM(A.hora) HORA ');
  Gera.SQL.Add('FROM VALORES A, EVENTOS B ');
  Gera.SQL.Add('WHERE (A.idevento = B.id) ');
  if (JvDBLookupCombo1.Text <> '') then
    begin
      Gera.SQL.Add(vSQL + '(A.FUNCIONARIO = :F1 ) ');
      Gera.ParamByName('F1').AsInteger := JvDBLookupCombo1.KeyValue;
    end;
  if (JvDateEdit1.Date > 1) then
    begin
      Gera.SQL.Add(vSQL + '(A.dtmov >= :D1 ) ');
      Gera.ParamByName('D1').AsDate := JvDateEdit1.Date;
    end;
  if (JvDateEdit1.Date > 1) then
    begin
      Gera.SQL.Add(vSQL + '(A.dtmov <= :D2 ) ');
      Gera.ParamByName('D2').AsDate := JvDateEdit2.Date;
    end;
  Gera.SQL.Add('GROUP BY A.FUNCIONARIO, B.nome, B.ID');
  qGera.Open;
  MovFuncionario.EmptyDataSet;
  qfUNCIONARIO.First;
   while not qfUNCIONARIO.eof do
     begin
       qGera.Filtered := False;
       qGera.Filter := 'FUNCIONARIO = '+ QuotedStr(qFuncionarioID.AsString);
       qGera.Filtered := True;
       montaMov;
       qFuncionario.Next;
     end;
end;

procedure TfMovFuncionario.montaMov;
var
  vValor : Real;
  vMes, vAno, vDia : Word;
begin
  qGera.First;
  while not qGera.Eof do
    begin
      DecodeDate(JvDateEdit1.Date, vAno, vMes,vDia);
      MovFuncionario.Insert;
      MovFuncionarioMes.AsInteger := vMes;
      MovFuncionarioAno.AsInteger := vAno;
      MovFuncionarioCodEvento.AsInteger := qGeraID.AsInteger;
      MovFuncionarioCodFuncionario.AsInteger := qGeraFUNCIONARIO.AsInteger;
      MovFuncionarioNomeEvento.AsString := qGeraNOME.AsString;
      MovFuncionarioNomeFuncionario.AsString := qFuncionarioNOME.AsString;
      MovFuncionarioHoras.AsFloat := qGeraHORA.AsFloat;
      vValor := qFuncionarioVALORSALARIO.AsFloat;
      if qFuncionarioTIPOSALARIO.AsString = 'M' then
        vValor := (qFuncionarioVALORSALARIO.AsFloat / 220);
      Fdm1.tEventos.Locate('ID', qGeraID.AsInteger,([loCaseInsensitive]));
      if Fdm1.tEventosPERCENTUAL.AsFloat > 0 then
        vValor := vValor + (vValor * Fdm1.tEventosPERCENTUAL.AsFloat / 100);
      if MovFuncionarioHoras.AsFloat > 0 then
        MovFuncionarioValor.AsFloat := StrToFloat(FormatFloat('0.00',(vValor * qGeraHORA.AsFloat)))
      else
        MovFuncionarioValor.AsFloat := StrToFloat(FormatFloat('0.00',(vValor + qGeraValor.AsFloat)));
      MovFuncionario.Post;
      qGera.Next;
    end;
end;

procedure TfMovFuncionario.BitBtn1Click(Sender: TObject);
begin
  geraSQL;
end;

procedure TfMovFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=Cafree;
end;

procedure TfMovFuncionario.FormShow(Sender: TObject);
begin
  Fdm1.tEventos.Open;
end;

procedure TfMovFuncionario.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfMovFuncionario.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
