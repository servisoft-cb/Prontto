unit URelDuplicata;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, QuickRpt, Qrctrls, ValorPor, UDM1,
  DB, rsDBUtils;

type
  TfRelDuplicata = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRShape5: TQRShape;
    QRLabel9: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel19: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape17: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape18: TQRShape;
    QRLabel35: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    ValorPorExtenso1: TValorPorExtenso;
    QRDBText24: TQRDBText;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel41: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel42: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText22: TQRDBText;
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
    vNumCopias: Integer;
    Fdm1: Tdm1;
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fRelDuplicata: TfRelDuplicata;

implementation

uses UPrevDuplicatas;

{$R *.DFM}

procedure TfRelDuplicata.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := fPrevDuplicatas.SMDBGrid1.SelectedRows.CurrentRowSelected;
  if PrintBand then
  begin
    ValorPorExtenso1.Valor := fPrevDuplicatas.tCReceberParcVLRVENCIMENTO.AsFloat;
    QRLabel36.Caption := Copy(ValorPorExtenso1.texto,1,75);
    QRLabel37.Caption := Copy(ValorPorExtenso1.texto,76,151);
    QRLabel38.Caption := Copy(ValorPorExtenso1.texto,152,227);
    QRLabel39.Caption := '';
    QRLabel40.Caption := '';
    QRLabel39.Caption := fPrevDuplicatas.tCReceberParcCIDADE.AsString;
    QRLabel40.Caption := fPrevDuplicatas.tCReceberParcCIDADE.AsString;
  end;
end;

procedure TfRelDuplicata.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(Fdm1);
  Action := Cafree;
end;

procedure TfRelDuplicata.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  vNumCopias := 0;
end;

procedure TfRelDuplicata.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
{  fPrevDuplicatas.tCReceberParc.Edit;
  fPrevDuplicatas.tCReceberParcDUPLICATAIMP.AsString := 'S';
  fPrevDuplicatas.tCReceberParc.post;
  fPrevDuplicatas.tCReceberParc.ApplyUpdates(0);}
end;

end.
