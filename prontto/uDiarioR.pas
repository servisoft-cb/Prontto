unit uDiarioR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, uDmDiario, rsDBUtils,
  uDm1, uDmRel;

type
  TfDiarioR = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLSubDetail3: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLBand2: TRLBand;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLSubDetail4: TRLSubDetail;
    RLBand4: TRLBand;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLBand5: TRLBand;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLSubDetail5: TRLSubDetail;
    RLBand6: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand7: TRLBand;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLSubDetail6: TRLSubDetail;
    RLBand8: TRLBand;
    RLLabel15: TRLLabel;
    RLLabel17: TRLLabel;
    RLSubDetail7: TRLSubDetail;
    RLBand10: TRLBand;
    RLLabel20: TRLLabel;
    RLSubDetail8: TRLSubDetail;
    RLBand12: TRLBand;
    RLLabel19: TRLLabel;
    RLLabel21: TRLLabel;
    RLBand13: TRLBand;
    RLDBText16: TRLDBText;
    RLSubDetail9: TRLSubDetail;
    RLBand14: TRLBand;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLBand15: TRLBand;
    RLDBText17: TRLDBText;
    RLDetailGrid1: TRLDetailGrid;
    RLLabel16: TRLLabel;
    RLLabel24: TRLLabel;
    RLDBText13: TRLDBText;
    RLDetailGrid2: TRLDetailGrid;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel18: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel31: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel30: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel34: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel35: TRLLabel;
    RLBand9: TRLBand;
    RLLabel36: TRLLabel;
    RLSubDetail10: TRLSubDetail;
    RLBand11: TRLBand;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLBand16: TRLBand;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLDBText25: TRLDBText;
    RLLabel42: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel43: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLLabel47: TRLLabel;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLMemo1: TRLMemo;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLSubDetail2BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    vObs: String;
    fDmRel: TDmRel;
  public
    { Public declarations }
    fDm1: Tdm1;
    fDmDiario: TDmDiario;
  end;

var
  fDiarioR: TfDiarioR;

implementation

uses uDiarioC;

{$R *.dfm}

procedure TfDiarioR.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmDiario);
  oDBUtils.SetDataSourceProperties(Self,fDm1);
end;

procedure TfDiarioR.RLSubDetail2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vObs := fdmDiario.cdsDiarioOBS.AsString;
end;

procedure TfDiarioR.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo1.Lines.Add(vObs);
end;

procedure TfDiarioR.FormCreate(Sender: TObject);
begin
  fDmRel := TDmRel.Create(Self);
end;

procedure TfDiarioR.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
