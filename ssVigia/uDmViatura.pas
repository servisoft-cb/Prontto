unit uDmViatura;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmViatura = class(TDataModule)
    sdsViatura: TSQLDataSet;
    dspViatura: TDataSetProvider;
    cdsViatura: TClientDataSet;
    dsViatura: TDataSource;
    sdsViaturaID: TIntegerField;
    sdsViaturaATIVA: TStringField;
    sdsViaturaPLACA: TStringField;
    sdsViaturaKM: TIntegerField;
    cdsViaturaID: TIntegerField;
    cdsViaturaATIVA: TStringField;
    cdsViaturaPLACA: TStringField;
    cdsViaturaKM: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pInserir;
  end;

var
  dmViatura: TdmViatura;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TdmViatura.DataModuleCreate(Sender: TObject);
begin
  cdsViatura.Open;
end;

procedure TdmViatura.pInserir;
begin
  cdsViatura.Insert;
  cdsViaturaID.AsInteger   := dmDatabase.ProximaSequencia('VIG_VIATURA',0);
  cdsViaturaATIVA.AsString := 'S';
end;

end.
