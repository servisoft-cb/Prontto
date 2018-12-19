unit uImportaAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, DB, DBClient, StdCtrls, Buttons,
  Mask, JvToolEdit, Grids, DBGrids, SMDBGrid, ExtCtrls, uUtil, uDm1, rsDBUtils, FMTBcd, SqlExpr, JvLookup;

type
  TfImportaAlunos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    JvFilenameEdit1: TJvFilenameEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cds1: TClientDataSet;
    cds1RG: TStringField;
    ds1: TDataSource;
    cds1CPF: TStringField;
    cds1NOME: TStringField;
    cds1TIPO: TStringField;
    cds1SEXO: TStringField;
    cds1ENDERECO: TStringField;
    cds1NUMERO: TStringField;
    cds1COMPLEMENTO: TStringField;
    cds1BAIRRO: TStringField;
    cds1CIDADE: TStringField;
    cds1ESTADO: TStringField;
    cds1FONE: TStringField;
    cds1CELULAR: TStringField;
    cds1DTCADASTRO: TDateField;
    cds1EMAIL: TStringField;
    cds1FOTO: TBlobField;
    cds1REGISTRO_PF: TStringField;
    cds1ORGAO_EXPED: TStringField;
    cds1DT_FORMACAO: TDateField;
    cds1PAI: TStringField;
    cds1MAE: TStringField;
    cds1CIDADE_NATAL: TStringField;
    cds1ESTADO_NATAL: TStringField;
    cds1TURMA: TStringField;
    cds1NACIONALIDADE: TStringField;
    cds1DT_NASCIMENTO: TDateField;
    cds1CARGO: TStringField;
    cds1TRABALANDO: TStringField;
    cds1CARTEIRA_CNV: TStringField;
    cds1EMPREGO: TStringField;
    cds1DT_EMISSAO: TDateField;
    cds1DT_DEMISSAO: TDateField;
    cds1DT_CURSO_VIG: TDateField;
    cds1ESCOLA_VIG: TStringField;
    cds1DT_RECIC_VIG: TDateField;
    cds1ESCOLA_RECIC: TStringField;
    cds1CURSO_BOMBEIRO: TStringField;
    cds1CURSO_HELIPONTO: TStringField;
    cds1CURSO_COND_CAO: TStringField;
    cds1CURSO_OP_MONITOR: TStringField;
    cds1CURSO_SEG_BANCARIA: TStringField;
    cds1EXT_TRANSP_VAL: TStringField;
    cds1DT_EXT_TRANSP_VAL: TDateField;
    cds1EXT_ESCOLTA_ARMADA: TStringField;
    cds1DT_EXT_ESCOLTA_ARM: TDateField;
    cds1EXT_SSP: TStringField;
    cds1DT_EXT_SSP: TDateField;
    cds1OUTRA_LINGA: TStringField;
    cds1NIVEL_OUTRA_LINGUA: TStringField;
    cds1HORARIO_DISP: TStringField;
    cds1FDS_DISP: TStringField;
    cds1AP: TStringField;
    cds1VERB: TStringField;
    cds1COD: TStringField;
    cds1FUMANTE: TStringField;
    cds1CONTA: TStringField;
    cds1AGENCIA: TStringField;
    cds1OBS: TStringField;
    cds1CALCA: TStringField;
    cds1CAMISA: TStringField;
    cds1JAQUETA: TStringField;
    cds1SAPATO: TStringField;
    cds1COLETE: TStringField;
    cds1EXT_GRANDES_EVENTOS: TStringField;
    qCidade: TSQLQuery;
    qCidadeID: TIntegerField;
    cds1ID: TIntegerField;
    cds1CEP: TStringField;
    BitBtn3: TBitBtn;
    cdsTurma: TClientDataSet;
    cdsTurmaTurma: TStringField;
    cdsTurmaDtIni: TDateField;
    cdsTurmaDtFim: TDateField;
    SMDBGrid2: TSMDBGrid;
    dsTurma: TDataSource;
    cdsTurmaId: TIntegerField;
    Label2: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvDBLookupCombo1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDm1: TDm1;
  end;

var
  fImportaAlunos: TfImportaAlunos;

implementation

{$R *.dfm}

procedure TfImportaAlunos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fdm1.Pessoa.CommandText := fdm1.ctPessoa;
  Action := caFree;
end;

procedure TfImportaAlunos.BitBtn1Click(Sender: TObject);
var
  csv: TextFile;
  i: Integer;
  vArquivo, vData: String;
begin
  if not cds1.Active then
    cds1.CreateDataSet;

  cds1.EmptyDataSet;

  vArquivo := JvFilenameEdit1.Text;
  if Copy(vArquivo,Length(vArquivo)-9,6) <> 'alunos' then
  begin
    ShowMessage('Arquivo selecionado não é de alunos!');
    Exit;
  end;

  AssignFile(csv,vArquivo);
  Reset(csv);
  while not Eof(csv) do
  begin
    ReadLn(csv,vRegistro_CSV);

    if (Copy(vRegistro_CSV,1,8) = 'situacao') or (Copy(vRegistro_CSV,1,1) = '0') then
      Continue;

    vRegistro_CSV := TirarAcento(vRegistro_CSV);

    fnc_Montar_Campo;
    cds1.Insert;
    cds1ID.AsString   := fnc_Montar_Campo;
    cds1RG.AsString   := fnc_Montar_Campo;
    cds1CPF.AsString  := fnc_Montar_Campo;
    cds1NOME.AsString := (fnc_Montar_Campo);
    cds1TIPO.AsString := fnc_Montar_Campo;//tipo
    cds1SEXO.AsString := fnc_Montar_Campo;//sexo
    cds1ENDERECO.AsString    := (fnc_Montar_Campo);//endereco
    cds1NUMERO.AsString      := fnc_Montar_Campo;//numero
    cds1COMPLEMENTO.AsString := fnc_Montar_Campo;//complemento
    cds1BAIRRO.AsString      := (fnc_Montar_Campo);//bairro
    cds1CEP.AsString         := fnc_Montar_Campo;//bairro
    cds1CIDADE.AsString      := (fnc_Montar_Campo);//cidade
    cds1ESTADO.AsString      := fnc_Montar_Campo;//estado
    cds1FONE.AsString        := fnc_Montar_Campo;//telefone
    cds1CELULAR.AsString     := fnc_Montar_Campo;//celular
    cds1FOTO.AsString        := fnc_Montar_Campo;//foto

    vData := fnc_Montar_Campo;
    if (vData <> '') and (vData <> '0000-00-00') then
      cds1DTCADASTRO.AsString := Copy(vData,9,2) + '/' + Copy(vData,6,2) + '/' + Copy(vData,1,4);//dtcadastro

    cds1EMAIL.AsString       := fnc_Montar_Campo;//email
    cds1REGISTRO_PF.AsString := fnc_Montar_Campo;//registrodpf
    cds1ORGAO_EXPED.AsString := fnc_Montar_Campo;//orgaoexpedidor

    vData := fnc_Montar_Campo;
    if vData <> '' then
      cds1DT_FORMACAO.AsString := Copy(vData,9,2) + '/' + Copy(vData,6,2) + '/' + Copy(vData,1,4);;//dtformacao

    cds1PAI.AsString           := (fnc_Montar_Campo);//pai
    cds1MAE.AsString           := (fnc_Montar_Campo);//mae
    cds1CIDADE_NATAL.AsString  := (fnc_Montar_Campo);//cidade_natal
    cds1ESTADO_NATAL.AsString  := fnc_Montar_Campo;//estado_natal
    cds1TURMA.AsString         := fnc_Montar_Campo;//turma
    cds1NACIONALIDADE.AsString := fnc_Montar_Campo;//nacionalidade

    vData := fnc_Montar_Campo;
    if vData <> '' then
      cds1DT_NASCIMENTO.AsString := Copy(vData,9,2) + '/' + Copy(vData,6,2) + '/' + Copy(vData,1,4);//dtnascimento

    cds1CARGO.AsString        := fnc_Montar_Campo;//cargo
    cds1TRABALANDO.AsString   := fnc_Montar_Campo;//trabalhando
    cds1CARTEIRA_CNV.AsString := fnc_Montar_Campo;//carteiracnv

    vData := fnc_Montar_Campo;
    if vData <> '' then
      cds1DTCADASTRO.AsString := Copy(vData,9,2) + '/' + Copy(vData,6,2) + '/' + Copy(vData,1,4);//dtcarteiracnv

    cds1EXT_GRANDES_EVENTOS.AsString := fnc_Montar_Campo;//extensaograndeseventos
    cds1EMPREGO.AsString := fnc_Montar_Campo;//emprego

    vData := fnc_Montar_Campo;
    if vData <> '' then
      cds1DT_EMISSAO.AsString := Copy(vData,9,2) + '/' + Copy(vData,6,2) + '/' + Copy(vData,1,4);//dtemissao

    vData := fnc_Montar_Campo;
    if vData <> '' then
      cds1DT_DEMISSAO.AsString := Copy(vData,9,2) + '/' + Copy(vData,6,2) + '/' + Copy(vData,1,4);//dtdemissao

    vData := fnc_Montar_Campo;
    if vData <> '' then
      cds1DT_CURSO_VIG.AsString := Copy(vData,9,2) + '/' + Copy(vData,6,2) + '/' + Copy(vData,1,4);//dtcursovigilante
    cds1ESCOLA_VIG.AsString := (fnc_Montar_Campo);//escolacursovigilante

    vData := fnc_Montar_Campo;
    if vData <> '' then
      cds1DT_RECIC_VIG.AsString := Copy(vData,9,2) + '/' + Copy(vData,6,2) + '/' + Copy(vData,1,4);//dtreciclagemvigilante

    cds1ESCOLA_RECIC.AsString       := (fnc_Montar_Campo);//escolareciclagemvigilante
    cds1CURSO_BOMBEIRO.AsString     := fnc_Montar_Campo;//cursobombeirocivil
    cds1CURSO_HELIPONTO.AsString    := fnc_Montar_Campo;//cursoheliponto
    cds1CURSO_COND_CAO.AsString     := fnc_Montar_Campo;//cursocondutorcaes
    cds1CURSO_OP_MONITOR.AsString   := fnc_Montar_Campo;//cursooperadormonitoramento
    cds1CURSO_SEG_BANCARIA.AsString := fnc_Montar_Campo;//cursosegurancabancaria
    cds1EXT_TRANSP_VAL.AsString     := fnc_Montar_Campo;//extensaotransportevalores

    vData := fnc_Montar_Campo;
    if vData <> '' then
      cds1DT_EXT_TRANSP_VAL.AsString := Copy(vData,9,2) + '/' + Copy(vData,6,2) + '/' + Copy(vData,1,4);//dtextensaotransportevalores

    cds1EXT_ESCOLTA_ARMADA.AsString := fnc_Montar_Campo;//extensaoescoltaarmada

    vData := fnc_Montar_Campo;
    if vData <> '' then
      cds1DT_EXT_ESCOLTA_ARM.AsString := Copy(vData,9,2) + '/' + Copy(vData,6,2) + '/' + Copy(vData,1,4);//dtextensaoescoltaarmada
    cds1EXT_SSP.AsString := fnc_Montar_Campo;//extensaospp

    vData := fnc_Montar_Campo;
    if vData <> '' then
      cds1DT_EXT_SSP.AsString := Copy(vData,9,2) + '/' + Copy(vData,6,2) + '/' + Copy(vData,1,4);//dtextensaospp
    cds1OUTRA_LINGA.AsString        := fnc_Montar_Campo;//outralingua
    cds1NIVEL_OUTRA_LINGUA.AsString := fnc_Montar_Campo;//niveloutralingua
    cds1HORARIO_DISP.AsString       := fnc_Montar_Campo;//horariodisponivel
    cds1FDS_DISP.AsString           := fnc_Montar_Campo;//disponibilidadefinalsemana
    cds1AP.AsString                 := fnc_Montar_Campo;//ap
    cds1VERB.AsString               := fnc_Montar_Campo;//verb
    cds1COD.AsString                := fnc_Montar_Campo;//cod
    cds1FUMANTE.AsString            := fnc_Montar_Campo;//fumante
    cds1CONTA.AsString              := fnc_Montar_Campo;//contabancaria
    cds1AGENCIA.AsString            := fnc_Montar_Campo;//agenciabancaria
    cds1OBS.AsString                := (fnc_Montar_Campo);//observacoes
    cds1CALCA.AsString              := fnc_Montar_Campo;//calca
    cds1CAMISA.AsString             := fnc_Montar_Campo;//camisa
    cds1JAQUETA.AsString            := fnc_Montar_Campo;//jaqueta
    cds1COLETE.AsString             := fnc_Montar_Campo;//colete
    cds1SAPATO.AsString             := fnc_Montar_Campo;//sapato

    cds1.Post;
  end;
  CloseFile(csv);

  JvFilenameEdit1.Text := 'C:\';
end;

procedure TfImportaAlunos.BitBtn2Click(Sender: TObject);
begin
  if (JvDBLookupCombo1.Text = '') then
  begin
    ShowMessage('Curso deve ser preenchido!');
    Exit;
  end;

  fdm1.Pessoa.CommandText := fDm1.ctPessoa + 'WHERE PESSOA = ''F''';
  fdm1.tPessoa.Open;
  fdm1.tPessoa_Curso.Open;
  cds1.IndexFieldNames := 'ID';

  cdsTurma.IndexFieldNames := 'Turma';

  cds1.First;
  while not cds1.Eof do
  begin
    if cds1ID.AsString = '' then
    begin
      cds1.Next;
      Continue;
    end;

    fdm1.tPessoa.IndexFieldNames := 'ID_INTERNET';
    if fDm1.tPessoa.Findkey([cds1ID.AsInteger]) then
    begin
      cds1.Next;
      Continue;
    end
    else
    begin
      fdm1.tPessoa.IndexFieldNames := 'DOCUMENTO';
      if fDm1.tPessoa.Findkey([cds1CPF.AsString]) then
      begin
        cds1.Next;
        Continue;
      end
      else
      begin
        fdm1.tPessoa.IndexFieldNames := 'RG';
        if fDm1.tPessoa.Findkey([cds1RG.AsString]) then
        begin
          cds1.Next;
          Continue;
        end
        else
        begin
          fDm1.tPessoa.Insert;
          fDm1.tPessoaID.AsInteger := fdm1.ProximaSequencia('PESSOA');
        end;
      end;
    end;
    fDm1.tPessoaAGENCIA.AsString := cds1AGENCIA.AsString;
    fDm1.tPessoaAP.AsString      := cds1AP.AsString;
    fDm1.tPessoaBAIRRO.AsString  := cds1BAIRRO.AsString;
    fDm1.tPessoaCEP.AsString     := cds1CEP.AsString;
    fDm1.tPessoaCALCA.AsString   := cds1CALCA.AsString;
    fDm1.tPessoaCAMISA.AsString  := cds1CAMISA.AsString;
    fDm1.tPessoaCARGO_PRETENDIDO.AsString := cds1CARGO.AsString;
    fDm1.tPessoaREGISTRO_DPF.AsString := cds1CARTEIRA_CNV.AsString;
    fDm1.tPessoaCEL.AsString     := cds1CELULAR.AsString;

    qCidade.Close;
    qCidade.ParamByName('NOME').AsString := UpperCase(cds1CIDADE.AsString);
    qCidade.Open;
    fDm1.tPessoaCIDADE.AsString := qCidadeID.AsString;

    qCidade.Close;
    qCidade.ParamByName('NOME').AsString := UpperCase(cds1CIDADE_NATAL.AsString);
    qCidade.Open;
    fDm1.tPessoaNATURALIDADE_CID.AsString := qCidadeID.AsString;

    fDm1.tPessoaID_INTERNET.AsString  := cds1ID.AsString;
    fDm1.tPessoaCOLETE.AsString       := cds1COLETE.AsString;
    fDm1.tPessoaENDCOMPLEMENTO.AsString := cds1COMPLEMENTO.AsString;
    fDm1.tPessoaCONTA.AsString        := cds1CONTA.AsString;
    fDm1.tPessoaDOCUMENTO.AsString    := cds1CPF.AsString;
    fDm1.tPessoaDTCADASTRO.AsString := cds1DTCADASTRO.AsString;
    fDm1.tPessoaDT_FORMACAO.AsString  := cds1DT_FORMACAO.AsString;
    fDm1.tPessoaDTNASCIMENTO.AsString := cds1DT_NASCIMENTO.AsString;
    fDm1.tPessoaEMAIL.AsString        := cds1EMAIL.AsString;
    fDm1.tPessoaEMPREGOS_ANT.AsString := cds1EMPREGO.AsString;
    fDm1.tPessoaENDERECO.AsString     := cds1ENDERECO.AsString;

    if (cds1ESTADO.AsString = 'Rio Grande do Sul') or
       (cds1ESTADO.AsString = 'RIO GRANDE DO SUL') then
      fDm1.tPessoaESTADO.AsString := 'RS';
    if (cds1ESTADO_NATAL.AsString = 'Rio Grande do Sul') or
       (cds1ESTADO_NATAL.AsString = 'RIO GRANDE DO SUL') then
      fDm1.tPessoaNATURALIDADE_UF.AsString := 'RS';

//    fDm1.tPessoaNOME.AsString := cds1DT_RECIC_VIG.AsString;
//    fDm1.tPessoaNOME.AsString := cds1ESCOLA_RECIC.AsString;
//    fDm1.tPessoaNOME.AsString := cds1ESCOLA_VIG.AsString;
//    fDm1.tPessoaNOME.AsString := cds1EXT_ESCOLTA_ARMADA.AsString;
//    fDm1.tPessoaNOME.AsString := cds1EXT_GRANDES_EVENTOS.AsString;
//    fDm1.tPessoaNOME.AsString := cds1EXT_SSP.AsString;
//    fDm1.tPessoaNOME.AsString := cds1EXT_TRANSP_VAL.AsString;
//    fDm1.tPessoaNOME.AsString := cds1CURSO_BOMBEIRO.AsString;
//    fDm1.tPessoaNOME.AsString := cds1CURSO_COND_CAO.AsString;
//    fDm1.tPessoaNOME.AsString := cds1CURSO_HELIPONTO.AsString;
//    fDm1.tPessoaNOME.AsString := cds1CURSO_OP_MONITOR.AsString;
//    fDm1.tPessoaNOME.AsString := cds1CURSO_SEG_BANCARIA.AsString;
//    fDm1.tPessoaNOME.AsString := cds1DT_CURSO_VIG.AsString;
//    fDm1.tPessoaDNOME.AsString := cds1DT_DEMISSAO.AsString;
//    fDm1.tPessoaNOME.AsString := cds1DT_EMISSAO.AsString;
//    fDm1.tPessoaNOME.AsString := cds1DT_EXT_ESCOLTA_ARM.AsString;
//    fDm1.tPessoaNOME.AsString := cds1DT_EXT_SSP.AsString;
//    fDm1.tPessoaNOME.AsString := cds1DT_EXT_TRANSP_VAL.AsString;
    fDm1.tPessoaFDS_DISPONIVEL.AsString := cds1FDS_DISP.AsString;
    fDm1.tPessoaFONE.AsString           := cds1FONE.AsString;
    fDm1.tPessoaFOTO.AsString           := cds1FOTO.AsString;
    fDm1.tPessoaFUMANTE.AsString        := cds1FUMANTE.AsString;
    fDm1.tPessoaHORARIO_DISPONIVEL.AsString := cds1HORARIO_DISP.AsString;
    fDm1.tPessoaJAQUETA.AsString        := cds1JAQUETA.AsString;
    fDm1.tPessoaNOMEMAE.AsString        := cds1MAE.AsString;
    fDm1.tPessoaNACIONALIDADE.AsString  := cds1NACIONALIDADE.AsString;
    fDm1.tPessoaOUTRA_LINGUA_NIVEL.AsString := cds1NIVEL_OUTRA_LINGUA.AsString;
    fDm1.tPessoaNOME.AsString         := cds1NOME.AsString;
    fDm1.tPessoaFANTASIA.AsString     := cds1NOME.AsString;
    fDm1.tPessoaENDNUMERO.AsString    := cds1NUMERO.AsString;
    fDm1.tPessoaOBSERVACAO.AsString   := cds1OBS.AsString;
    fDm1.tPessoaOUTRA_LINGUA.AsString := cds1OUTRA_LINGA.AsString;
    fDm1.tPessoaNOMEPAI.AsString      := cds1PAI.AsString;
    fDm1.tPessoaREGISTRO_DPF.AsString := cds1REGISTRO_PF.AsString;
    fDm1.tPessoaRG.AsString           := cds1RG.AsString;
    fDm1.tPessoaSAPATO.AsString       := cds1SAPATO.AsString;

    if cds1SEXO.AsString = 'M' then
      fDm1.tPessoaSEXO.AsString := '1'
    else
      fDm1.tPessoaSEXO.AsString := '2';

    fdm1.tPessoaALUNO.AsString        := '1';
//    fDm1.tPessoaNOME.AsString  := cds1ORGAO_EXPED.AsString;
//    fDm1.tPessoatNOME.AsString := cds1TIPO.AsString;
//    fDm1.tPessoaNOME.AsString  := cds1TRABALANDO.AsString;
//    fDm1.tPessoaNOME.AsString  := cds1TURMA.AsString;
    fDm1.tPessoaTURMA_INTERNET.AsString := cds1TURMA.AsString;
    fDm1.tPessoa.Post;
    fDm1.tPessoa.ApplyUpdates(0);

    fdm1.tPessoa_Curso.IndexFieldNames := 'PESSOA_ID;CURSO_ID';
    if cdsTurma.FindKey([fdm1.tPessoaTURMA_INTERNET.AsString]) then
    begin
      if not fdm1.tPessoa_Curso.FindKey([fDm1.tPessoaID.AsInteger,JvDBLookupCombo1.KeyValue]) then
      begin
        fDm1.tPessoa_Curso.Insert;
        fdm1.tPessoa_CursoID.AsInteger        := fdm1.ProximaSequencia('PESSOA_CURSO');
        fdm1.tPessoa_CursoPESSOA_ID.AsInteger := fDm1.tPessoaID.AsInteger;
        fdm1.tPessoa_CursoCURSO_ID.AsInteger  := JvDBLookupCombo1.KeyValue;

        fdm1.tPessoa_CursoNOME.AsString     := fDm1.tCursoNOME.AsString;
        fdm1.tPessoa_CursoCARGAHORARIA.AsString := fDm1.tCursoCARGA_HORARIA.AsString;
        fDm1.tPessoa_CursoTURMA.AsString    := cdsTurmaTurma.AsString;
        fdm1.tPessoa_CursoDTINICIO.AsString := cdsTurmaDtIni.AsString;
        fdm1.tPessoa_CursoDTFINAL.AsString  := cdsTurmaDtFim.AsString;
        fdm1.tPessoa_Curso.Post;
        fDm1.tPessoa_Curso.ApplyUpdates(0);
      end;
    end;

    cds1.Next;
  end;

  ShowMessage('Concluído!');
end;

procedure TfImportaAlunos.BitBtn3Click(Sender: TObject);
var
  csv: TextFile;
  i: Integer;
  vArquivo, vData: String;
begin
  if not cdsTurma.Active then
    cdsTurma.CreateDataSet;

  cdsTurma.EmptyDataSet;

  vArquivo := JvFilenameEdit1.Text;
  if Copy(vArquivo,Length(vArquivo)-9,6) <> 'turmas' then
  begin
    ShowMessage('Arquivo selecionado não é de turmas!');
    Exit;
  end;

  AssignFile(csv,vArquivo);
  Reset(csv);
  while not Eof(csv) do
  begin
    ReadLn(csv,vRegistro_CSV);

    if (Copy(vRegistro_CSV,1,2) = 'id') then
      Continue;

    cdsTurma.Insert;
    cdsTurmaId.AsString    := fnc_Montar_Campo;
    cdsTurmaTurma.AsString := fnc_Montar_Campo;

    fnc_Montar_Campo;
    vData := fnc_Montar_Campo;
    if (vData <> '') and (vData <> '0000-00-00') then
      cdsTurmaDtIni.AsString := Copy(vData,9,2) + '/' + Copy(vData,6,2) + '/' + Copy(vData,1,4);

    vData := fnc_Montar_Campo;
    if (vData <> '') and (vData <> '0000-00-00') then
      cdsTurmaDtFim.AsString := Copy(vData,9,2) + '/' + Copy(vData,6,2) + '/' + Copy(vData,1,4);

    cdsTurma.Post;
  end;

  CloseFile(csv);

  JvFilenameEdit1.Text := 'C:\';
end;

procedure TfImportaAlunos.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  fdm1.ctPessoa := fdm1.Pessoa.CommandText;
  fdm1.tCurso.Open;
end;

procedure TfImportaAlunos.JvDBLookupCombo1Enter(Sender: TObject);
begin
  fDm1.tCurso.IndexFieldNames := 'NOME';
end;

end.
