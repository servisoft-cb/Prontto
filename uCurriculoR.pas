unit uCurriculoR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, UDm1, Dialogs, RLReport, rsDBUtils;

type
  TfCurriculoR = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLImage1: TRLImage;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    rlEndereco: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel10: TRLLabel;
    rlFiliacao: TRLLabel;
    rlConjuge: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel12: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText12: TRLDBText;
    rlSexo: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel16: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel20: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel17: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel21: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel22: TRLLabel;
    RLDBText15: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    rlEscolaridade: TRLLabel;
    RLLabel23: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fDm1: TDm1;
  end;

var
  fCurriculoR: TfCurriculoR;

implementation

uses DB;

{$R *.dfm}

procedure TfCurriculoR.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfCurriculoR.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rlEndereco.Caption := fDm1.tPessoaEndereco.AsString + ', ' + fDm1.tPessoaENDNUMERO.AsString + ' - ' +
                        fdm1.tPessoaENDCOMPLEMENTO.AsString;
  rlFiliacao.Caption := fDm1.tPessoaNOMEMAE.AsString;
  if not fdm1.tPessoaNOMEPAI.IsNull then
    rlFiliacao.Caption := rlFiliacao.Caption + ' E ' + fdm1.tPessoaNOMEPAI.AsString;

  if not fdm1.tPessoaSEXO.IsNull then
  case fdm1.tPessoaSEXO.AsInteger of
    1: rlSexo.Caption := 'M';
    2: rlSexo.Caption := 'F';
  end;

  RLImage1.Picture.LoadFromFile(fDm1.tPessoaFONE.AsString);

  if not fDm1.tPessoaEscolaridade.IsNull then
    case fDm1.tPessoaEscolaridade.AsInteger of
      1: rlEscolaridade.Caption := 'ENSINO FUNDAMENTAL (1° A 4° COMPLETO)';
      2: rlEscolaridade.Caption := 'ENSINO FUNDAMENTAL (1° A 4° INCOMPLETO)';
      3: rlEscolaridade.Caption := 'ENSINO FUNDAMENTAL (5° A 8° COMPLETO)';
      4: rlEscolaridade.Caption := 'ENSINO FUNDAMENTAL (5° A 8° INCOMPLETO)';
      5: rlEscolaridade.Caption := 'ENSINO MÉDIO COMPLETO';
      6: rlEscolaridade.Caption := 'ENSINO MÉDIO INCOMPLETO';
      7: rlEscolaridade.Caption := 'ENSINO SUPERIOR COMPLETO';
      8: rlEscolaridade.Caption := 'ENSINO SUPERIOR INCOMPLETO';
    end;

end;

end.
