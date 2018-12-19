
unit URelPessoaFicha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDm1, rsDBUtils, uDmRel,
  DBClient, DB, jpeg;

type
  TfRelPessoaFicha = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLSubDetail2: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText13: TRLDBText;
    RLBand2: TRLBand;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel16: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLBand3: TRLBand;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText17: TRLDBText;
    RLLabel22: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLSubDetail3: TRLSubDetail;
    RLBand4: TRLBand;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLBand5: TRLBand;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLBand6: TRLBand;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLDBText25: TRLDBText;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel36: TRLLabel;
    RLDBText27: TRLDBText;
    RLBand7: TRLBand;
    RLLabel37: TRLLabel;
    RLMemo1: TRLMemo;
    RLBand8: TRLBand;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel40: TRLLabel;
    RLDBText29: TRLDBText;
    RLLabel41: TRLLabel;
    RLDBText30: TRLDBText;
    RLLabel42: TRLLabel;
    RLDBText31: TRLDBText;
    RLLabel43: TRLLabel;
    RLDBText32: TRLDBText;
    RLLabel44: TRLLabel;
    RLDBText33: TRLDBText;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLDBText34: TRLDBText;
    RLLabel47: TRLLabel;
    RLDBText35: TRLDBText;
    RLLabel48: TRLLabel;
    RLDBText36: TRLDBText;
    RLLabel49: TRLLabel;
    RLDBText37: TRLDBText;
    RLLabel50: TRLLabel;
    RLDBText38: TRLDBText;
    RLLabel51: TRLLabel;
    RLDBText39: TRLDBText;
    RLImage1: TRLImage;
    RLLabel52: TRLLabel;
    RLDBText40: TRLDBText;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw1: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw9: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLSubDetail4: TRLSubDetail;
    RLBand9: TRLBand;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel56: TRLLabel;
    RLBand10: TRLBand;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLDBText41: TRLDBText;
    RLDBText42: TRLDBText;
    RLDBText43: TRLDBText;
    RLDBText44: TRLDBText;
    RLDraw22: TRLDraw;
    RLLabel57: TRLLabel;
    RLDraw23: TRLDraw;
    RLDBText45: TRLDBText;
    RLDraw24: TRLDraw;
    RLBand11: TRLBand;
    RLLabel58: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLBand12: TRLBand;
    RLDBMemo2: TRLDBMemo;
    RLLabel59: TRLLabel;
    RLBand13: TRLBand;
    RLDBMemo3: TRLDBMemo;
    RLLabel60: TRLLabel;
    RLImage2: TRLImage;
    RLLabel61: TRLLabel;
    RLDBText46: TRLDBText;
    RLDBText7: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    Fdm1: Tdm1;
    procedure SetDM1(const Value: Tdm1);
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write SetDM1;
  end;

var
  fRelPessoaFicha: TfRelPessoaFicha;

implementation

uses uPessoac, Math, UDmCons;

{$R *.dfm}

procedure TfRelPessoaFicha.SetDM1(const Value: Tdm1);
begin
  Fdm1 := Value;
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfRelPessoaFicha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPessoaFicha.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if Fdm1.tPessoaPESSOA.AsString = 'J' then
    RLLabel2.Caption := 'CNPJ:'
  else
    RLLabel2.Caption := 'CPF:';
  RLLabel3.Visible  := (Fdm1.tPessoaPESSOA.AsString = 'F');
  RLDBText3.Visible := (Fdm1.tPessoaPESSOA.AsString = 'F');
  RLImage1.Picture.LoadFromFile(Fdm1.tEmpresaLOGOEMPRESA.AsString);
  if not fdm1.tCidade.Active then
    fdm1.tCidade.Open;
  fdm1.tCidade.IndexFieldNames := 'ID';
  fdm1.tCidade.FindKey([fdm1.tPessoaCIDADE.AsInteger]);
end;

procedure TfRelPessoaFicha.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if Fdm1.tPessoaCLIENTE.AsString <> '1' then
    begin
      PrintIt := False;
      exit;
    end;
  RLLabel19.Caption := Fdm1.tTipoCobrancaNOME.AsString;
  //if DmCons.qTipoCobranca.Locate('ID',Fdm1.PessoaCODTIPOCOBRANCA.AsInteger,([locaseinsensitive])) then
  //  RLLabel19.Caption := DmCons.qTipoCobrancaNOME.AsString;
end;

procedure TfRelPessoaFicha.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if Fdm1.tPessoaPESSOA.AsString = 'J' then
    begin
      PrintIt := False;
      exit;
    end;

  RLLabel26.Caption := '';
  if Fdm1.tPlanoSaude.Locate('ID',Fdm1.tPessoaPLANOSAUDE_ID.AsInteger,([locaseinsensitive])) then
    RLLabel26.Caption := Fdm1.tPlanoSaudeNOME.AsString;

  RLImage2.Picture := nil;
  if fDM1.tPessoaFOTO_CAMINHO.AsString <> '' then
    RLImage2.Picture.LoadFromFile(fDm1.tPessoaFOTO_CAMINHO.AsString);
end;

procedure TfRelPessoaFicha.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if Fdm1.tPessoaFUNCIONARIO.AsString <> '1' then
    begin
      PrintIt := False;
      exit;
    end;

  RLLabel34.Caption := '';
  if DM1.tPessoaTIPOSALARIO.AsString = 'H' then
    RLLabel34.Caption := 'Horista'
  else
  if DM1.tPessoaTIPOSALARIO.AsString = 'M' then
    RLLabel34.Caption := 'Mensalista';
end;

procedure TfRelPessoaFicha.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo1.Lines.Clear;
  RLMemo1.Lines.Add(Fdm1.tPessoaOBSERVACAO.Value);
end;

end.
