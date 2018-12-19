unit URelPessoasContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDm1, rsDBUtils, jpeg,
  RLRichText, db, uDmRel, ValorPor;

type
  TfRelPessoasContrato = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLBand6: TRLBand;
    RLLabel47: TRLLabel;
    RLImage1: TRLImage;
    RLLabel1: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel2: TRLLabel;
    RLNome: TRLLabel;
    RLMemo1: TRLMemo;
    RLBand2: TRLBand;
    RLMemo2: TRLMemo;
    RLBand3: TRLBand;
    RLMemo3: TRLMemo;
    RLBand4: TRLBand;
    RLLabel4: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel5: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel6: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel7: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel8: TRLLabel;
    RLDraw4: TRLDraw;
    ValorPorExtenso2: TValorPorExtenso;
    RLLabel10: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLLabel18: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel21: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel22: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText17: TRLDBText;
    RLLabel24: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel26: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel28: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText23: TRLDBText;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLDBText24: TRLDBText;
    RLBand5: TRLBand;
    RLLabel31: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel32: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    Fdm1: Tdm1;
    procedure SetDM1(const Value: Tdm1);
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write SetDM1;
  end;

var
  fRelPessoasContrato: TfRelPessoasContrato;

implementation

uses uDmCons, uUtil;

{$R *.dfm}

procedure TfRelPessoasContrato.SetDM1(const Value: Tdm1);
begin
  Fdm1 := Value;
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfRelPessoasContrato.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if Fdm1.tEmpresaLOGOEMPRESA.AsString <> '' then
    RLImage1.Picture.LoadFromFile(Fdm1.tEmpresaLOGOEMPRESA.AsString);
end;

procedure TfRelPessoasContrato.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLNome.Caption := fdm1.tPessoaNOME.AsString + ', doravante denominado aluno.';
  RLMemo1.Lines.Text := 'As partes acima qualificadas pelo presente instrumento ajustam e contratam a prestação de serviços conforme cláusulas e condições seguintes:';
end;

procedure TfRelPessoasContrato.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo2.Lines.Clear;
  //RLMemo2.Lines.Add(Fdm1.tPessoaDESCCLAUSULA.Value);
  RLMemo2.Lines.Add('CLÁUSULA 1º - OBJETO');
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' O CENTRO DE FORMAÇÃO ministrará aulas com o objetivo de formar, aperfeiçoar e capacitar profissionais para o desempenho das funções na área de segurança privada, conforme disposições contidas' +
                        '  na Portaria nº 3.233 de 10 de Dezembro de 2012 do Departamento de Polícia Federal.';
  RLMemo2.Lines.Add('');
  RLMemo2.Lines.Add('CLÁUSULA 2º - DESCRIÇÃO DO CURSO.');
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' O curso ministrado será o de ' + fDM1.tPessoa_CursoNOME.AsString + ' para vigilantes e deverá conter as disciplinas e a respectivas carga horária previstas no currículo conforme determinada a legislação.';
  RLMemo2.Lines.Add('');
  RLMemo2.Lines.Add('CLÁUSULA 3º - ENCARGOS E RESPONSABILIDADES DO CENTRO DE FORMAÇÃO.');
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Parágrafo 1º: Realizar todos os trâmites legais de documentação para fins de registro e homologação do certificado do aluno aprovado junto ao Departamento de Polícia Federal.';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Parágrafo 2º: Durante o curso, fornecer equipamentos, materiail didático, armamento, munições e todas as demais condições que se fizerem necessárias para a aprendizagem do aluno.';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Parágrafo 3º: Ministrar integralmente as disciplinas previstas no currículo legal do curso.';
  RLMemo2.Lines.Add('');
  RLMemo2.Lines.Add('CLÁUSULA 4º - ENCARGOS E RESPONSABILIDADES DO COTNRATANTE.');
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Parágrafo 1º: Cumprir as normas contidas no Regulamento Interno do CENTRO DE FORMAÇÃO, principalmente no que ' +
                        'tange à disciplina dentro e fora da sala de aula, pontualidade, assiduidade, zelo das instalações, materiais e equipamentos utilizados na aprendizagem.';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Parágrafo 2º: Zelar pelos materiais e equipamentos utilizados no curso, comprometendo-se a devolvê-los nas condições que receberam.';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Parágrafo 3º: Ressarcir nos casos de avaria, inutilização ou perda dos materiais e equipamentos recebidos para fins de aprendizagem.';
  RLMemo2.Lines.Add('');
  RLMemo2.Lines.Add('CLÁUSULA 5º - DO CANCELAMENTO.');
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Parágrafo 1º: O CENTRO DE FORMAÇÃO poderá rescindir o contrato, a qualquer tempo, independentemente de aviso ' +
                        'prévio, no caso do aluno infringir as normas previstas no Regulamento Interno, não lhe cabendo, neste caso, qualquer indenização ou devolução do valor pago pelo curso.';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Parágrafo 2º: Caso o aluno venha a desistir do curso, antes mesmo do seu início, ou rescindir o presente contrato, por qualquer motivo, não será';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' efetuado qualquer ressarcimento de valores pagos, tendo em vista as despesas da Contratada com reserva de vagas, material e outros.';
  RLMemo2.Lines.Add('');
  RLMemo2.Lines.Add('CLÁUSULA 6º - DO PAGAMENTO.');
  ValorPorExtenso2.Valor := DM1.tPessoa_CursoVLRCURSO.AsFloat;
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + '  Pela execução dos serviços ora contratados o aluno pagará ao CENTRO DE FORMAÇÃO  a importância de R$ ' +
                        FormatFloat('###,###,##0.00',DM1.tPessoa_CursoVLRCURSO.AsFloat) + ' (' + ValorPorExtenso2.Texto + ').';

  if fdm1.tPessoa_CursoENTRADA.AsCurrency > 0 then
  begin
    ValorPorExtenso2.Valor := DM1.tPessoa_CursoENTRADA.AsFloat;
    RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' O pagamento será realizado por meio de ' + fdm1.tPessoa_CursoFORMAPGTO.AsString + ' e no prazo de ' +
                          Fdm1.tPessoa_CursoCONDPGTO.AsString + ', sendo uma entrada de R$ ' + FormatFloat('0.00',fdm1.tPessoa_CursoENTRADA.AsCurrency) +
                          ' (' + ValorPorExtenso2.Texto + ').';
  end
  else
  begin
    RLMemo2.Lines.Add('');
    RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' O pagamento será realizado por meio de ' + fdm1.tPessoa_CursoFORMAPGTO.AsString + ' e no prazo de ' +
                          Fdm1.tPessoa_CursoCONDPGTO.AsString + '.';
  end;

  DmCons.qParcelaCurso.Close;
  DmCons.ParcelaCurso.ParamByName('NN').AsInteger := Fdm1.tPessoa_CursoID.AsInteger;
  DmCons.qParcelaCurso.Open;
  if DmCons.qParcelaCurso.RecordCount > 0 then
  begin
    RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' O pagamento do saldo será conforme o que segue: ';
    while not DmCons.qParcelaCurso.Eof do
    begin
      RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' PARCELA: ' + DmCons.qParcelaCursoPARCELA.AsString +
                            ' VCTO: ' + FormatDateTime('DD/MM/YYYY',DmCons.qParcelaCursoDTVENCIMENTO.AsDateTime) +
                            ' VALOR: R$' + FormatFloat('0.00',DmCons.qParcelaCursoVLRVENCIMENTO.AsCurrency);
      DmCons.qParcelaCurso.Next;
    end;
  end;

  RLMemo2.Lines.Add('');
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Parágrafo 1º: Na hipótese de qualquer pagamento em atraso será sempre aplicada correção monetária, multa de 2% (dois por cento) e juros de mora de 1% (um por cento) ao mês.';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Parágrafo 2º: Caso o título (boleto bancário) não seja pago até o terceiro dia após o vencimento, o Banco efetuará automaticamente a cobrança em cartório. Não havendo a quitação, ficará passível de protesto.';
  RLMemo2.Lines.Add('');
  RLMemo2.Lines.Add('CLÁUSULA 7º - CONDIÇÕES GERAIS.');
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Parágrafo 1º: O CENTRO DE FORMAÇÃO não se responsabilizará por qualquer dano físico que o aluno venha sofrer em caso de acidente durante o curso.';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Parágrafo 2º: O fato de concluir com média e aproveitamento satisfatório não obriga, nem vincula o CENTRO DE FORMAÇÃO a admitir, fornecer ou indicar empresas interessadas em seus alunos recém-formados.';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Parágrafo 3º: O aluno comprova estar gozando de perfeita saúde física e mental, conforme apresentação do atestado médico e psicológico.';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + ' Parágrafo 4º: O aluno declara ter lido e compreendido todos os termos do Regimento Interno, o qual faz parte do presente contrato.;';
  RLMemo2.Lines.Add('');
  RLMemo2.Lines.Add('CLÁUSULA 8º - PRAZO.');
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + '  O presente contrato terá início dia ' + DM1.tPessoa_CursoDTINICIO.AsString + ' e seu término será dia ' + DM1.tPessoa_CursoDTFINAL.AsString;
  RLMemo2.Lines.Add('');
  RLMemo2.Lines.Add('CLÁUSULA 9º - COMPETÊNCIA.');
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + '  As partes elegem o Foro da cidade de Novo Hamburgo/RS para dirimir quaisquer controvérsias oriundas do presente instrumento.';
end;

procedure TfRelPessoasContrato.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo3.Lines.Text := 'E Por assim estarem justos e contratados o presente instrumento em duas vias de igual teor e forma na';
  RLMemo3.Lines.Text := RLMemo3.Lines.Text + 'presença de duas testemunhas para a produção de seus efeitos jurídicos e legais.';
  
end;

procedure TfRelPessoasContrato.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel40.Caption := vUsuario2;
end;

end.
