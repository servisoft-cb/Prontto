unit uDmCelular;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmCelular = class(TDataModule)
    sdsCelular: TSQLDataSet;
    dspCelular: TDataSetProvider;
    cdsCelular: TClientDataSet;
    dsCelular: TDataSource;
    sdsCelularID: TIntegerField;
    sdsCelularOPERADORA: TStringField;
    sdsCelularNUMERO: TStringField;
    sdsCelularATIVO: TStringField;
    cdsCelularID: TIntegerField;
    cdsCelularOPERADORA: TStringField;
    cdsCelularNUMERO: TStringField;
    cdsCelularATIVO: TStringField;
    sdsCelularDDD: TStringField;
    cdsCelularDDD: TStringField;
    cdsCelularclOperadora: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsCelularCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    ctCelular: String;
    procedure pInserir;
  end;

var
  dmCelular: TdmCelular;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

{ TdmCelular }

procedure TdmCelular.pInserir;
begin
  cdsCelular.Insert;
  cdsCelularID.AsInteger   := dmDatabase.ProximaSequencia('VIG_CELULAR',vFilial);
  cdsCelularATIVO.AsString := 'S';
end;

procedure TdmCelular.DataModuleCreate(Sender: TObject);
begin
  ctCelular := sdsCelular.CommandText;
  cdsCelular.Open;
end;

procedure TdmCelular.cdsCelularCalcFields(DataSet: TDataSet);
begin
  if cdsCelularOPERADORA.AsString <> '' then
    case cdsCelularOPERADORA.AsInteger of
      1: cdsCelularclOperadora.AsString := 'VIVO';
      2: cdsCelularclOperadora.AsString := 'CLARO';
      3: cdsCelularclOperadora.AsString := 'TIM';
      4: cdsCelularclOperadora.AsString := 'OI';
      5: cdsCelularclOperadora.AsString := 'NEXTEL';
    end;
end;

end.
