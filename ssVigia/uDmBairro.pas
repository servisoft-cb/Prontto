unit uDmBairro;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmBairro = class(TDataModule)
    sdsBairro: TSQLDataSet;
    dspBairro: TDataSetProvider;
    cdsBairro: TClientDataSet;
    dsBairro: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBairro: TdmBairro;

implementation

{$R *.dfm}

procedure TdmBairro.DataModuleCreate(Sender: TObject);
begin
  cdsBairro.Open;
end;

end.
