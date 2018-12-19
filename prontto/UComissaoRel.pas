unit UComissaoRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfComissaoRel = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDraw3: TRLDraw;
    RLDBText1: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel4: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel7: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel8: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel9: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel10: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel11: TRLLabel;
    RLDraw23: TRLDraw;
    RLLabel34: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw9: TRLDraw;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDraw10: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fComissaoRel: TfComissaoRel;
  vTotal : Real;

implementation

uses UConsComissaoVend, DB;

{$R *.dfm}

procedure TfComissaoRel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfComissaoRel.FormShow(Sender: TObject);
begin
  vTotal := 0;
end;

procedure TfComissaoRel.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vTotal := vTotal + fConsComissaoVend.qExtComissaoVLRCOMISSAO.AsFloat;
end;

procedure TfComissaoRel.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel14.Caption := FormatFloat('###,###,##0.00',vTotal);
end;

end.
