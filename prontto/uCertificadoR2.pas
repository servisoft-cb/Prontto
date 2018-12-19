unit uCertificadoR2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, uDmRel;

type
  TfCertificadoR2 = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLLabel16: TRLLabel;
    RLDBText10: TRLDBText;
    RLProntto: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel17: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel18: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLSubDetail3: TRLSubDetail;
    RLBand1: TRLBand;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLBand3: TRLBand;
    RLLabel8: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLAtac: TRLBand;
    RLLabel15: TRLLabel;
    RLLabel19: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLAtacBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    vImprime: Boolean;
    vSomaHoras: Integer;
    vMedia: Real;
  public
    { Public declarations }
  end;

var
  fCertificadoR2: TfCertificadoR2;

implementation

uses uCertificadoC;

{$R *.dfm}

procedure TfCertificadoR2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfCertificadoR2.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := fCertificadoC.SMDBGrid1.SelectedRows.CurrentRowSelected;
  vImprime := PrintIt;

  vSomaHoras := 0;
  fCertificadoC.tPessoaNota.Close;
  if vImprime then
  begin
    fCertificadoC.PessoaNota.ParamByName('P1').AsInteger  := fCertificadoC.tPessoaCursoPESSOA_ID.AsInteger;
    fCertificadoC.PessoaNota.ParamByName('PC1').AsInteger := fCertificadoC.tPessoaCursoCURSO_ID.AsInteger;
    fCertificadoC.PessoaNota.ParamByName('T1').AsString   := fCertificadoC.tPessoaCursoTURMA.AsString;
    fCertificadoC.tPessoaNota.Open;
  end;
  vMedia := fCertificadoC.tPessoaCursoMEDIA.AsFloat;
end;

procedure TfCertificadoR2.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if (not fCertificadoC.tPessoaNotaCARGA_HORARIA.IsNull) and (fCertificadoC.tPessoaNotaCARGA_HORARIA.AsString <> '') then
    vSomaHoras := vSomaHoras + fCertificadoC.tPessoaNotaCARGA_HORARIA.AsInteger;
end;

procedure TfCertificadoR2.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImprime;
  RLLabel8.Caption  := IntToStr(vSomaHoras);
  RLLabel13.Caption := FormatFloat('0.00',vMedia);
end;

procedure TfCertificadoR2.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vImprime := False;

  fCertificadoC.qParametros.Open;
  RLProntto.Enabled := False;
  RLAtac.Enabled    := False;
  case fCertificadoC.qParametrosESCOLA.AsInteger of
    1: RLProntto.Enabled := True;
    2: RLAtac.Enabled    := True;
  end;
end;

procedure TfCertificadoR2.RLAtacBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//  PrintIt := DmRel
end;

end.
