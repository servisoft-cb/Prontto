unit uRelBoletoSicred;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, RLBarcode, uDm1, uDmRel,
  rsDBUtils, jpeg;

type
  TfRelBoletoSicred = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDraw44: TRLDraw;
    RLBarcode2: TRLBarcode;
    RLDraw45: TRLDraw;
    RLLabel48: TRLLabel;
    RLDraw46: TRLDraw;
    RLLabel49: TRLLabel;
    RLDraw47: TRLDraw;
    RLLabel50: TRLLabel;
    RLDraw48: TRLDraw;
    RLLabel51: TRLLabel;
    RLDraw49: TRLDraw;
    RLLabel52: TRLLabel;
    RLDraw50: TRLDraw;
    RLLabel53: TRLLabel;
    RLDraw51: TRLDraw;
    RLLabel54: TRLLabel;
    RLDraw52: TRLDraw;
    RLLabel55: TRLLabel;
    RLDraw53: TRLDraw;
    RLLabel56: TRLLabel;
    RLDraw54: TRLDraw;
    RLLabel57: TRLLabel;
    RLDraw55: TRLDraw;
    RLDraw56: TRLDraw;
    RLLabel59: TRLLabel;
    RLDraw58: TRLDraw;
    RLLabel61: TRLLabel;
    RLDraw59: TRLDraw;
    RLLabel62: TRLLabel;
    RLDraw60: TRLDraw;
    RLLabel63: TRLLabel;
    RLDraw61: TRLDraw;
    RLDraw62: TRLDraw;
    RLDraw63: TRLDraw;
    RLDraw64: TRLDraw;
    RLDraw65: TRLDraw;
    RLDraw66: TRLDraw;
    RLLabel64: TRLLabel;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLLabel65: TRLLabel;
    RLLabel66: TRLLabel;
    RLDBText34: TRLDBText;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLDraw67: TRLDraw;
    RLDraw68: TRLDraw;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLLabel72: TRLLabel;
    RLLabel73: TRLLabel;
    RLLabel74: TRLLabel;
    RLLabel75: TRLLabel;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLDBText40: TRLDBText;
    RLLabel76: TRLLabel;
    RLDBText41: TRLDBText;
    RLDBText42: TRLDBText;
    RLLabel3: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLImage2: TRLImage;
    RLImage1: TRLImage;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDraw3: TRLDraw;
    RLLabel1: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel4: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel5: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel8: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel9: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel10: TRLLabel;
    RLDraw9: TRLDraw;
    RLLabel11: TRLLabel;
    RLDraw10: TRLDraw;
    RLLabel12: TRLLabel;
    RLDraw11: TRLDraw;
    RLLabel13: TRLLabel;
    RLDraw12: TRLDraw;
    RLLabel14: TRLLabel;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLLabel15: TRLLabel;
    RLDraw15: TRLDraw;
    RLLabel16: TRLLabel;
    RLDraw16: TRLDraw;
    RLLabel17: TRLLabel;
    RLDraw17: TRLDraw;
    RLLabel18: TRLLabel;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw23: TRLDraw;
    RLLabel19: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    Inst1: TRLLabel;
    Inst2: TRLLabel;
    Inst3: TRLLabel;
    Inst4: TRLLabel;
    Inst5: TRLLabel;
    Inst1A: TRLLabel;
    Inst2A: TRLLabel;
    Inst3A: TRLLabel;
    Inst4A: TRLLabel;
    Inst5A: TRLLabel;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel60: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel77: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel34: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel37: TRLLabel;
    RLLabel39: TRLLabel;
    procedure RLSubDetail1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }
  public
    { Public declarations }
     property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fRelBoletoSicred: TfRelBoletoSicred;

implementation

uses UCobSicred;

{$R *.dfm}

procedure TfRelBoletoSicred.RLSubDetail1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fCobSicred.mBoletosImpBoleto.AsString <> 'B' then
    PrintIt := False;
  {else
    begin
      if not Fdm1.tCReceber.Locate('NumCReceber',fCobSicred.mBoletosNumCReceber.AsInteger,([LocaseInsensitive])) then
        begin
          Fdm1.tCReceber.Filtered := False;
          Fdm1.tCReceber.Filter   := 'ParcCReceber = '''+fCobSicred.mBoletosParcela.AsString+'''';
          Fdm1.tCReceber.Filtered := True;
        end;
    end;}
end;

procedure TfRelBoletoSicred.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i : Integer;
  vValor : Currency;
begin
  if not fCobSicred.passou_cpfcgc(fCobSicred.mBoletosCNPJCPF.AsString) then
    PrintIt := False;
    
  if fCobSicred.mBoletosImpBoleto.AsString <> 'B' then
    PrintIt := False;

  if fCobSicred.mBoletosPessoa.AsString = '1' then
    RLLabel32.Caption := 'CPF:'
  else
    RLLabel32.Caption := 'CNPJ:';
  RLLabel33.Caption := RLLabel32.Caption;

  RLLabel3.Caption   := '0109.08.' + Fdm1.tSicredCODCEDENTE.AsString;
  RLLabel28.Caption  := '0109.08.' + Fdm1.tSicredCODCEDENTE.AsString;
  RLLabel70.Caption  := Fdm1.MontaBoletoSicredi('L',fCobSicred.mBoletosNossoNumero.AsString,fCobSicred.mBoletosDtVencto.AsDateTime,fCobSicred.mBoletosVlrParcela.AsCurrency);
  RLBarcode2.Caption := Fdm1.MontaBoletoSicredi('B',fCobSicred.mBoletosNossoNumero.AsString,fCobSicred.mBoletosDtVencto.AsDateTime,fCobSicred.mBoletosVlrParcela.AsCurrency);
  //Instruções
  for i := 1 to 5 do
    begin
      TRLLabel(FindComponent('Inst'+IntToStr(i))).Caption     := '';
      TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Caption := '';
      TRLLabel(FindComponent('Inst'+IntToStr(i))).Visible     := False;
      TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Visible := False;
    end;

  i := 1;
  if  fCobSicred.mBoletosDiasProtesto.AsInteger > 0 then
    begin
      TRLLabel(FindComponent('Inst'+IntToStr(i))).Visible     := True;
      TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Visible := True;
      TRLLabel(FindComponent('Inst'+IntToStr(i))).Caption     := '- PROTESTAR APÓS ' + Fdm1.tSicredDiasProtesto.AsString + ' DIAS DO VENCIMENTO';
      TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Caption := '- PROTESTAR APÓS ' + Fdm1.tSicredDiasProtesto.AsString + ' DIAS DO VENCIMENTO';
      inc(i);
    end;

  if fCobSicred.mBoletosVlrJurosPorDia.AsFloat > 0 then
    begin
      TRLLabel(FindComponent('Inst'+IntToStr(i))).Visible     := True;
      TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Visible := True;

      vValor := fCobSicred.mBoletosVlrJurosPorDia.AsFloat;
      if fCobSicred.mBoletosTipoJuro.AsString = 'A' then
        begin
          TRLLabel(FindComponent('Inst'+IntToStr(i))).Caption     := '- APÓS VENCIMENTO COBRAR MORA DIÁRIA DE R$ ' + FormatFloat('###,###,##0.00',vValor);
          TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Caption := '- APÓS VENCIMENTO COBRAR MORA DIÁRIA DE R$ ' + FormatFloat('###,###,##0.00',vValor);
        end
      else
        begin
          TRLLabel(FindComponent('Inst'+IntToStr(i))).Caption     := '- APÓS VENCIMENTO COBRAR MORA DIÁRIA DE ' + FormatFloat('###,###,##0.00',vValor) + '%';
          TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Caption := '- APÓS VENCIMENTO COBRAR MORA DIÁRIA DE ' + FormatFloat('###,###,##0.00',vValor) + '%';
        end;
      inc(i);
    end;

  if (fCobSicred.mBoletosVlrDesconto.AsFloat > 0) and (fCobSicred.mBoletosDtLimiteDesc.AsString <> '') then
    begin
      TRLLabel(FindComponent('Inst'+IntToStr(i))).Visible     := True;
      TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Visible := True;
      if fCobSicred.mBoletosTipoDesconto.AsString = 'A' then
        vValor := fCobSicred.mBoletosVlrDesconto.AsFloat
      else
        vValor := ((fCobSicred.mBoletosVlrParcela.AsFloat * fCobSicred.mBoletosVlrDesconto.AsFloat) /100);
      TRLLabel(FindComponent('Inst'+IntToStr(i))).Caption     := '- PAGTO ATÉ O DIA ' + fCobSicred.mBoletosDtLimiteDesc.AsString + ' DESCONTO DE R$ ' + FormatFloat('###,###,##0.00',vValor);
      TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Caption := '- PAGTO ATÉ O DIA ' + fCobSicred.mBoletosDtLimiteDesc.AsString + ' DESCONTO DE R$ ' + FormatFloat('###,###,##0.00',vValor);
      inc(i);
    end;

  if fCobSicred.mBoletosVlrDescontoDiaAntecipacao.AsFloat > 0 then
    begin
      TRLLabel(FindComponent('Inst'+IntToStr(i))).Visible     := True;
      TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Visible := True;
      TRLLabel(FindComponent('Inst'+IntToStr(i))).Caption     := '- DESCONTO DE R$ ' + fCobSicred.mBoletosVlrDescontoDiaAntecipacao.AsString + ' POR DIA DE ANTECIPAÇÃO DO VECTO.';
      TRLLabel(FindComponent('Inst'+IntToStr(i)+'A')).Caption := '- DESCONTO DE R$ ' + fCobSicred.mBoletosVlrDescontoDiaAntecipacao.AsString + ' POR DIA DE ANTECIPAÇÃO DO VECTO.';
      inc(i);
    end;
  RLLabel37.Caption := Copy(fCobSicred.mBoletosNossoNumero.AsString,1,2) +'/'+ Copy(fCobSicred.mBoletosNossoNumero.AsString,3,6) +'-'+ Copy(fCobSicred.mBoletosNossoNumero.AsString,9,1);
  RLLabel39.Caption := Copy(fCobSicred.mBoletosNossoNumero.AsString,1,2) +'/'+ Copy(fCobSicred.mBoletosNossoNumero.AsString,3,6) +'-'+ Copy(fCobSicred.mBoletosNossoNumero.AsString,9,1);
end;

procedure TfRelBoletoSicred.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  Fdm1.tSicred.Open;
end;

end.
