unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, uDM1, ImgList, rsDBUtils, Menus, StdCtrls,
  ExtDlgs, ExtCtrls, JPeg, FMTBcd, DBClient, Provider, DB, RLConsts, UCBase, ActnList, UCDBXConn, ComCtrls, ToolWin; //XPStyleActnCtrls

type
  TfMenu = class(TForm)
    MainMenu1: TMainMenu;
    Sair1: TMenuItem;
    Pas1: TMenuItem;
    SituaoTributria1: TMenuItem;
    ClassificaoFiscal1: TMenuItem;
    NaturezadeOperao1: TMenuItem;
    Produto1: TMenuItem;
    Auxiliar1: TMenuItem;
    CondiodePagamento1: TMenuItem;
    Cadastro2: TMenuItem;
    Estoque1: TMenuItem;
    Pessoa1: TMenuItem;
    Cidade1: TMenuItem;
    Grupo1: TMenuItem;
    Cadastros1: TMenuItem;
    ipodeCobrana1: TMenuItem;
    Aliqotas1: TMenuItem;
    ModeObra1: TMenuItem;
    Empresa1: TMenuItem;
    AtualizaPreo1: TMenuItem;
    Financeiro1: TMenuItem;
    ContasaReceber1: TMenuItem;
    ContasaPagar1: TMenuItem;
    Cadastro1: TMenuItem;
    Cadastro4: TMenuItem;
    Banco1: TMenuItem;
    N2: TMenuItem;
    Empresa2: TMenuItem;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    MovFinanceiro1: TMenuItem;
    Sobre1: TMenuItem;
    Juros1: TMenuItem;
    StatusBar1: TStatusBar;
    ConsultaComisso1: TMenuItem;
    PlanosdeSade1: TMenuItem;
    Servios1: TMenuItem;
    Anamnese1: TMenuItem;
    FromasdePagamento1: TMenuItem;
    ImprimirBoletos1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Oramentos1: TMenuItem;
    Bina1: TMenuItem;
    Escalas1: TMenuItem;
    Dados1: TMenuItem;
    ImportardoAccess1: TMenuItem;
    ClusulasdeContrato1: TMenuItem;
    UserControl1: TUserControl;
    UCDBXConn1: TUCDBXConn;
    ActionList1: TActionList;
    alEmpresa: TAction;
    alBina: TAction;
    alPessoa: TAction;
    Bina2: TMenuItem;
    Usurio1: TMenuItem;
    Perfil1: TMenuItem;
    Logs1: TMenuItem;
    alUsuario: TAction;
    alParametros: TAction;
    alAuxiliares: TAction;
    alProduto: TAction;
    alServicos: TAction;
    alOrcamento: TAction;
    alDocEst: TAction;
    alNE: TAction;
    alOrdemCompra: TAction;
    alCReceber: TAction;
    alCPagar: TAction;
    alMovFinanc: TAction;
    alComissao: TAction;
    alImpBoletos: TAction;
    MovFinanceiro2: TMenuItem;
    clMovAvulso: TAction;
    clDados: TAction;
    CobranaIta1: TMenuItem;
    clCobItau: TAction;
    ImprimirContasaPagarDetalhado1: TMenuItem;
    ImprimirContasaReceberDetalhado1: TMenuItem;
    ImprimirBoletoIta1: TMenuItem;
    CentrodeCusto1: TMenuItem;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ConsCentroCusto1: TMenuItem;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    EmissodoRecibo1: TMenuItem;
    ToolButton10: TToolButton;
    clEmissaoRecibo: TAction;
    ToolButton11: TToolButton;
    N1: TMenuItem;
    Eventos1: TMenuItem;
    Valores1: TMenuItem;
    MovFuncionario1: TMenuItem;
    Curso1: TMenuItem;
    Relatrios1: TMenuItem;
    RelaoNominaldeAlunos1: TMenuItem;
    Disciplinas1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Notas1: TMenuItem;
    ListadeAlunos1: TMenuItem;
    alBoca: TAction;
    Image2: TImage;
    CobranaSicredi1: TMenuItem;
    ImpDuplicatas1: TMenuItem;
    clImpDuplicata: TAction;
    Label1: TLabel;
    UCSettings1: TUCSettings;
    Diario: TMenuItem;
    Operacional1: TMenuItem;
    Viaturas1: TMenuItem;
    Bairros1: TMenuItem;
    Agentes1: TMenuItem;
    Logoff1: TMenuItem;
    ToolButton12: TToolButton;
    Celulares1: TMenuItem;
    Reclamaes1: TMenuItem;
    EscalaDiria1: TMenuItem;
    rocarSenha1: TMenuItem;
    N7: TMenuItem;
    ExtratodeSEG1: TMenuItem;
    Certificados1: TMenuItem;
    lbDatabase: TLabel;
    Cobrana1: TMenuItem;
    RemessaMultiBanco: TMenuItem;
    Retorno1: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Vendas1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Pessoas1Click(Sender: TObject);
    procedure Pas1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure SituaoTributria1Click(Sender: TObject);
    procedure ClassificaoFiscal1Click(Sender: TObject);
    procedure NaturezadeOperao1Click(Sender: TObject);
    procedure Cadastro2Click(Sender: TObject);
    procedure CondiodePagamento1Click(Sender: TObject);
    procedure ipodeCobrana1Click(Sender: TObject);
    procedure Aliqotas1Click(Sender: TObject);
    procedure ModeObra1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure AtualizaPreo1Click(Sender: TObject);
    procedure OrdemdeCompra1Click(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure ConsultaRelatrio1Click(Sender: TObject);
    procedure Cadastro4Click(Sender: TObject);
    procedure Estoque1Click(Sender: TObject);
    procedure Histrico1Click(Sender: TObject);
    procedure Banco1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Empresa2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MovFinanceiro1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure OrdemdeServio1Click(Sender: TObject);
    procedure Juros1Click(Sender: TObject);
    procedure Cadastro3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ConsultaComisso1Click(Sender: TObject);
    procedure Oramento2Click(Sender: TObject);
    procedure PlanosdeSade1Click(Sender: TObject);
    procedure Servios1Click(Sender: TObject);
    procedure Anamnese1Click(Sender: TObject);
    procedure FromasdePagamento1Click(Sender: TObject);
    procedure ImprimirBoletos1Click(Sender: TObject);
    procedure Oramentos1Click(Sender: TObject);
    procedure Bina1Click(Sender: TObject);
    procedure Escalas1Click(Sender: TObject);
    procedure ImportardoAccess1Click(Sender: TObject);
    procedure ClusulasdeContrato1Click(Sender: TObject);
    procedure ActionList1Execute(Action: TBasicAction;
      var Handled: Boolean);
    procedure alEmpresaExecute(Sender: TObject);
    procedure alPessoaExecute(Sender: TObject);
    procedure alBinaExecute(Sender: TObject);
    procedure alUsuarioExecute(Sender: TObject);
    procedure MovFinanceiro2Click(Sender: TObject);
    procedure CobranaIta1Click(Sender: TObject);
    procedure ImprimirContasaPagarDetalhado1Click(Sender: TObject);
    procedure ImprimirContasaReceberDetalhado1Click(Sender: TObject);
    procedure ImprimirBoletoIta1Click(Sender: TObject);
    procedure JvSpeedItem3Click(Sender: TObject);
    procedure CentrodeCusto1Click(Sender: TObject);
    procedure ConsCentroCusto1Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure EmissodoRecibo1Click(Sender: TObject);
    procedure clEmissaoReciboExecute(Sender: TObject);
    procedure Eventos1Click(Sender: TObject);
    procedure Valores1Click(Sender: TObject);
    procedure MovFuncionario1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Curso1Click(Sender: TObject);
    procedure RelaoNominaldeAlunos1Click(Sender: TObject);
    procedure Disciplinas1Click(Sender: TObject);
    procedure Notas1Click(Sender: TObject);
    procedure ListadeAlunos1Click(Sender: TObject);
    procedure BocaTeste1Click(Sender: TObject);
    procedure CobranaSicredi1Click(Sender: TObject);
    procedure ImpDuplicatas1Click(Sender: TObject);
    procedure clImpDuplicataExecute(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure DiarioClick(Sender: TObject);
    procedure Viaturas1Click(Sender: TObject);
    procedure Bairros1Click(Sender: TObject);
    procedure Agentes1Click(Sender: TObject);
    procedure Logoff1Click(Sender: TObject);
    procedure UserControl1AfterLogin(Sender: TObject);
    procedure Celulares1Click(Sender: TObject);
    procedure EscalaDiria1Click(Sender: TObject);
    procedure ExtratodeSEG1Click(Sender: TObject);
    procedure Certificados1Click(Sender: TObject);
    procedure RemessaMultiBancoClick(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
  public
    { Public declarations }
    posic: Integer;
    procedure OpenForm(FClass: TFormClass; vEstado: TWindowState);
  end;

var
  fMenu: TfMenu;

implementation

uses UPessoaC, UPais, UCidade, UGrupo, USitTributaria, UClasFiscal, UNatOperacao, UProduto, UCondPgto, uPrevQNC, UTipoCobranca, UCurso,
  UUF, UMaoObra, UEmpresa, UBanco, UEstoque, UProdutoHist, UParametros, UContasPagar, UMovFinanceiro, UContasReceber, uSobre, uDmEscala,
  uEmissaoBoleto, UJuros, UUsuario, uLogin, UAutorizacao, UConsComissaoVend, UOrcamentoPrev, uPlanoSaudeC, uServicoC, uAnamneseC, uUtil, 
  uFormaPgtoC, uCidadeC, UBoletos, uOrcamentoInstC, uEscalaC, uImport, uClausulaC, UMovAvulso, UGeraMovMensal, UBcoItau, UContasPagarDet,
  UContasReceberDet, UPrevBoleto2, uCentroCustoC, UValoresC, UConsCentroCusto, UAtendimento, URecibo, uBairroC, uBinaHistorico, uEventos,
  UValores, uEventosC, UMovFuncionario, uCursoC, uDisciplinaC, uNotasC, UBcoSicredi, uDiarioC, uVincendo, UPrevDuplicatas, uViaturaC,
  uAgenteC, uCelularC, uEscalaDiariaC, uEscalaAlerta, uExtratoSEG, uCertificadoC, uCobRemessa,
  uPrevVendaCurso, UDmCons;

{$R *.dfm}

procedure TfMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfMenu.Pessoas1Click(Sender: TObject);
begin
  fPessoaC := TfPessoaC.Create(Self);
  fPessoaC.ShowModal;
  fPessoaC.Free;
end;

procedure TfMenu.Pas1Click(Sender: TObject);
begin
  fPais := TfPais.Create(Self);
  fPais.ShowModal;
end;

procedure TfMenu.Cidades1Click(Sender: TObject);
begin
  fCidadeC := TfCidadeC.Create(Self);
  fCidadeC.ShowModal;
end;

procedure TfMenu.Grupos1Click(Sender: TObject);
begin
  fGrupo := TfGrupo.Create(Self);
  fGrupo.ShowModal;
end;

procedure TfMenu.SituaoTributria1Click(Sender: TObject);
begin
  fSitTributaria := TfSitTributaria.Create(Self);
  fSitTributaria.ShowModal;
end;

procedure TfMenu.ClassificaoFiscal1Click(Sender: TObject);
begin
  fClasFiscal := TfClasFiscal.Create(Self);
  fClasFiscal.ShowModal;
end;

procedure TfMenu.NaturezadeOperao1Click(Sender: TObject);
begin
  fNatOperacao := TfNatOperacao.Create(Self);
  fNatOperacao.ShowModal;
end;

procedure TfMenu.Cadastro2Click(Sender: TObject);
begin
  fProduto := TfProduto.Create(Self);
  fProduto.ShowModal;
end;

procedure TfMenu.CondiodePagamento1Click(Sender: TObject);
begin
  fCondPgto := TfCondPgto.Create(Self);
  fCondPgto.ShowModal;
end;

procedure TfMenu.ipodeCobrana1Click(Sender: TObject);
begin
  fTipoCobranca := TfTipoCobranca.Create(Self);
  fTipoCobranca.ShowModal;
end;

procedure TfMenu.Aliqotas1Click(Sender: TObject);
begin
  fUF := TfUF.Create(Self);
  fUF.ShowModal;
end;

procedure TfMenu.ModeObra1Click(Sender: TObject);
begin
  fMaoObra := TfMaoObra.Create(Self);
  fMaoObra.ShowModal;
end;

procedure TfMenu.Empresa1Click(Sender: TObject);
begin
  fParametros := TfParametros.Create(Self);
  fParametros.ShowModal;
end;

procedure TfMenu.AtualizaPreo1Click(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!');
end;

procedure TfMenu.OrdemdeCompra1Click(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!');
end;

procedure TfMenu.Cadastro1Click(Sender: TObject);
begin
  fContasReceber := TfContasReceber.Create(Self);
  fContasReceber.ShowModal;
end;

procedure TfMenu.ConsultaRelatrio1Click(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!');
end;

procedure TfMenu.Cadastro4Click(Sender: TObject);
begin
  fContasPagar := TfContasPagar.Create(Self);
  fContasPagar.ShowModal;
end;

procedure TfMenu.Estoque1Click(Sender: TObject);
begin
  fEstoque := TfEstoque.Create(Self);
  fEstoque.ShowModal;
end;

procedure TfMenu.Histrico1Click(Sender: TObject);
begin
  fProdutoHist := TfProdutoHist.Create(Self);
  fProdutoHist.ShowModal;
end;

procedure TfMenu.Banco1Click(Sender: TObject);
begin
  fBanco := TfBanco.Create(Self);
  fBanco.ShowModal;
end;

procedure TfMenu.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Application.Terminate;
end;

procedure TfMenu.Empresa2Click(Sender: TObject);
begin
  fEmpresa := TfEmpresa.Create(Self);
  fEmpresa.ShowModal;
end;

procedure TfMenu.FormCreate(Sender: TObject);
begin
  Fdm1 := TDm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fdm1);
//  Banco.Caption := fdm1.Conexao.Params.Values[DATABASENAME_KEY];

  if not Assigned(DmCons) then
    DmCons := TDmCons.Create(Self);

    //  Scripts;
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;
  Fdm1.tEmpresa.Open;
  if (Fdm1.tEmpresaLOGOEMPRESA.AsString <> '') and (FileExists(Fdm1.tEmpresaLOGOEMPRESA.AsString)) then
  begin
    Image1.Picture.LoadFromFile(Fdm1.tEmpresaLOGOEMPRESA.AsString);
    if Fdm1.tEmpresaSTRETCH.AsString = '1' then
      Image1.Stretch := True
    else
      Image1.Stretch := False;
  end;
end;

procedure TfMenu.MovFinanceiro1Click(Sender: TObject);
begin
  fMovFinanceiro := TfMovFinanceiro.Create(Self);
  fMovFinanceiro.ShowModal;
end;

procedure TfMenu.Sobre1Click(Sender: TObject);
begin
  fSobre := TfSobre.Create(Self);
  fSobre.ShowModal;
end;

procedure TfMenu.OrdemdeServio1Click(Sender: TObject);
begin
  fOrcamentoInstC := TfOrcamentoInstC.Create(Self);
  fOrcamentoInstC.ShowModal;
  fOrcamentoInstC.Free;
end;

procedure TfMenu.Juros1Click(Sender: TObject);
begin
  fJuros := TfJuros.Create(Self);
  fJuros.ShowModal;
end;

procedure TfMenu.Cadastro3Click(Sender: TObject);
begin
  fUsuario := TfUsuario.Create(Self);
  fUsuario.ShowModal;
end;

procedure TfMenu.FormShow(Sender: TObject);
begin
//  fLogin := TfLogin.Create(self);
{  if Fdm1.tEmpresaData.AsDateTime <= (Date - 10) then
    begin
      Fdm1.tEmpresa.Edit;
      Fdm1.tEmpresaData.AsDateTime := (Date - 10);
      Fdm1.tEmpresa.Post;
      Fdm1.tEmpresa.ApplyUpdates(0);
    end
  else
    begin
      ShowMessage('A data do sistema foi alterada!'+#13+#13+
                  'Entre com a senha de liberação '+#13+
                  ' e a data correta do sistema!');
      fAutorizacao := TfAutorizacao.Create(Self);
      fAutorizacao.ShowModal;
    end;
//  fLogin.ShowModal;
  // Fazer aqui os usuarios // boca
{  if Fdm1.tUsuarioNIVEL.AsInteger > 0 then
    begin
      Usu   := Fdm1.tUsuarioID.AsInteger;
      StatusBar1.Panels[0].Text := 'Bem vindo, ' + Fdm1.tUsuarioNOME.AsString;
      Cadastro3.Visible := False;
      if Fdm1.tUsuarioNIVEL.AsInteger < 3 then
        fMenu.Cadastro3.Visible := True;
      Fdm1.tUsuario.Filtered := False;
 }
//  MessageBeep();
//  PlaySound('D:\Fontes\$Servisoft\prontto\Hilo.waw',1,SND_ASYNC);
//  SndPlaySound('D:\Fontes\$Servisoft\prontto\Hilo.waw',SND_ASYNC or SND_LOOP);
  fDm1.tVincendo.Close;
  fDm1.Vincendo.ParamByName('D1').AsDate := Date;
  fDm1.Vincendo.ParamByName('D2').AsDate := Date - 360;
  fDm1.tVincendo.Open;
  Label1.Visible := fDm1.tVincendo.RecordCount > 0;
//  if fDm1.tVincendo.RecordCount > 0 then
//    ShowMessage('Existem contratos vincendo nos próximos 5 dias!');
  fDm1.tVincendo.Close;

  lbDatabase.Caption := fdm1.Conexao.Params.Values['DATABASE'];
end;

procedure TfMenu.ConsultaComisso1Click(Sender: TObject);
begin
  fConsComissaoVend := TfConsComissaoVend.Create(Self);
  fConsComissaoVend.ShowModal;
end;

procedure TfMenu.Oramento2Click(Sender: TObject);
begin
  fOrcamentoPrev := TfOrcamentoPrev.Create(Self);
  fOrcamentoPrev.ShowModal;
end;

procedure TfMenu.PlanosdeSade1Click(Sender: TObject);
begin
  fPlanoSaudeC := TfPlanoSaudeC.Create(Self);
  fPlanoSaudeC.ShowModal;
  fPlanoSaudeC.Free;
end;

procedure TfMenu.Servios1Click(Sender: TObject);
begin
  fServicoC := TfServicoC.Create(Self);
  fServicoC.ShowModal;
  fServicoC.Free;
end;

procedure TfMenu.Anamnese1Click(Sender: TObject);
begin
  fAnamneseC := TfAnamneseC.Create(Self);
  fAnamneseC.ShowModal;
  fAnamneseC.Free;
end;

procedure TfMenu.FromasdePagamento1Click(Sender: TObject);
begin
  fFormaPgtoC := TfFormaPgtoC.Create(Self);
  fFormaPgtoC.ShowModal;
  fFormaPgtoC.Free;
end;

procedure TfMenu.ImprimirBoletos1Click(Sender: TObject);
begin
  fGeraMovMensal := TfGeraMovMensal.Create(Self);
  fGeraMovMensal.ShowModal;
end;

procedure TfMenu.Oramentos1Click(Sender: TObject);
begin
  fOrcamentoInstC := TfOrcamentoInstC.Create(Self);
  fOrcamentoInstC.ShowModal;
  fOrcamentoInstC.Free;
end;

procedure TfMenu.Bina1Click(Sender: TObject);
//var
//  Arquivo: String;
begin
{  Arquivo := 'Bina\Bina.exe';
  if FileExists(Arquivo) then
    WinExec(PCHAR(Arquivo),Sw_Show)
  else
  begin
    Arquivo := '.\Bina.exe';
    if FileExists(Arquivo) then
      WinExec(PCHAR(Arquivo),Sw_Show)
    else
      ShowMessage('Arquivo Bina.exe não encontrado!');
  end}
  fBinaHistorico := TfBinaHistorico.Create(Self);
  fBinaHistorico.ShowModal;
end;

procedure TfMenu.Escalas1Click(Sender: TObject);
begin
  fEscalaC := TfEscalaC.Create(Self);
  fEscalaC.ShowModal;
  fEscalaC.Free;
end;

procedure TfMenu.ImportardoAccess1Click(Sender: TObject);
begin
  fImport := TfImport.Create(Self);
  fImport.ShowModal;
  fImport.Free;
end;

procedure TfMenu.ClusulasdeContrato1Click(Sender: TObject);
begin
  fClausulaC := TfClausulaC.Create(Self);
  fClausulaC.ShowModal;
end;

procedure TfMenu.ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
  //
end;

procedure TfMenu.alEmpresaExecute(Sender: TObject);
begin
  //
end;

procedure TfMenu.alPessoaExecute(Sender: TObject);
begin
  fPessoaC := TfPessoaC.Create(Self);
  fPessoaC.ShowModal;
  fPessoaC.Free;
//  OpenForm(TfPessoaC);
end;

procedure TfMenu.alBinaExecute(Sender: TObject);
begin
//
end;

procedure TfMenu.alUsuarioExecute(Sender: TObject);
begin
  UserControl1.ShowUserManager;
end;

procedure TfMenu.MovFinanceiro2Click(Sender: TObject);
begin
  fMovAvulso := TfMovAvulso.Create(Self);
  fMovAvulso.ShowModal;
end;

procedure TfMenu.CobranaIta1Click(Sender: TObject);
begin
  fBcoItau := TfBcoItau.Create(Self);
  fBcoItau.ShowModal;
end;

procedure TfMenu.ImprimirContasaPagarDetalhado1Click(Sender: TObject);
begin
  fContasPagarDet := TfContasPagarDet.Create(Self);
  fContasPagarDet.ShowModal;
end;

procedure TfMenu.ImprimirContasaReceberDetalhado1Click(Sender: TObject);
begin
  fContasReceberDet := TfContasReceberDet.Create(Self);
  fContasReceberDet.ShowModal;
end;

procedure TfMenu.ImprimirBoletoIta1Click(Sender: TObject);
begin
  fPrevBoleto2 := TfPrevBoleto2.Create(Self);
  fPrevBoleto2.ShowModal;
end;

procedure TfMenu.JvSpeedItem3Click(Sender: TObject);
begin
  fContasReceberDet := TfContasReceberDet.Create(Self);
  fContasReceberDet.ShowModal;
end;

procedure TfMenu.CentrodeCusto1Click(Sender: TObject);
begin
  fCentroCustoC := TfCentroCustoC.Create(Self);
  fCentroCustoC.ShowModal;
end;

procedure TfMenu.ConsCentroCusto1Click(Sender: TObject);
begin
  fConsCentroCusto := TfConsCentroCusto.Create(Self);
  fConsCentroCusto.ShowModal;
end;

procedure TfMenu.ToolButton9Click(Sender: TObject);
begin
  fAtendimento := TfAtendimento.Create(Self);
  fAtendimento.ShowModal;
end;

procedure TfMenu.EmissodoRecibo1Click(Sender: TObject);
begin
  fRecibo := TfRecibo.Create(Self);
  fRecibo.ShowModal;
end;

procedure TfMenu.clEmissaoReciboExecute(Sender: TObject);
begin
  fRecibo := TfRecibo.Create(Self);
  fRecibo.ShowModal;
end;

procedure TfMenu.Eventos1Click(Sender: TObject);
begin
  fEventosC := TfEventosC.Create(Self);
  fEventosC.ShowModal;
end;

procedure TfMenu.Valores1Click(Sender: TObject);
begin
  fValoresC := TfValoresC.Create(self);
  fValoresC.ShowModal;
end;

procedure TfMenu.MovFuncionario1Click(Sender: TObject);
begin
  fMovFuncionario := TfMovFuncionario.Create(Self);
  fMovFuncionario.ShowModal;
end;

procedure TfMenu.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

procedure TfMenu.Curso1Click(Sender: TObject);
begin
  fCursoC := TfCursoC.Create(Self);
  fCursoC.ShowModal;
end;

procedure TfMenu.RelaoNominaldeAlunos1Click(Sender: TObject);
begin
  if not fdm1.tParametro.Active then
    fdm1.tParametro.Open;
  fPrevQNC := TfPrevQNC.Create(Self);
  fPrevQNC.Tag := Fdm1.tParametroESCOLA.AsInteger;
  fPrevQNC.ShowModal;
end;

procedure TfMenu.Disciplinas1Click(Sender: TObject);
begin
  fDisciplinasC := TfDisciplinasC.Create(Self);
  fDisciplinasC.ShowModal;
end;

procedure TfMenu.Notas1Click(Sender: TObject);
begin
  fNotasC := TfNotasC.Create(Self);
  fNotasC.ShowModal;
end;

procedure TfMenu.ListadeAlunos1Click(Sender: TObject);
begin
  fPrevQNC := TfPrevQNC.Create(Self);
  fPrevQNC.Caption := 'Lista de Alunos';
  fPrevQNC.Panel2.Visible  := False;
  fPrevQNC.BitBtn3.Visible := False;
  fPrevQNC.BitBtn5.Visible := False;
  fPrevQNC.Panel1.Height   := 76;
  fPrevQNC.ShowModal;
end;

procedure TfMenu.BocaTeste1Click(Sender: TObject);
begin
  fProduto := TfProduto.Create(Self);
  fProduto.ShowModal;
end;

procedure TfMenu.CobranaSicredi1Click(Sender: TObject);
begin
  fBcoSicredi := TfBcoSicredi.Create(Self);
  fBcoSicredi.ShowModal;
end;

procedure TfMenu.ImpDuplicatas1Click(Sender: TObject);
begin
  fPrevDuplicatas := TfPrevDuplicatas.Create(Self);
  fPrevDuplicatas.ShowModal;
end;

procedure TfMenu.clImpDuplicataExecute(Sender: TObject);
begin
//
end;

procedure TfMenu.Label1Click(Sender: TObject);
begin
  fVincendo := TfVincendo.Create(Self);
  fVincendo.ShowModal;
end;

procedure TfMenu.DiarioClick(Sender: TObject);
begin
//  fDiarioC := TfDiarioC.Create(Self);
//  fDiarioC.ShowModal;
  OpenForm(TfDiarioC,wsMaximized);
end;

procedure TfMenu.Viaturas1Click(Sender: TObject);
begin
  fViaturaC := TfViaturaC.Create(Self);
  fViaturaC.ShowModal;
end;

procedure TfMenu.Bairros1Click(Sender: TObject);
begin
  fBairroC := TfBairroC.Create(Self);
  fBairroC.ShowModal;
end;

procedure TfMenu.Agentes1Click(Sender: TObject);
begin
  fAgenteC := TfAgenteC.Create(Self);
  fAgenteC.ShowModal;
end;

procedure TfMenu.Logoff1Click(Sender: TObject);
begin
  UserControl1.Logoff;
end;

procedure TfMenu.OpenForm(FClass: TFormClass; vEstado: TWindowState);
var
  existe: TForm;
  j: Byte;
begin
  existe := nil;
  for j := 0 to Screen.FormCount - 1 do
    if Screen.Forms[j] is FClass then
      existe := Screen.Forms[j];

  if not (existe = nil) then
  begin
    existe.WindowState := vEstado;
    existe.BringToFront;
    existe.SetFocus;
  end
  else
    Application.CreateForm(FClass,existe);
    existe.WindowState := vEstado;
end;

procedure TfMenu.UserControl1AfterLogin(Sender: TObject);
begin
  fdm1.vUsuario := UserControl1.CurrentUser.LoginName; //sem fdm1
  vUsuario2 := UserControl1.CurrentUser.LoginName; //sem fdm1
end;

procedure TfMenu.Celulares1Click(Sender: TObject);
begin
  fCelularC := TfCelularC.Create(Self);
  fCelularC.ShowModal;
end;

procedure TfMenu.EscalaDiria1Click(Sender: TObject);
begin
  fEscalaDiariaC := TfEscalaDiariaC.Create(Self);
  fEscalaDiariaC.ShowModal;
end;

procedure TfMenu.ExtratodeSEG1Click(Sender: TObject);
begin
  fExtratoSEG := TfExtratoSEG.Create(Self);
  fExtratoSEG.ShowModal;
end;

procedure TfMenu.Certificados1Click(Sender: TObject);
begin
  fCertificadoC := TfCertificadoC.Create(Self);
  fCertificadoC.ShowModal;
end;

procedure TfMenu.RemessaMultiBancoClick(Sender: TObject);
begin
  fCobRemessa := TfCobRemessa.Create(Self);
  fCobRemessa.ShowModal;
end;

procedure TfMenu.Vendas1Click(Sender: TObject);
begin
  fPrevVendaCurso := TfPrevVendaCurso.Create(Self);
  fPrevVendaCurso.ShowModal;
end;

initialization
 RLConsts.SetVersion(3,72,'B');

end.
