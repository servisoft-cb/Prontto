unit uDmEscala;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmEscala = class(TDataModule)
    sdsEscalaDiaria: TSQLDataSet;
    dspEscalaDiaria: TDataSetProvider;
    cdsEscalaDiaria: TClientDataSet;
    dsEscalaDiaria: TDataSource;
    sdsEscalaDiariaID: TIntegerField;
    sdsEscalaDiariaCLIENTE_ID: TIntegerField;
    sdsEscalaDiariaDATA: TDateField;
    sdsEscalaDiariaHR_INI: TTimeField;
    sdsEscalaDiariaHR_FIM: TTimeField;
    sdsEscalaDiariaAGENTE_ID: TIntegerField;
    cdsEscalaDiariaID: TIntegerField;
    cdsEscalaDiariaCLIENTE_ID: TIntegerField;
    cdsEscalaDiariaDATA: TDateField;
    cdsEscalaDiariaHR_INI: TTimeField;
    cdsEscalaDiariaHR_FIM: TTimeField;
    cdsEscalaDiariaAGENTE_ID: TIntegerField;
    sdsEscalaDiariaCLIENTE: TStringField;
    cdsEscalaDiariaCLIENTE: TStringField;
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    cdsPessoaID: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsEscalaDiarialkAgente: TStringField;
    sdsAvisoEscala: TSQLDataSet;
    pdsAvisoEscala: TDataSetProvider;
    cdsAvisoEscala: TClientDataSet;
    dsAvisoEscala: TDataSource;
    sdsAvisoEscalaID: TIntegerField;
    sdsAvisoEscalaCLIENTE_ID: TIntegerField;
    sdsAvisoEscalaDATA: TDateField;
    sdsAvisoEscalaHR_INI: TTimeField;
    sdsAvisoEscalaHR_FIM: TTimeField;
    sdsAvisoEscalaAGENTE_ID: TIntegerField;
    sdsAvisoEscalaHR_QAP: TTimeField;
    sdsAvisoEscalaCLIENTE: TStringField;
    cdsAvisoEscalaID: TIntegerField;
    cdsAvisoEscalaCLIENTE_ID: TIntegerField;
    cdsAvisoEscalaDATA: TDateField;
    cdsAvisoEscalaHR_INI: TTimeField;
    cdsAvisoEscalaHR_FIM: TTimeField;
    cdsAvisoEscalaAGENTE_ID: TIntegerField;
    cdsAvisoEscalaHR_QAP: TTimeField;
    cdsAvisoEscalaCLIENTE: TStringField;
    cdsAvisoEscalalkAgente: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmEscala: TdmEscala;

implementation

{$R *.dfm}

end.
