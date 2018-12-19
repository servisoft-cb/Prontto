unit uRelQNC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, UDm1, Dialogs, RLReport, jpeg, uDmRel;

type
  TfRelQNC = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText4: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel7: TRLLabel;
    NUM: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText13: TRLDBText;
    RLImage1: TRLImage;
    Endereco1: TRLLabel;
    RLBand3: TRLBand;
    RLMemo1: TRLMemo;
    RLBand4: TRLBand;
    Data1: TRLLabel;
    RLReport2: TRLReport;
    RLSubDetail2: TRLSubDetail;
    RLBand5: TRLBand;
    RLMemo2: TRLMemo;
    RLLabel10: TRLLabel;
    RLBand6: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText15: TRLDBText;
    RLImage2: TRLImage;
    Endereco2: TRLLabel;
    RLBand8: TRLBand;
    Data2: TRLLabel;
    RLReport3: TRLReport;
    RLSubDetail3: TRLSubDetail;
    RLBand7: TRLBand;
    RLBand9: TRLBand;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText19: TRLDBText;
    RLImage3: TRLImage;
    Endereco3: TRLLabel;
    RLBand10: TRLBand;
    Data3: TRLLabel;
    RLBand11: TRLBand;
    RLMemo3: TRLMemo;
    RLLabel15: TRLLabel;
    RLDBText20: TRLDBText;
    Cont: TRLLabel;
    RLMemo4: TRLMemo;
    RLReport4: TRLReport;
    RLBand13: TRLBand;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLImage4: TRLImage;
    RLLabel16: TRLLabel;
    Endereco4: TRLLabel;
    RLBand14: TRLBand;
    Data4: TRLLabel;
    RLBand15: TRLBand;
    RLMemo5: TRLMemo;
    RLLabel28: TRLLabel;
    RLMemo6: TRLMemo;
    RLLabel8: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText21: TRLDBText;
    RLDBText26: TRLDBText;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLDBText27: TRLDBText;
    RLReport5: TRLReport;
    RLSubDetail4: TRLSubDetail;
    RLBand12: TRLBand;
    RLLabel19: TRLLabel;
    RLLabel22: TRLLabel;
    RLBand16: TRLBand;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLImage5: TRLImage;
    Endereco5: TRLLabel;
    RLLabel29: TRLLabel;
    RLDBText32: TRLDBText;
    RLLabel30: TRLLabel;
    RLBand17: TRLBand;
    RLDBText28: TRLDBText;
    RLDBText33: TRLDBText;
    Turma: TRLLabel;
    RLLabel25: TRLLabel;
    RLDraw1: TRLDraw;
    RLMemo7: TRLMemo;
    RLMemo8: TRLMemo;
    RLMemo9: TRLMemo;
    RLMemo10: TRLMemo;
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand11BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand13BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand15BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand14BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand12BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand17BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand16BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDmRel: TDmRel;
    vNum: Integer;
    texto: String;
  public
    { Public declarations }
    fDm1: TDm1;
  end;

var
  fRelQNC: TfRelQNC;

implementation

uses uPrevQNC;

{$R *.dfm}

procedure TfRelQNC.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := fPrevQNC.SMDBGrid1.SelectedRows.CurrentRowSelected;
  if PrintIt then
  begin
    inc(vNum);
    NUM.Caption := IntToStr(vNum);
  end;
end;

procedure TfRelQNC.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//  RLImage1.Picture.LoadFromFile(fdm1.tEmpresaLOGOEMPRESA.AsString);
//  RLImage1.Stretch := dm1.tEmpresaSTRETCH.AsBoolean;
  Endereco1.Caption := Fdm1.tEmpresaENDERECO.AsString + ' - ' +
                      Fdm1.tEmpresaCIDADE.AsString + ' - ' +
                      Fdm1.tEmpresaUF.AsString + ' CEP: ' +
                      Fdm1.tEmpresaCEP.AsString + ' Fone: ' +
                      Fdm1.tEmpresaFONE.AsString;
end;

procedure TfRelQNC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfRelQNC.FormCreate(Sender: TObject);
var
  i: Byte;
begin
  Fdm1 := Tdm1.Create(Self);
  fDmRel := TDmRel.Create(Self);
  vNum := 0;

  for i := 1 to 5 do
  if Fdm1.tEmpresaLOGOEMPRESA.AsString <> '' then
    if FileExists(Fdm1.tEmpresaLOGOEMPRESA.AsString) then
      TRLImage(FindComponent('RLImage'+IntToStr(i))).Picture.LoadFromFile(Fdm1.tEmpresaLOGOEMPRESA.AsString);
end;

procedure TfRelQNC.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  texto := 'RELAÇÃO NOMINAL DOS ALUNOS QUE ';
  case fPrevQNC.ComboBox1.ItemIndex of
    1: texto := texto +  'ESTÃO FREQUENTANDO O CURSO ' + fPrevQNC.JvDBLookupCombo1.Text;
    4: texto := texto +  'CONCLUÍRAM O CURSO ' + fPrevQNC.JvDBLookupCombo1.Text;
  end;
  texto := texto + ' REALIZADO NESTE CENTRO NO PERÍODO DE ' +
           FormatDateTime('DD' + '" DE "' + 'MMMM',fPrevQNC.tPessoaCursoDTINICIO.AsDateTime) + ' A ' +
           FormatDateTime('DD' + '" DE "' + 'MMMM' + '" DE "' + 'YYYY',fPrevQNC.tPessoaCursoDTFINAL.AsDateTime) +
           ' PELA TURMA ' + fPrevQNC.tPessoaCursoTURMA.AsString + '.';
  RLMemo1.Lines.Add(texto);
end;

procedure TfRelQNC.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Data2.Caption := 'NOVO HAMBURGO, ' + FormatDateTime('DD' + '" de "' + 'mmmm' + '" de "' + 'YYYY',Date);
  RLMemo7.Lines.Clear;
  RLMemo7.Lines.AddStrings(fPrevQNC.Memo2.Lines);
end;

procedure TfRelQNC.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  texto: String;
begin
  PrintIt := fPrevQNC.SMDBGrid1.SelectedRows.CurrentRowSelected;
  if printIt then
  begin
    texto := 'Declaro para os devidos fins que ' + fPrevQNC.tPessoaCursoALUNO.AsString +
             ', portador da cédula de identidade nº ' +
             fPrevQNC.tPessoaCursoRG.AsString + ', concluiu com aproveitamento o curso de ' +
             fPrevQNC.tPessoaCursoCURSO.AsString + ', realizado neste Centro de Formação de Vigilantes no período de: ' +
             FormatDateTime('DD' + '" de "' + 'mmmm',fPrevQNC.tPessoaCursoDTINICIO.AsDateTime) + ' a ' +
             FormatDateTime('DD' + '" de "' + 'mmmm' + '" de "' + 'YYYY',fPrevQNC.tPessoaCursoDTFINAL.AsDateTime) +
             ' com uma carga horária de ' + fPrevQNC.tPessoaCursoCargaHoraria.AsString + ' horas.';
    RLMemo2.Lines.Clear;
    RLMemo2.Lines.Add(texto);
  end;
end;

procedure TfRelQNC.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := fPrevQNC.SMDBGrid1.SelectedRows.CurrentRowSelected;
  if printIt then
  begin
    inc(vNum);
    Cont.Caption := IntToStr(vNum);
  end;
end;

procedure TfRelQNC.RLBand11BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  texto: String;
begin
  texto := 'Estamos enviando em anexo os certificados dos Srs. abaixo relacionados, visto que os mesmos ' +
           'concluíram com aproveitamento o curso de ' + fPrevQNC.tPessoaCursoCURSO.AsString +
           ', realizado na escola no período de ' +
           FormatDateTime('DD' + '" de "' + 'mmmm',fPrevQNC.tPessoaCursoDTINICIO.AsDateTime) + ' a ' +
           FormatDateTime('DD' + '" de "' + 'mmmm' + '" de "' + 'YYYY',fPrevQNC.tPessoaCursoDTFINAL.AsDateTime);
  RLMemo3.Lines.Clear;
  RLMemo3.Lines.Add(texto);
  RLMemo4.Lines.Clear;
  RLMemo4.Lines.Add(fPrevQNC.Memo1.Text);
end;

procedure TfRelQNC.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Endereco2.Caption := Fdm1.tEmpresaENDERECO.AsString + ' - ' +
                      Fdm1.tEmpresaCIDADE.AsString + ' - ' +
                      Fdm1.tEmpresaUF.AsString + ' CEP: ' +
                      Fdm1.tEmpresaCEP.AsString + ' Fone: ' +
                      Fdm1.tEmpresaFONE.AsString;
end;

procedure TfRelQNC.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Endereco3.Caption := Fdm1.tEmpresaENDERECO.AsString + ' - ' +
                      Fdm1.tEmpresaCIDADE.AsString + ' - ' +
                      Fdm1.tEmpresaUF.AsString + ' CEP: ' +
                      Fdm1.tEmpresaCEP.AsString + ' Fone: ' +
                      Fdm1.tEmpresaFONE.AsString;
end;

procedure TfRelQNC.RLBand13BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Endereco4.Caption := Fdm1.tEmpresaENDERECO.AsString + ' - ' +
                      Fdm1.tEmpresaCIDADE.AsString + ' - ' +
                      Fdm1.tEmpresaUF.AsString + ' CEP: ' +
                      Fdm1.tEmpresaCEP.AsString + ' Fone: ' +
                      Fdm1.tEmpresaFONE.AsString;
end;

procedure TfRelQNC.RLBand15BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  texto: String;
begin
  texto := 'A PRONTTO Centro de Formação de Vigilantes Ltda., inscrita no CNPJ sob o número 09.586.537/0001-50 ' +
           'e Inscrição Estadual número 15227, localizada na Rua Rio Negro, 343, bairro Liberdade, Novo Hamburgo - RS, representada ' +
           'neste ato pelo Sr. Valdecir Fontella Mello - Diretor, portador da cédula de identidade número 1020751622, ' +
           'vem por intermédio deste, enviar em anexo, a qualificação nominal do ';
  if fPrevQNC.ComboBox1.ItemIndex = 0 then
    texto := texto + 'início do curso '
  else
    texto := texto + 'término do curso ';
  texto := texto + fPrevQNC.tPessoaCursoCURSO.AsString + ', realizado na escola no período de ' +
           FormatDateTime('DD' + '" de "' + 'MMMM',fPrevQNC.tPessoaCursoDTINICIO.AsDateTime) + ' a ' +
           FormatDateTime('DD' + '" de "' + 'MMMM' + '" de "' + 'YYYY',fPrevQNC.tPessoaCursoDTFINAL.AsDateTime) + '.';

  if fPrevQNC.ComboBox1.ItemIndex = 7 then
  begin
    texto := texto + #13 + 'Segue também:' + #13;
    texto := texto + ' * ' + IntToStr(fPrevQNC.tPessoaCurso.recordCount) + ' documentos de alunos;' + #13;
    texto := texto + ' * ' + IntToStr(fPrevQNC.tPessoaCurso.recordCount) + ' certificados para serem homologados;' + #13;
    if fPrevQNC.JvSpinEdit1.Value > 0 then
      texto := texto + ' * ' + IntToStr(fPrevQNC.JvSpinEdit1.Value) + ' CTPS para registro;';
  end;

  RLMemo5.Lines.Clear;
  RLMemo5.Lines.Add(texto);
  RLMemo6.Lines.Clear;
  RLMemo6.Lines.Add(fPrevQNC.Memo1.Text);
  RLLabel28.Caption := 'QUALIFICAÇÃO NOMINAL DE TURMA - ' + fPrevQNC.tPessoaCursoTURMA.AsString;
end;

procedure TfRelQNC.RLBand14BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Data4.Caption := 'NOVO HAMBURGO, ' + FormatDateTime('DD' + '" de "' + 'mmmm' + '" de "' + 'YYYY',Date);
  RLMemo10.Lines.Clear;
  RLMemo10.Lines.AddStrings(fPrevQNC.Memo2.Lines);
end;

procedure TfRelQNC.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Data3.Caption := 'NOVO HAMBURGO, ' + FormatDateTime('DD' + '" de "' + 'mmmm' + '" de "' + 'YYYY',Date);
  RLMemo9.Lines.Clear;
  RLMemo9.Lines.AddStrings(fPrevQNC.Memo2.Lines);
end;

procedure TfRelQNC.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Data1.Caption := 'NOVO HAMBURGO, ' + FormatDateTime('DD' + '" de "' + 'mmmm' + '" de "' + 'YYYY',Date);
  RLMemo8.Lines.Clear;
  RLMemo8.Lines.AddStrings(fPrevQNC.Memo2.Lines);
end;

procedure TfRelQNC.RLBand12BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Turma.Caption := 'TURMA ' + fPrevQNC.tPessoaCursoTURMA.AsString;
  case fPrevQNC.ComboBox2.ItemIndex of
    0: Turma.Caption := Turma.Caption + ' / Manhã';
    1: Turma.Caption := Turma.Caption + ' / Tarde';
    2: Turma.Caption := Turma.Caption + ' / Noite';
  end;
end;

procedure TfRelQNC.RLBand17BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  PrintIt := fPrevQNC.SMDBGrid1.SelectedRows.CurrentRowSelected;
  if PrintIt then
  begin
    inc(vNum);
    RLLabel25.Caption := IntToStr(vNum);
  end;
end;

procedure TfRelQNC.RLBand16BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Endereco5.Caption := Fdm1.tEmpresaENDERECO.AsString + ' - ' +
                      Fdm1.tEmpresaCIDADE.AsString + ' - ' +
                      Fdm1.tEmpresaUF.AsString + ' CEP: ' +
                      Fdm1.tEmpresaCEP.AsString + ' Fone: ' +
                      Fdm1.tEmpresaFONE.AsString;
end;

procedure TfRelQNC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
