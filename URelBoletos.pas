unit URelBoletos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, QuickRpt, Qrctrls, StdCtrls, UDM1,
  rsDBUtils;

type
  TfRelBoletos = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
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
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRDBText11: TQRDBText;
    QRInst1: TQRLabel;
    QRInst2: TQRLabel;
    QRInst3: TQRLabel;
    QRInst4: TQRLabel;
    QRInst5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel65: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    Fdm1: Tdm1;
    procedure SetDM1(const Value: Tdm1);
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write SetDM1;
  end;

var
  fRelBoletos: TfRelBoletos;

implementation

uses UBoletos;

{$R *.DFM}

procedure TfRelBoletos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelBoletos.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel58.Caption := fBoletos.JvDateEdit1.Text;

  if fBoletos.CheckBox1.Checked then
    QRLabel59.Caption := fBoletos.JvDateEdit1.Text
  else
    QRLabel59.Caption := Fdm1.tClienteAccDiaVencimento.AsString + '/' + IntToStr(fBoletos.ComboBox1.ItemIndex + 1) +
                         '/' + IntToStr(fBoletos.JvYearEdit1.Value);

  QRLabel60.Caption := fBoletos.Edit2.Text;
  QRInst1.Caption   := fBoletos.Instrucao1.Text;
  QRInst2.Caption   := fBoletos.Instrucao2.Text;
  QRInst3.Caption   := fBoletos.Instrucao3.Text;
  QRInst4.Caption   := fBoletos.Instrucao4.Text;
  QRInst5.Caption   := fBoletos.Instrucao5.Text;
end;

procedure TfRelBoletos.SetDM1(const Value: Tdm1);
begin
  Fdm1 := Value;
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
