unit uDmReclamacao;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmReclamacao = class(TDataModule)
    sdsReclamacao: TSQLDataSet;
    dspReclamacao: TDataSetProvider;
    cdsReclamacao: TClientDataSet;
    dsReclamacao: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmReclamacao: TdmReclamacao;

implementation

{$R *.dfm}

end.
