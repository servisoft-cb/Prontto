unit uDmAgente;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmAgente = class(TDataModule)
    sdsAgente: TSQLDataSet;
    dspAgente: TDataSetProvider;
    cdsAgente: TClientDataSet;
    dsAgente: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAgente: TdmAgente;

implementation

uses DmdDatabase;

{$R *.dfm}

end.
