unit uPessoa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB, Dialogs, StdCtrls, Mask, DBCtrls, UCBase,
  Grids, ExtCtrls, ComCtrls, JvDBComb, dbxpress, VerificaCPF, VerificaCGC, JvToolEdit, JvDBCtrl, Buttons, DBGrids, JvLookup,
  FMTBcd, JPEG, SqlExpr, DBClient, Provider, rsDBUtils, SMDBGrid, UDm1, Clipbrd, ExtDlgs, dbTables, ValorPor, ShellApi,
  ComObj, StrUtils, JvEdit, JvTypedEdit;

type
  TfPessoa = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label9: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    JvDBLookupCombo2: TJvDBLookupCombo;
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    tabCliente: TTabSheet;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    TabSheet6: TTabSheet;
    Label27: TLabel;
    JvDBComboBox2: TJvDBComboBox;
    TabSheet7: TTabSheet;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    VerificaCGC1: TVerificaCGC;
    VerificaCPF1: TVerificaCPF;
    BitBtn13: TBitBtn;
    Label40: TLabel;
    DBEdit39: TDBEdit;
    DBCheckBox5: TDBCheckBox;
    Label41: TLabel;
    JvDBLookupCombo8: TJvDBLookupCombo;
    Label50: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    UCControls1: TUCControls;
    Panel3: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label14: TLabel;
    Label28: TLabel;
    GroupBox2: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    JvDBLookupCombo3: TJvDBLookupCombo;
    DBEdit20: TDBEdit;
    JvDBLookupCombo4: TJvDBLookupCombo;
    JvDBLookupCombo5: TJvDBLookupCombo;
    DBEdit21: TDBEdit;
    JvDBLookupCombo6: TJvDBLookupCombo;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit11: TDBEdit;
    JvDBComboBox3: TJvDBComboBox;
    CReceberParc: TSQLDataSet;
    CReceberParcVLRRESTANTE: TFloatField;
    CReceberParcP: TDataSetProvider;
    tCReceberParc: TClientDataSet;
    tCReceberParcVLRRESTANTE: TFloatField;
    CPagarParc: TSQLDataSet;
    CPagarParcP: TDataSetProvider;
    tCPagarParc: TClientDataSet;
    CPagarParcVLRRESTANTE: TFloatField;
    tCPagarParcVLRRESTANTE: TFloatField;
    tabFuncionario: TTabSheet;
    Label53: TLabel;
    DBEdit40: TDBEdit;
    Label54: TLabel;
    JvDBComboBox4: TJvDBComboBox;
    DBEdit41: TDBEdit;
    Label55: TLabel;
    tabSeg: TTabSheet;
    Panel4: TPanel;
    SMDBGrid1: TSMDBGrid;
    StaticText1: TStaticText;
    tabAluno: TTabSheet;
    DBCheckBox6: TDBCheckBox;
    tabEmrpesas: TTabSheet;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    JvDBGrid6: TJvDBGrid;
    Panel10: TPanel;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    Panel6: TPanel;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn18: TBitBtn;
    SMDBGrid2: TSMDBGrid;
    TabSheet17: TTabSheet;
    DBMemo3: TDBMemo;
    TabSheet18: TTabSheet;
    DBMemo4: TDBMemo;
    TabSheet19: TTabSheet;
    DBMemo5: TDBMemo;
    Image1: TImage;
    BitBtn19: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    BitBtn20: TBitBtn;
    DBEdit44: TDBEdit;
    Shape1: TShape;
    Label61: TLabel;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    SMDBGrid3: TSMDBGrid;
    JvDBComboBox5: TJvDBComboBox;
    Label62: TLabel;
    BitBtn23: TBitBtn;
    TabSheet20: TTabSheet;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    Label65: TLabel;
    JvDBDateEdit3: TJvDBDateEdit;
    Label66: TLabel;
    Label67: TLabel;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    PageControl3: TPageControl;
    TabSheet5: TTabSheet;
    Label38: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label60: TLabel;
    JvDBLookupCombo7: TJvDBLookupCombo;
    DBMemo1: TDBMemo;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    TabSheet4: TTabSheet;
    JvDBGrid5: TJvDBGrid;
    Panel11: TPanel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    TabSheet8: TTabSheet;
    Label45: TLabel;
    GroupBox4: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    GroupBox5: TGroupBox;
    Label39: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit34: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBMemo2: TDBMemo;
    TabSheet9: TTabSheet;
    Panel8: TPanel;
    Label44: TLabel;
    Edit4: TEdit;
    JvDBGrid4: TJvDBGrid;
    Panel9: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    TabSheet11: TTabSheet;
    JvDBGrid2: TJvDBGrid;
    Panel5: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    tabServicos: TTabSheet;
    Panel7: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn24: TBitBtn;
    JvDBGrid3: TJvDBGrid;
    JvDBGrid7: TJvDBGrid;
    BitBtn25: TBitBtn;
    DBCheckBox9: TDBCheckBox;
    tabOcorrencias: TTabSheet;
    Panel12: TPanel;
    cdsResumo: TClientDataSet;
    cdsResumoNomeOcorrencia: TStringField;
    cdsResumoHora: TTimeField;
    cdsResumoObservacao: TStringField;
    dsResumo: TDataSource;
    cdsResumoData: TDateField;
    Label68: TLabel;
    JvDateEdit1: TJvDateEdit;
    BitBtn26: TBitBtn;
    Label69: TLabel;
    JvDateEdit2: TJvDateEdit;
    sdsOcorrencias: TSQLDataSet;
    dspOcorrencias: TDataSetProvider;
    cdsOcorrencias: TClientDataSet;
    dsOcorrencias: TDataSource;
    tabFiliacao: TTabSheet;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    JvDBLookupCombo10: TJvDBLookupCombo;
    JvDBLookupCombo11: TJvDBLookupCombo;
    JvDBDateEdit2: TJvDBDateEdit;
    DBEdit33: TDBEdit;
    BitBtn27: TBitBtn;
    TabSheet2: TTabSheet;
    Panel13: TPanel;
    BitBtn28: TBitBtn;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    JvDBComboBox6: TJvDBComboBox;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    JvDBLookupCombo12: TJvDBLookupCombo;
    JvDBLookupCombo13: TJvDBLookupCombo;
    JvDBDateEdit4: TJvDBDateEdit;
    DBEdit55: TDBEdit;
    SMDBGrid5: TSMDBGrid;
    PageControl4: TPageControl;
    TabSheet10: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    DBMemo6: TDBMemo;
    DBMemo7: TDBMemo;
    DBMemo8: TDBMemo;
    ValorPorExtenso1: TValorPorExtenso;
    Label81: TLabel;
    JvDBDateEdit5: TJvDBDateEdit;
    Panel14: TPanel;
    Shape2: TShape;
    Label82: TLabel;
    Shape3: TShape;
    Label83: TLabel;
    Shape4: TShape;
    Label84: TLabel;
    BitBtn29: TBitBtn;
    SMDBGrid4: TSMDBGrid;
    Panel15: TPanel;
    Label85: TLabel;
    JvCurrencyEdit1: TJvCurrencyEdit;
    BitBtn30: TBitBtn;
    BitBtn31: TBitBtn;
    Label51: TLabel;
    JvDBLookupCombo9: TJvDBLookupCombo;
    Label52: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure te(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvDBComboBox1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure JvDBLookupCombo1Exit(Sender: TObject);
    procedure JvDBLookupCombo3Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure JvDBGrid4DblClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure JvDBGrid3DblClick(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn5Click(Sender: TObject);
    procedure JvDBGrid2DblClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure JvDBGrid5DblClick(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure JvDBGrid2TitleClick(Column: TColumn);
    procedure JvDBGrid3TitleClick(Column: TColumn);
    procedure JvDBGrid5TitleClick(Column: TColumn);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure Label41Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvDBComboBox1Change(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure JvDBGrid6DblClick(Sender: TObject);
    procedure JvDBLookupCombo10Exit(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure SMDBGrid2CellClick(Column: TColumn);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure tabOcorrenciasShow(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure BitBtn28Click(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn29Click(Sender: TObject);
    procedure BitBtn30Click(Sender: TObject);
    procedure BitBtn31Click(Sender: TObject);
  private
    { Private declarations }
    vItem: Integer;
    vDocCliente: string;
    Fdm1: Tdm1;
    procedure Grava_Imagem_JPEG(Tabela: TClientDataSet; Campo: TBlobField; Foto: TImage; Dialog: TOpenPictureDialog; Arquivo: String);
    procedure Le_Imagem_JPEG(Campo: TBlobField; Foto: TImage);
    function Numeros(Documento: string): string;
    function Mascara_Doc(Documento: string): string;
    procedure calcMedia(vTodas: Boolean);
    procedure ModeloInterno;
    procedure ModeloWord;
  public
    { Public declarations }
    vFechar: Boolean;
    property Dm1: Tdm1 read Fdm1 write Fdm1;
    procedure EscondeAbas(inserindo: Boolean);
  end;

var
  fPessoa: TfPessoa;
  sql: array[0..1] of string;

implementation

uses uTelefone, uPessoaAnamnese, uPessoaServico, uPessoaAtendimento, uAlarme, uCidade, uCentroCusto, UDmCons, UMenu,
  uPessoaCurso, uPessoaEmpresas, uRelComprovante, uPessoaServicoContrato, URelPessoasContrato, uCurriculoR, uCaptura,
  uFotoUtils, UContasReceber;

{$R *.dfm}

function TfPessoa.Numeros(Documento: string): string;
var
  vTexto1: string;
  i: Integer;
begin
  vTexto1 := '';
  for i := 1 to Length(Documento) do
  begin
     //if TryStrToInt(copy(Documento,i,1)) then
    if (copy(Documento, i, 1) = '0') or (copy(Documento, i, 1) = '1') or (copy(Documento, i, 1) = '2') or
      (copy(Documento, i, 1) = '3') or (copy(Documento, i, 1) = '4') or (copy(Documento, i, 1) = '5') or
      (copy(Documento, i, 1) = '6') or (copy(Documento, i, 1) = '7') or (copy(Documento, i, 1) = '8') or
      (copy(Documento, i, 1) = '9') then
      vTexto1 := vTexto1 + copy(Documento, i, 1);
  end;
  Result := vTexto1;
end;

function TfPessoa.Mascara_Doc(Documento: string): string;
var
  vTexto1: string;
begin
  if Fdm1.tPessoaPESSOA.AsString = 'J' then
    vTexto1 := copy(Documento, 1, 2) + '.' + copy(Documento, 3, 3) + '.' + copy(Documento, 6, 3)
      + '/' + copy(Documento, 9, 4) + '-' + copy(Documento, 13, 2)
  else
    if Fdm1.tPessoaPESSOA.AsString = 'F' then
      vTexto1 := copy(Documento, 1, 3) + '.' + copy(Documento, 4, 3) + '.' + copy(Documento, 7, 3)
        + '-' + copy(Documento, 10, 2);
  Result := vTexto1;
end;

procedure TfPessoa.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tPessoa.Cancel;
  Close;
end;

procedure TfPessoa.BitBtn1Click(Sender: TObject);
var
  TD: TTransactionDesc;

  vDelta1, vDelta2, vDelta3, vDelta4, vDelta5, vDelta6, vDelta7, vDelta8: OleVariant;

  iflag: Integer;

  sBookMark1, sBookMark2, sBookMark3, sBookMark4, sBookMark5, sBookMark6, sBookMark7, sBookMark8: string;
begin
  if DBEdit1.Text = '' then
  begin
    ShowMessage('Nome deve ser preenchido!');
    Exit;
  end;
  if (Fdm1.tPessoaALUNO.AsString = '1') and (Fdm1.tPessoaSEXO.IsNull) then
  begin
    ShowMessage('Sexo deve ser preenchido!');
    Exit;
  end;

  if (Fdm1.tPessoaCLIENTE.AsString = '0') and (Fdm1.tPessoaFORNECEDOR.AsString = '0') and
    (Fdm1.tPessoaVENDEDOR.AsString = '0') and (Fdm1.tPessoaTRANSPORTADORA.AsString = '0') and
    (Fdm1.tPessoaFUNCIONARIO.AsString = '0') and (Fdm1.tPessoaALUNO.AsString = '0') then
  begin
    ShowMessage('Um papel deve ser preenchido!');
    Exit;
  end;

  if (Fdm1.tPessoaCLIENTE.AsString = '1') and (Fdm1.tPessoaVLRPGTO.AsFloat > 0) and (Fdm1.tPessoaDIAPAGAMENTO.AsInteger <= 0) then
  begin
    ShowMessage('Falta informar o dia de cobrança para este cliente!');
    Exit;
  end;

  if Fdm1.tPessoaSTATUS.AsString = '0' then
  begin
    if Fdm1.tPessoaCLIENTE.AsString = '1' then
    begin
      tCReceberParc.Close;
      CReceberParc.Params[0].AsInteger := Fdm1.tPessoaID.AsInteger;
      tCReceberParc.Open;
      if (tCReceberParc.RecordCount > 0) and (tCReceberParcVLRRESTANTE.AsFloat > 0) then
      begin
        tCReceberParc.Close;
        ShowMessage('Registro não pode ser desativado pois possui parcelas em aberto no contas a receber!');
        exit;
      end;
    end;
    if (Fdm1.tPessoaFORNECEDOR.AsString = '1') or (Fdm1.tPessoaFUNCIONARIO.AsString = '1') then
    begin
      tCPagarParc.Close;
      CPagarParc.Params[0].AsInteger := Fdm1.tPessoaID.AsInteger;
      tCPagarParc.Open;
      if (tCPagarParc.RecordCount > 0) and (tCPagarParcVLRRESTANTE.AsFloat > 0) then
      begin
        tCPagarParc.Close;
        ShowMessage('Registro não pode ser desativado pois possui parcelas em aberto no contas a pagar!');
        exit;
      end;
    end;
  end;

  if Fdm1.tPessoaDOCUMENTO.AsString = '' then
  begin
    ShowMessage('CNPJ/CPF deve ser preenchido');
    Exit;
  end;
  if Fdm1.tPessoaCIDADE.IsNull then
  begin
    ShowMessage('Cidade deve ser preenchida!');
    Exit;
  end;
  try
    iflag := 0;
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    Fdm1.Conexao.StartTransaction(TD);
    Fdm1.tPessoa.Post;

    sBookMark1 := Fdm1.tPessoa.Bookmark;
    sBookMark2 := Fdm1.tPessoaServico.Bookmark;
    sBookMark3 := Fdm1.tAlarme.Bookmark;
    sBookMark4 := Fdm1.tTelefone.Bookmark;
    sBookMark5 := Fdm1.tPessoaAtendimento.Bookmark;
    sBookMark6 := Fdm1.tPessoaServicoExtra.Bookmark;
    sBookMark7 := Fdm1.tPessoa_Curso.Bookmark;
    sBookMark8 := Fdm1.tPessoaEmpresas.Bookmark;

    vDelta1 := Fdm1.tPessoa.Data;
    vDelta2 := Fdm1.tPessoaServico.Data;
    vDelta3 := Fdm1.tAlarme.Data;
    vDelta4 := Fdm1.tTelefone.Data;
    vDelta5 := Fdm1.tPessoaAtendimento.Data;
    vDelta6 := Fdm1.tPessoaServicoExtra.Data;
    vDelta7 := Fdm1.tPessoa_Curso.Data;
    vDelta8 := Fdm1.tPessoaEmpresas.Data;

    iflag := 1;
    if Fdm1.tPessoa.ChangeCount > 0 then
      Fdm1.tPessoa.ApplyUpdates(0);
    iflag := 2;
    if Fdm1.tPessoaServico.ChangeCount > 0 then
      Fdm1.tPessoaServico.ApplyUpdates(0);
    iflag := 3;
    if Fdm1.tAlarme.ChangeCount > 0 then
      Fdm1.tAlarme.ApplyUpdates(0);
    iflag := 4;
    if Fdm1.tTelefone.ChangeCount > 0 then
      Fdm1.tTelefone.ApplyUpdates(0);
    iflag := 5;
    if Fdm1.tPessoaAtendimento.ChangeCount > 0 then
      Fdm1.tPessoaAtendimento.ApplyUpdates(0);
    iflag := 6;
    if Fdm1.tPessoaServicoExtra.ChangeCount > 0 then
      Fdm1.tPessoaServicoExtra.ApplyUpdates(0);
    iflag := 7;
    if Fdm1.tPessoa_Curso.ChangeCount > 0 then
      Fdm1.tPessoa_Curso.ApplyUpdates(0);
    iflag := 8;
    if Fdm1.tPessoaEmpresas.ChangeCount > 0 then
      Fdm1.tPessoaEmpresas.ApplyUpdates(0);

    Fdm1.Conexao.Commit(TD);
    vDocCliente := Numeros(DBEdit4.Text);
  except
    on E: Exception do
    begin
      if iflag > 1 then
        Fdm1.tPessoa.Data := vDelta5;
      if iflag > 2 then
        Fdm1.tPessoaServico.Data := vDelta2;
      if iflag > 3 then
        Fdm1.tAlarme.Data := vDelta3;
      if iflag > 4 then
        Fdm1.tTelefone.Data := vDelta4;
      if iflag > 5 then
        Fdm1.tPessoaAtendimento.Data := vDelta1;
      if iflag > 6 then
        Fdm1.tPessoaServicoExtra.Data := vDelta6;
      if iflag > 7 then
        Fdm1.tPessoa_Curso.Data := vDelta7;

      Fdm1.tPessoa.Bookmark := sBookMark1;
      Fdm1.tPessoaServico.Bookmark := sBookMark2;
      Fdm1.tAlarme.Bookmark := sBookMark3;
      Fdm1.tTelefone.Bookmark := sBookMark4;
      Fdm1.tPessoaAtendimento.Bookmark := sBookMark5;
      Fdm1.tPessoaServicoExtra.Bookmark := sBookMark6;
      Fdm1.tPessoa_Curso.Bookmark := sBookMark7;
      Fdm1.tPessoaEmpresas.Bookmark := sBookMark8;

      Fdm1.Conexao.Rollback(TD);
      ShowMessage('Erro ao tentar gravar o registro: ' + E.Message);
    end;
  end;
  if (vFechar) and (MessageDlg('Deseja fechar este cadastro?',mtConfirmation,[mbOk,mbNo],0) = mrOk) then
    Close;
end;

procedure TfPessoa.te(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 3;
  PageControl2.ActivePageIndex := 0;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfPessoa.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tPessoa.State in [dsInsert, dsEdit] then
  begin
    CanClose := False;
    if BitBtn1.Visible then
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?', mtConfirmation, [mbOk, mbNo], 0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tPessoa.State in [dsBrowse] then
                CanClose := True;
            end;
      mrNo: begin
              BitBtn2.Click;
              CanClose := true;
            end;
    end
    else
    begin
      BitBtn2.Click;
      CanClose := true;
    end;
  end
  else
    CanClose := True;
end;

procedure TfPessoa.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 3;
  PageControl2.ActivePageIndex := 0;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfPessoa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Fdm1.tCidade.Close;
  Fdm1.tPais.Close;
  Fdm1.tUF.Close;
  Fdm1.tBanco.Close;
  fDm1.Banco.CommandText := 'SELECT * FROM BANCO WHERE ID =:CODIGO';
  Fdm1.tFormaPgto.Close;
  Fdm1.tPlanoSaude.Close;
  Fdm1.tTelefone.Close;
  Fdm1.tPessoaAnamnese.Close;
  Fdm1.tPessoaAtendimento.Close;
  Fdm1.tPessoaServico.Close;
  Fdm1.tPessoaServicoExtra.Close;
  Fdm1.tAlarme.Close;
  Fdm1.tCentroCusto.Close;
  Fdm1.tPessoa_Curso.Close;
  DmCons.qTipoCobranca.Close;
  Fdm1.tClausula.Close;
  Fdm1.tPessoaEmpresas.Close;
  fdm1.PessoaEmpresas.CommandText := sql[0];
  Fdm1.cdsPessoaReajuste.Close;

{  Fdm1.Telefone.CommandText          := 'select * from TELEFONE where CODPESSOA = :P1';
  Fdm1.PessoaAnamnese.CommandText    := 'SELECT A.*, B.NOME FROM PESSOA_ANAMNESE A INNER JOIN ANAMNESE B ON (A.ANAMNESE_ID = B.ID) WHERE A.PESSOA_ID = :P1';
  Fdm1.PessoaAtendimento.CommandText := 'SELECT * FROM PESSOA_ATENDIMENTO WHERE PESSOA_ID = :P1';
  Fdm1.PessoaServico.CommandText     := 'SELECT A.*, B.NOME FROM PESSOA_SERVICO A INNER JOIN SERVICO B ON (A.SERVICO_ID = B.ID) WHERE A.PESSOA_ID = :P1';}
end;

procedure TfPessoa.JvDBComboBox1Exit(Sender: TObject);
begin
  {if Fdm1.tPessoaPESSOA.AsString = 'F' then
    Fdm1.tPessoaDOCUMENTO.EditMask := '000.000.000-00'
  else
    Fdm1.tPessoaDOCUMENTO.EditMask := '00.000.000/0000-00';}
end;

procedure TfPessoa.DBEdit4Exit(Sender: TObject);
begin
  if DBEdit4.Text <> '' then
  begin
    vDocCliente := Numeros(DBEdit4.Text);
    if (Length(vDocCliente) <> 11) and (Length(vDocCliente) <> 14) then

      ShowMessage('Documento informado está incorreto!')
    else
    begin
      vDocCliente := Mascara_Doc(vDocCliente);
      DBEdit4.Text := vDocCliente;
      if Fdm1.tPessoaPESSOA.AsString = 'F' then
      begin
            //VerificaCPF1.Entrada := DBEdit4.Text;
        VerificaCPF1.Entrada := vDocCliente;
        if not VerificaCPF1.Resultado then
        begin
          ShowMessage('O CPF está incorreto!');
          DBEdit4.SetFocus;
        end
      end
      else
        if Fdm1.tPessoaPESSOA.AsString = 'J' then
        begin
            //VerificaCGC1.Entrada := DBEdit4.Text;
          VerificaCGC1.Entrada := vDocCliente;
          if not VerificaCGC1.Resultado then
          begin
            ShowMessage('O CNPJ está incorreto!');
            DBEdit4.SetFocus;
          end;
        end;
    end;
  end;
end;

procedure TfPessoa.JvDBLookupCombo1Exit(Sender: TObject);
begin
  Fdm1.tPessoaESTADO.AsString := Fdm1.tCidadeUF.AsString;
end;

procedure TfPessoa.JvDBLookupCombo3Exit(Sender: TObject);
begin
  if not Fdm1.tPessoaCOBCIDADE.IsNull then
    Fdm1.tPessoaCOBUF.AsString := Fdm1.tCidadeUF.AsString;
end;

procedure TfPessoa.BitBtn3Click(Sender: TObject);
begin
  fTelefone := TfTelefone.Create(Self);

  fTelefone.Dm1 := Fdm1;

  Fdm1.tTelefone.Last;
  vItem := Fdm1.tTelefoneITEM.AsInteger;
  Fdm1.tTelefone.Insert;
  Fdm1.tTelefoneCODPESSOA.AsInteger := Fdm1.tPessoaID.AsInteger;
  Fdm1.tTelefoneITEM.AsInteger := vItem + 1;
  fTelefone.ShowModal;
  fTelefone.Free;
end;

procedure TfPessoa.BitBtn4Click(Sender: TObject);
begin
  if not Fdm1.tTelefone.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?', mtconfirmation, [mbOk, mbNo], 0) = mrOk then
    begin
      Fdm1.tTelefone.Delete;
      Fdm1.tTelefone.ApplyUpdates(0);
    end;
end;

procedure TfPessoa.BitBtn10Click(Sender: TObject);
begin
  if not Fdm1.tPessoaAnamnese.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?', mtconfirmation, [mbOk, mbNo], 0) = mrOk then
    begin
      Fdm1.tPessoaAnamnese.Delete;
      Fdm1.tPessoaAnamnese.ApplyUpdates(0);
    end;
end;

procedure TfPessoa.BitBtn8Click(Sender: TObject);
begin
  if not Fdm1.tPessoaServico.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?', mtconfirmation, [mbOk, mbNo], 0) = mrOk then
    begin
      Fdm1.tPessoaServico.Delete;
      Fdm1.tPessoaServico.ApplyUpdates(0);
    end;
end;

procedure TfPessoa.BitBtn6Click(Sender: TObject);
begin
  if not Fdm1.tPessoaAtendimento.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?', mtconfirmation, [mbOk, mbNo], 0) = mrOk then
    begin
      Fdm1.tPessoaAtendimento.Delete;
      Fdm1.tPessoaAtendimento.ApplyUpdates(0);
    end;
end;

procedure TfPessoa.JvDBGrid1DblClick(Sender: TObject);
begin
  if not Fdm1.tTelefone.IsEmpty then
  begin
    fTelefone := TfTelefone.Create(Self);

    fTelefone.Dm1 := Fdm1;

    Fdm1.tTelefone.Edit;
    fTelefone.ShowModal;
    fTelefone.Free;
  end;
end;

procedure TfPessoa.BitBtn9Click(Sender: TObject);
begin
  fPessoaAnamnese := TfPessoaAnamnese.Create(Self);

  fPessoaAnamnese.Dm1 := Fdm1;

  Fdm1.tPessoaAnamnese.Insert;
  Fdm1.tAlarmeNOME_EXIBICAO.AsString := Fdm1.tPessoaNOME.AsString;
  Fdm1.tAlarmeCIDADE_ID.AsInteger := Fdm1.tPessoaCIDADE.AsInteger;
  Fdm1.tAlarmeBAIRRO.AsString := Fdm1.tPessoaBAIRRO.AsString;
  Fdm1.tAlarmeENDERECO.AsString := Fdm1.tPessoaENDERECO.AsString + ', ' +
    Fdm1.tPessoaENDNUMERO.AsString + ' - ' +
    Fdm1.tPessoaENDCOMPLEMENTO.AsString;
  fPessoaAnamnese.ShowModal;
  fPessoaAnamnese.Free;
end;

procedure TfPessoa.JvDBGrid4DblClick(Sender: TObject);
begin
  if not Fdm1.tPessoaAnamnese.IsEmpty then
  begin
    fPessoaAnamnese := TfPessoaAnamnese.Create(Self);

    fPessoaAnamnese.Dm1 := Fdm1;

    Fdm1.tPessoaAnamnese.Edit;
    fPessoaAnamnese.ShowModal;
    fPessoaAnamnese.Free;
  end;
end;

procedure TfPessoa.BitBtn7Click(Sender: TObject);
begin
  fPessoaServico := TfPessoaServico.Create(Self);

  fPessoaServico.Dm1 := Fdm1;

  Fdm1.tPessoaServico.Last;
  vItem := Fdm1.tPessoaServicoSERVICO_ID.Value;
  Fdm1.tPessoaServico.Insert;
  Fdm1.tPessoaServicoPESSOA_ID.Value := Fdm1.tPessoaID.AsInteger;
  Fdm1.tPessoaServicoSERVICO_ID.Value := vItem + 1;
  fPessoaServico.ShowModal;
  fPessoaServico.Free;
end;

procedure TfPessoa.JvDBGrid3DblClick(Sender: TObject);
begin
  if not Fdm1.tPessoaServico.IsEmpty then
  begin
    fPessoaServico := TfPessoaServico.Create(Self);

    fPessoaServico.Dm1 := Fdm1;

    Fdm1.tPessoaServico.Edit;
    fPessoaServico.ShowModal;
    fPessoaServico.Free;
  end;
end;

procedure TfPessoa.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F3) then
  begin
    Fdm1.tPessoaAnamnese.Close;
    if Edit4.Text = '[Digite o nome e pressione F3 para localizar]' then
      Edit4.Clear;
    Fdm1.PessoaAnamnese.CommandText := 'SELECT A.*, B.NOME FROM PESSOA_ANAMNESE A ' +
                                       'INNER JOIN ANAMNESE B ON (A.ANAMNESE_ID = B.ID) ' +
                                       'WHERE A.PESSOA_ID = :P1 AND UPPER(B.NOME) LIKE UPPER(''%' + Edit4.Text + '%'')';
    Fdm1.PessoaAnamnese.ParamByName('P1').AsInteger := Fdm1.tPessoaID.AsInteger;
    Fdm1.tPessoaAnamnese.Open;
    if Edit4.Text = '' then
    begin
      Edit4.Text := '[Digite o nome e pressione F3 para localizar]';
      Edit4.SelectAll;
    end;
    Fdm1.tPessoaAnamnese.IndexFieldNames := 'NOME';
  end;
end;

procedure TfPessoa.BitBtn5Click(Sender: TObject);
begin
  fPessoaAtendimento := TfPessoaAtendimento.Create(Self);

  fPessoaAtendimento.Dm1 := Fdm1;

  Fdm1.tPessoaAtendimento.Last;
  vItem := Fdm1.tPessoaAtendimentoID.Value;
  Fdm1.tPessoaAtendimento.Insert;
  Fdm1.tPessoaAtendimentoPESSOA_ID.Value := Fdm1.tPessoaID.Value;
  Fdm1.tPessoaAtendimentoID.Value := vItem + 1;
  fPessoaAtendimento.ShowModal;
  fPessoaAtendimento.Free;
end;

procedure TfPessoa.JvDBGrid2DblClick(Sender: TObject);
begin
  if not Fdm1.tPessoaAtendimento.IsEmpty then
  begin
    fPessoaAtendimento := TfPessoaAtendimento.Create(Self);

    fPessoaAtendimento.Dm1 := Fdm1;

    Fdm1.tPessoaAtendimento.Edit;
    fPessoaAtendimento.ShowModal;
    fPessoaAtendimento.Free;
  end;
end;

procedure TfPessoa.BitBtn11Click(Sender: TObject);
begin
  fAlarme := TfAlarme.Create(Self);

  fAlarme.Dm1 := Fdm1;

  Fdm1.tAlarme.Last;
  vItem := Fdm1.tAlarmeID.AsInteger;
  Fdm1.tAlarme.Insert;
  Fdm1.tAlarmeCLIENTE_ID.Value := Fdm1.tPessoaID.AsInteger;
  Fdm1.tAlarmeID.AsInteger := vItem + 1;
  fAlarme.ShowModal;
  fAlarme.Free;
end;

procedure TfPessoa.BitBtn12Click(Sender: TObject);
begin
  if not Fdm1.tAlarme.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?', mtconfirmation, [mbOk, mbNo], 0) = mrOk then
    begin
      Fdm1.tAlarme.Delete;
      Fdm1.tAlarme.ApplyUpdates(0);
    end;
end;

procedure TfPessoa.JvDBGrid5DblClick(Sender: TObject);
begin
  if not (Fdm1.tAlarme.IsEmpty) then
  begin
    fAlarme := TfAlarme.Create(Self);

    fAlarme.Dm1 := Fdm1;

    Fdm1.tAlarme.Edit;
    fAlarme.ShowModal;
    fAlarme.Free;
  end;
end;

procedure TfPessoa.BitBtn13Click(Sender: TObject);
begin
  Fdm1.tAlarme.Insert;
  Fdm1.tAlarmeNOME_EXIBICAO.AsString := Fdm1.tPessoaNOME.AsString;
  Fdm1.tAlarmeBAIRRO.AsString := Fdm1.tPessoaBAIRRO.AsString;
  Fdm1.tAlarmeCIDADE_ID.AsString := Fdm1.tPessoaCIDADE.AsString;
  Fdm1.tAlarmeCLIENTE_ID.AsString := Fdm1.tPessoaID.AsString;
  Fdm1.tAlarmeENDERECO.AsString := Fdm1.tPessoaENDERECO.AsString + ', ' +
    Fdm1.tPessoaENDNUMERO.AsString + ' - ' +
    Fdm1.tPessoaENDCOMPLEMENTO.AsString;
  Fdm1.tAlarmeFONE1.AsString := Fdm1.tPessoaFONE.AsString;
  fAlarme := TfAlarme.Create(Self);

  fAlarme.Dm1 := Fdm1;

  fAlarme.ShowModal;
  fAlarme.Free;
  {if Fdm1.tClienteAcc.Locate('CPFCNPJ',Fdm1.tPessoaDOCUMENTO.Value,([locaseinsensitive])) then
    begin
      if not Fdm1.tAlarmeAcc.Locate('IdCliente',Fdm1.tClienteAccIdCliente.Value,([locaseinsensitive])) then
        begin
          Fdm1.tAlarmeAcc.Insert;
          Fdm1.tAlarmeAccIdCliente.Value := Fdm1.tAlarmeCLIENTE_ID.Value;
          Fdm1.tAlarmeAccNomeLocal.Value := Fdm1.tAlarmeNOME_EXIBICAO.Value;
          Fdm1.tAlarmeAccEndereco.Value  := Fdm1.tAlarmeENDERECO.Value;
          Fdm1.tAlarmeAccBairro.Value    := Fdm1.tAlarmeBAIRRO.Value;
          Fdm1.tAlarmeAccIdCidade.Value  := Fdm1.tAlarmeCIDADE_ID.Value;
          Fdm1.tAlarmeAccCEP.Value       := Fdm1.tPessoaCEP.Value;
          Fdm1.tAlarmeAccUF.Value        := Fdm1.tPessoaESTADO.Value;
          Fdm1.tAlarmeAccFone1.Value     := Fdm1.tAlarmeFONE1.Value;
          Fdm1.tAlarmeAccFone2.Value     := Fdm1.tAlarmeFONE2.Value;
          Fdm1.tAlarmeAccFone3.Value     := Fdm1.tAlarmeFONE3.Value;
          Fdm1.tAlarmeAccMelhorTrajeto.Value := Fdm1.tAlarmeMELHOR_TRAJETO.Value;
          Fdm1.tAlarmeAccFoneIdentificacao1.Value := Fdm1.tAlarmeFONE1.Value;
          Fdm1.tAlarmeAccFoneIdentificacao2.Value := Fdm1.tAlarmeFONE2.Value;
          Fdm1.tAlarmeAcc.Post;
        end;
    end}
end;

procedure TfPessoa.Label9Click(Sender: TObject);
begin
  fCidade := TfCidade.Create(Self);

  fCidade.Dm1 := Fdm1;

  Fdm1.tCidade.Insert;
  fCidade.ShowModal;
  Fdm1.tCidade.Close;
  Fdm1.tCidade.Open;
  Fdm1.tUF.Close;
  Fdm1.tUF.Open;
end;

procedure TfPessoa.JvDBGrid2TitleClick(Column: TColumn);
var
  i: Word;
begin
  Fdm1.tPessoaAtendimento.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfPessoa.JvDBGrid3TitleClick(Column: TColumn);
var
  i: Word;
begin
  Fdm1.tPessoaServico.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfPessoa.JvDBGrid5TitleClick(Column: TColumn);
var
  i: Word;
begin
  Fdm1.tAlarme.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfPessoa.JvDBGrid1TitleClick(Column: TColumn);
var
  i: Word;
begin
  Fdm1.tTelefone.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfPessoa.Label41Click(Sender: TObject);
begin
  fCentroCusto := TfCentroCusto.Create(Self);

  fCentroCusto.Dm1 := Fdm1;

  Fdm1.tCentroCusto.Insert;
  fCentroCusto.ShowModal;
  Fdm1.tCentroCusto.Close;
  Fdm1.tCentroCusto.Open;
end;

procedure TfPessoa.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  vFechar := True;

  Fdm1.tCidade.Open;
  Fdm1.tPais.Open;
  Fdm1.tUF.Open;
  Fdm1.tFormaPgto.Open;
  Fdm1.tPlanoSaude.Open;
  Fdm1.tCentroCusto.Open;

  DmCons.qTipoCobranca.Open;

  fDm1.Banco.CommandText := 'SELECT * FROM BANCO';
  fDm1.tBanco.Open;

  // arrumar aqui o pessoaID que não esta com parametros

  Fdm1.tTelefone.Close;
  Fdm1.Telefone.ParamByName('P1').AsInteger := Fdm1.tPessoaID.AsInteger;
  Fdm1.tTelefone.Open;

  Fdm1.tPessoaAnamnese.Close;
  Fdm1.PessoaAnamnese.ParamByName('P1').AsInteger := Fdm1.tPessoaID.AsInteger;
  Fdm1.tPessoaAnamnese.Open;

  Fdm1.tPessoaAtendimento.Close;
  Fdm1.PessoaAtendimento.ParamByName('P1').AsInteger := Fdm1.tPessoaID.AsInteger;
  Fdm1.tPessoaAtendimento.Open;

  Fdm1.tPessoaServico.Close;
  Fdm1.PessoaServico.ParamByName('P1').AsInteger := Fdm1.tPessoaID.AsInteger;
  Fdm1.tPessoaServico.Open;

  Fdm1.tPessoaServicoExtra.Close;
  Fdm1.PessoaServicoExtra.ParamByName('PESSOA_ID').AsInteger := Fdm1.tPessoaID.AsInteger;
  Fdm1.tPessoaServicoExtra.Open;

  Fdm1.tAlarme.Close;
  Fdm1.Alarme.ParamByName('C1').AsInteger := Fdm1.tPessoaID.AsInteger;
  Fdm1.tAlarme.Open;

  Fdm1.tPessoa_Curso.Close;
  Fdm1.Pessoa_Curso.ParamByName('PESSOA_ID').AsInteger := Fdm1.tPessoaID.AsInteger;
  Fdm1.tPessoa_Curso.Open;

  Fdm1.cdsPessoaReajuste.Close;
  Fdm1.sdsPessoaReajuste.ParamByName('PESSOA').AsInteger := Fdm1.tPessoaID.AsInteger;
  Fdm1.cdsPessoaReajuste.Open;

  sql[0] := fdm1.PessoaEmpresas.CommandText;
  Fdm1.tPessoaEmpresas.Close;
  fdm1.PessoaEmpresas.CommandText := sql[0] + ' WHERE PESSOA_ID = ' + Fdm1.tPessoaID.AsString;
  Fdm1.tPessoaEmpresas.Open;

  Fdm1.tClausula.Close;
  Fdm1.tClausula.Open;

  Fdm1.tParametro.Close;
  Fdm1.tParametro.Open;

  fdm1.tPessoaCursoNota.Close;
  fdm1.PessoaCursoNota.CommandText := fdm1.PessoaCursoNota.CommandText + ' AND PESSOA_ID = :P1 AND CURSO_ID = :C1';
  fdm1.PessoaCursoNota.ParamByName('P1').AsInteger := fdm1.tPessoaID.AsInteger;
  fdm1.PessoaCursoNota.ParamByName('C1').AsInteger := fdm1.tPessoa_CursoCURSO_ID.AsInteger;
  fdm1.tPessoaCursoNota.Open;

  JvDBComboBox1Change(Sender);

  Image1.Picture := nil;
//  if (fDM1.tPessoaFOTO_CAMINHO.AsString <> '') and FileExists(fDM1.tPessoaFOTO_CAMINHO.AsString) then
//    Image1.Picture.LoadFromFile(Dm1.tPessoaFOTO_CAMINHO.AsString);

  uFotoUtils.ExibeFoto(fdm1.cdsPessoaFoto,'FOTO',Image1);
end;

procedure TfPessoa.JvDBComboBox1Change(Sender: TObject);
begin
  Label55.Visible := JvDBComboBox1.Values[JvDBComboBox1.ItemIndex] = 'F';
  DBEdit41.Visible := JvDBComboBox1.Values[JvDBComboBox1.ItemIndex] = 'F';

  if not DBEdit41.Visible then
    DBEdit41.Clear;
end;

procedure TfPessoa.BitBtn14Click(Sender: TObject);
begin
  vFechar := False;
  BitBtn1.Click;

  fDm1.tPessoa.Edit;
  
  fPessoaCurso := TfPessoaCurso.Create(Self);

  fPessoaCurso.Dm1 := Fdm1;

  Fdm1.tPessoa_Curso.Insert;
  Fdm1.tPessoa_CursoID.AsInteger      := Fdm1.ProximaSequencia('PESSOA_CURSO');
  Fdm1.tPessoa_CursoPESSOA_ID.Value   := Fdm1.tPessoaID.AsInteger;
  Fdm1.tPessoa_CursoSITUACAO.AsString := 'MT';
  fPessoaCurso.ShowModal;
  fPessoaCurso.Free;
end;

procedure TfPessoa.BitBtn15Click(Sender: TObject);
begin
  if not Fdm1.tPessoa_Curso.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?', mtconfirmation, [mbOk, mbNo], 0) = mrOk then
    begin
      Fdm1.tPessoa_Curso.Delete;
      Fdm1.tPessoa_Curso.ApplyUpdates(0);
    end;
end;

procedure TfPessoa.SMDBGrid2DblClick(Sender: TObject);
begin
  if not Fdm1.tPessoa_Curso.IsEmpty then
  begin
    fPessoaCurso := TfPessoaCurso.Create(Self);

    fPessoaCurso.Dm1 := Fdm1;

    Fdm1.tPessoa_Curso.Edit;
    fPessoaCurso.ShowModal;
    fPessoaCurso.Free;
  end;
end;

procedure TfPessoa.BitBtn17Click(Sender: TObject);
begin
  if not Fdm1.tPessoaEmpresas.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?', mtconfirmation, [mbOk, mbNo], 0) = mrOk then
    begin
      Fdm1.tPessoaEmpresas.Delete;
      Fdm1.tPessoaEmpresas.ApplyUpdates(0);
    end;
end;

procedure TfPessoa.BitBtn16Click(Sender: TObject);
begin
  fPessoaEmpresas := TfPessoaEmpresas.Create(SElf);
  fPessoaEmpresas.Dm1 := Fdm1;
  fdm1.tPessoaEmpresas.Insert;
  fdm1.tPessoaEmpresasPESSOA_ID.AsInteger := fdm1.tPessoaID.AsInteger;
  fPessoaEmpresas.ShowModal;
  fPessoaEmpresas.Free;
end;

procedure TfPessoa.JvDBGrid6DblClick(Sender: TObject);
begin
  fPessoaEmpresas := TfPessoaEmpresas.Create(SElf);
  fPessoaEmpresas.Dm1 := Fdm1;
  fdm1.tPessoaEmpresas.Edit;
  fPessoaEmpresas.ShowModal;
  fPessoaEmpresas.Free;
end;

procedure TfPessoa.JvDBLookupCombo10Exit(Sender: TObject);
begin
  if not Fdm1.tPessoaNATURALIDADE_CID.IsNull then
    Fdm1.tPessoaNATURALIDADE_UF.AsString := Fdm1.tCidadeUF.AsString;
end;

procedure TfPessoa.BitBtn18Click(Sender: TObject);
begin
  if not fDm1.tPessoa_Curso.IsEmpty then
  begin
    fRelComprovante := TfRelComprovante.Create(Self);
    fRelComprovante.Dm1 := Fdm1;
    fRelComprovante.RLReport1.Preview;
    fRelComprovante.Destroy;
  end;
end;

procedure TfPessoa.BitBtn19Click(Sender: TObject);
var
  vNomeArq: String;
begin
//  Image1.Picture.LoadFromClipboardFormat(cf_BitMap, ClipBoard.GetAsHandle(cf_Bitmap), 0);
  fdm1.tParametro.Open;
  vNomeArq := Fdm1.tParametroFOTOS_PASTA.AsString + '\' + Fdm1.tPessoaID.AsString;

  fCaptura := TfCaptura.Create(Self);
  fCaptura.vNomeArquivo := vNomeArq;
  fCaptura.ShowModal;

  vNomeArq := vNomeArq + '.jpg';

  Fdm1.cdsPessoaFoto.Edit;
  Fdm1.cdsPessoaFotoID.AsInteger := Fdm1.tPessoaID.AsInteger;

  ufotoUtils.GravaFoto(Fdm1.cdsPessoaFoto,'FOTO',vNomeArq);
  Fdm1.cdsPessoaFoto.Post;
  fdm1.cdsPessoaFoto.ApplyUpdates(0);

  Image1.Picture.LoadFromFile(vNomeArq);
end;

procedure TfPessoa.Image1DblClick(Sender: TObject);
begin
  if (fDM1.tPessoaFOTO.AsString <> '') and (fDM1.tPessoa.State in [dsEdit, dsInsert]) then
    if MessageDlg('Deseja realmente excluir a foto?', mtConfirmation, [mbOK, mbNO], 0) = mrOK then
    begin
      Image1.Picture.Assign(nil);
      fDM1.tPessoaFOTO.Clear;
    end;
end;

procedure TfPessoa.BitBtn20Click(Sender: TObject);
var
  vNomeArq: String;
begin
  fdm1.tParametro.Open;

  Fdm1.cdsPessoaFoto.Edit;
  Fdm1.cdsPessoaFotoID.AsInteger := Fdm1.tPessoaID.AsInteger;

  vNomeArq := Fdm1.tParametroFOTOS_PASTA.AsString + '\' + Fdm1.tPessoaID.AsString + '.jpg';
  Image1.Picture.LoadFromFile(vNomeArq);

  ufotoUtils.GravaFoto(Fdm1.cdsPessoaFoto,'FOTO',vNomeArq);

  Fdm1.cdsPessoaFoto.Post;
  fdm1.cdsPessoaFoto.ApplyUpdates(0);


{  OpenPictureDialog1.Execute;
  fDM1.tPessoaFOTO_CAMINHO.AsString := OpenPictureDialog1.FileName;

  Image1.Picture := nil;
  if fDM1.tPessoaFOTO_CAMINHO.AsString <> '' then
    Image1.Picture.LoadFromFile(fDm1.tPessoaFOTO_CAMINHO.AsString);
}
end;

procedure TfPessoa.Grava_Imagem_JPEG(Tabela: TClientDataSet; Campo: TBlobField; Foto: TImage; Dialog: TOpenPictureDialog; Arquivo: String);
var
  BS: TStream;
  MinhaImagem: TJPEGImage;
begin
  if not (Tabela.State in [dsEdit, dsInsert]) then
    Tabela.Edit;

//  BS := TBlobStream.Create((Campo as TBlobField), bmWrite);
  BS := Tabela.CreateBlobStream(Campo,bmWrite);

  MinhaImagem := TJPEGImage.Create;
  if Arquivo = '' then
  begin
    Dialog.InitialDir := 'C:\';
    Dialog.Execute;
    if Dialog.FileName <> '' then
      MinhaImagem.LoadFromFile(Dialog.FileName);
  end
  else
    MinhaImagem.LoadFromFile(Arquivo);

  MinhaImagem.SaveToStream(BS);
  Foto.Picture.Assign(MinhaImagem);
  BS.Free;
  MinhaImagem.Free;
end;

procedure TfPessoa.Le_Imagem_JPEG(Campo: TBlobField; Foto: TImage);
var
  BS: TBlobStream;
  MinhaImagem: TJPEGImage;
begin
  if Campo.AsString <> '' then
  begin
    BS := TBlobStream.Create((Campo as TBlobField), BMRead);
    MinhaImagem := TJPEGImage.Create;
    MinhaImagem.LoadFromStream(BS);
    Foto.Picture.Assign(MinhaImagem);
    BS.Free;
    MinhaImagem.Free;
  end
  else
    Foto.Picture.LoadFromFile('C:\');
end;

procedure TfPessoa.BitBtn21Click(Sender: TObject);
var
  ct: string;
begin
  if fdm1.tPessoa_Curso.IsEmpty then
    Exit;
  if not (fdm1.tPessoaCursoNota.IsEmpty) then
  begin
    if MessageDlg('A lista de disciplinas deste curso não está vazia, ' + #13 +
      'deseja adicionar as disciplinas novas?', mtConfirmation, [mbOk, mbNo], 0) = mrNo then
      Exit;
  end;
  ct := fdm1.CursoDisciplina.CommandText;
  fdm1.tCurso.Open;
  fdm1.tCurso.Locate('Id', fdm1.tPessoa_CursoCURSO_ID.AsInteger, [loCaseInsensitive]);

  fdm1.tCursoDisciplina.Close;
  fdm1.CursoDisciplina.CommandText := fdm1.CursoDisciplina.CommandText + ' WHERE CURSO_ID = :C1';
  fdm1.CursoDisciplina.ParamByName('C1').AsString := fdm1.tCursoID.AsString;
  fdm1.tCursoDisciplina.Open;

  while not fdm1.tCursoDisciplina.Eof do
  begin
    fdm1.tPessoaCursoNota.IndexFieldNames := 'PESSOA_ID;CURSO_ID;DISCIPLINA_ID';
    if fdm1.tPessoaCursoNota.FindKey([fdm1.tPessoaID.AsInteger,fdm1.tCursoID.AsInteger,fdm1.tCursoDisciplinaDISCIPLINA_ID.AsInteger]) then
    begin
      fdm1.tCursoDisciplina.Next;
      Continue;
    end
    else
    begin
      fdm1.tPessoaCursoNota.IndexFieldNames := 'ID';
      fdm1.tPessoaCursoNota.Insert;
      fdm1.tPessoaCursoNotaID.AsInteger     := Fdm1.Incrementa('ID','PESSOA_CURSO_NOTA');
    end;
    fdm1.tPessoaCursoNotaPESSOA_ID.AsInteger := fdm1.tPessoaID.AsInteger;
    fdm1.tPessoaCursoNotaCURSO_ID.AsInteger  := fdm1.tCursoID.AsInteger;
    fdm1.tPessoaCursoNotaDISCIPLINA_ID.AsInteger := fdm1.tCursoDisciplinaDISCIPLINA_ID.AsInteger;
    fdm1.tPessoaCursoNotaDESCRICAO.AsString  := fdm1.tCursoDisciplinaDESCRICAO.AsString;
    fdm1.tPessoaCursoNotaSIGLA.AsString      := fdm1.tCursoDisciplinaSIGLA.AsString;
    fdm1.tPessoaCursoNota.Post;
    fdm1.tPessoaCursoNota.ApplyUpdates(0);
    fdm1.tCursoDisciplina.Next;
  end;
  if MessageDlg('Deseja ignorar disciplinas sem nota?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
    calcMedia(False)
  else
    calcMedia(True);
  fdm1.CursoDisciplina.CommandText := ct;
  fdm1.tCurso.Close;
end;

procedure TfPessoa.SMDBGrid2CellClick(Column: TColumn);
begin
  fdm1.tPessoaCursoNota.Close;
  fdm1.PessoaCursoNota.ParamByName('P1').AsInteger := fdm1.tPessoaID.AsInteger;
  fdm1.PessoaCursoNota.ParamByName('C1').AsInteger := fdm1.tPessoa_CursoCURSO_ID.AsInteger;
  fdm1.tPessoaCursoNota.Open;
end;

procedure TfPessoa.BitBtn22Click(Sender: TObject);
begin
  if not (fdm1.tPessoaCursoNota.IsEmpty) then
    if MessageDlg('Deseja realmente excluir esta disciplina deste aluno?', mtConfirmation, [mbOk, mbNo], 0) = mrOk then
    begin
      fdm1.tPessoaCursoNota.Delete;
      fdm1.tPessoaCursoNota.ApplyUpdates(0);
      calcMedia(False);
    end;
end;

procedure TfPessoa.BitBtn23Click(Sender: TObject);
begin
  if Fdm1.tPessoaCursoNota.ChangeCount > 0 then
    fdm1.tPessoaCursoNota.ApplyUpdates(0);
  if MessageDlg('Deseja ignorar disciplinas sem nota?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
    calcMedia(False)
  else
    calcMedia(True);
end;

procedure TfPessoa.calcMedia(vTodas: Boolean);
var
  soma, divisor: Real;
begin
  soma := 0; divisor := 0;
  fdm1.tPessoaCursoNota.First;
  while not fdm1.tPessoaCursoNota.Eof do
  begin
    soma := soma + fdm1.tPessoaCursoNotaNOTA.AsCurrency;
    if (vTodas) or (fdm1.tPessoaCursoNotaNOTA.AsCurrency > 0) then
      divisor := divisor + 1;
    fdm1.tPessoaCursoNota.Next;
  end;

  if divisor > 0 then
  begin
    fdm1.tPessoa_Curso.Edit;
    Fdm1.tPessoa_CursoMEDIA.AsFloat := (soma / divisor);
    fdm1.tPessoa_Curso.Post;
    fdm1.tPessoa_Curso.ApplyUpdates(0);
  end;
end;

procedure TfPessoa.BitBtn24Click(Sender: TObject);
begin
  if Fdm1.tPessoaServico.IsEmpty then
  begin
    ShowMessage('Não há serviço para gerar contrato!');
    Exit;
  end;
  fPessoaServicoContrato := TfPessoaServicoContrato.Create(Self);
  fPessoaServicoContrato.Dm1 := Fdm1;
  fPessoaServicoContrato.ShowModal;
  fPessoaServicoContrato.Free;
end;

procedure TfPessoa.BitBtn25Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 2;
end;

procedure TfPessoa.BitBtn26Click(Sender: TObject);
begin
//SEG - Especiais
  cdsResumo.Open;
  cdsResumo.EmptyDataSet;
  cdsOcorrencias.Close;
  sdsOcorrencias.CommandText := 'SELECT D.DATA, DE.MOTIVO ' +
                                'FROM DIARIO D ' +
                                'LEFT JOIN DIARIO_ESPECIAL DE ON (D.ID = DE.DIARIO_ID) ' +
                                'WHERE DE.CLIENTE_ID = :P1 ' +
                                'AND D.DATA BETWEEN :D1 AND :D2';
  sdsOcorrencias.ParamByName('P1').AsInteger := Fdm1.tPessoaID.AsInteger;
  sdsOcorrencias.ParamByName('D1').AsDate := JvDateEdit1.Date;
  sdsOcorrencias.ParamByName('D2').AsDate := JvDateEdit2.Date;
  cdsOcorrencias.Open;
  while not cdsOcorrencias.Eof do
  begin
    cdsResumo.Insert;
    cdsResumoData.AsDateTime         := cdsOcorrencias.FieldByName('DATA').AsDateTime;
    cdsResumoNomeOcorrencia.AsString := 'SEG';
    cdsResumoObservacao.AsString     := cdsOcorrencias.FieldByName('MOTIVO').AsString;
    cdsResumo.Post;
    cdsOcorrencias.Next;
  end;
  cdsOcorrencias.Close;
  sdsOcorrencias.CommandText := 'SELECT D.DATA, DA.HORA ' +
                                'FROM DIARIO D ' +
                                'LEFT JOIN DIARIO_ALARME DA ON (D.ID = DA.DIARIO_ID) ' +
                                'WHERE DA.PESSOA_ID = :P1 ' +
                                'AND D.DATA BETWEEN :D1 AND :D2';
  sdsOcorrencias.ParamByName('P1').AsInteger := Fdm1.tPessoaID.AsInteger;
  sdsOcorrencias.ParamByName('D1').AsDate := JvDateEdit1.Date;
  sdsOcorrencias.ParamByName('D2').AsDate := JvDateEdit2.Date;
  cdsOcorrencias.Open;
  while not cdsOcorrencias.Eof do
  begin
    cdsResumo.Insert;
    cdsResumoData.AsDateTime         := cdsOcorrencias.FieldByName('DATA').AsDateTime;
    cdsResumoNomeOcorrencia.AsString := 'ALARME';
    cdsResumoHora.AsString           := cdsOcorrencias.FieldByName('HORA').AsString;
//    cdsResumoObservacao.AsString     := cdsOcorrencias.
    cdsResumo.Post;
    cdsOcorrencias.Next;
  end;
end;

procedure TfPessoa.tabOcorrenciasShow(Sender: TObject);
begin
  JvDateEdit2.Date := Date;
  JvDateEdit1.Date := IncMonth(Date,-1);
end;

procedure TfPessoa.DBEdit1Exit(Sender: TObject);
begin
  if fdm1.tPessoaFANTASIA.IsNull then
    fdm1.tPessoaFANTASIA.AsString := fdm1.tPessoaNOME.AsString;
end;

procedure TfPessoa.EscondeAbas(inserindo: Boolean);
begin
  if not inserindo then
  begin
    tabAluno.TabVisible       := fdm1.tPessoaALUNO.AsString = '1';
    tabCliente.TabVisible     := fdm1.tPessoaCLIENTE.AsString = '1';
    tabEmrpesas.TabVisible    := fdm1.tPessoaALUNO.AsString = '1';
    tabFuncionario.TabVisible := fdm1.tPessoaFUNCIONARIO.AsString = '1';
    tabOcorrencias.TabVisible := fdm1.tPessoaCLIENTE.AsString = '1';
    tabServicos.TabVisible    := fdm1.tPessoaCLIENTE.AsString = '1';
    tabSeg.TabVisible         := fdm1.tPessoaCLIENTE.AsString = '1';
  end
  else
  begin
    tabAluno.TabVisible       := DBCheckBox6.Checked;
    tabCliente.TabVisible     := DBCheckBox1.Checked;
    tabEmrpesas.TabVisible    := DBCheckBox6.Checked;
    tabFuncionario.TabVisible := DBCheckBox5.Checked;
    tabOcorrencias.TabVisible := DBCheckBox1.Checked;
    tabServicos.TabVisible    := DBCheckBox1.Checked;
    tabSeg.TabVisible         := DBCheckBox1.Checked;
  end;
end;

procedure TfPessoa.DBCheckBox1Click(Sender: TObject);
begin
  EscondeAbas(True);
end;

procedure TfPessoa.BitBtn27Click(Sender: TObject);
begin
  case fdm1.tParametroMODELO_CONTRATO.AsInteger of
    1: ModeloInterno;
    2: ModeloWord;
  end;
end;

procedure TfPessoa.BitBtn28Click(Sender: TObject);
begin
  fCurriculoR := TfCurriculoR.Create(Self);
  fCurriculoR.fDm1 := Fdm1;
  fCurriculoR.RlReport1.PreviewModal;
  FreeAndNil(fCurriculoR);
end;

procedure TfPessoa.ModeloInterno;
var
  IDPessoa: Integer;
  IdCurso: Integer;
begin
  IDPessoa := Fdm1.tPessoaID.AsInteger;
  IdCurso  := fdm1.tPessoa_CursoID.AsInteger;

  Fdm1.tPessoa.Filtered := False;
  Fdm1.tPessoa.Filter   := 'ID = ' + QuotedStr(IntToStr(IDPessoa));
  Fdm1.tPessoa.Filtered := True;
  Fdm1.tPessoa.First;

  Fdm1.tPessoa_Curso.Filtered := False;
  Fdm1.tPessoa_Curso.Filter   := 'ID = ' + QuotedStr(IntToStr(IdCurso));
  Fdm1.tPessoa_Curso.Filtered := True;
  Fdm1.tPessoa_Curso.First;

  fRelPessoasContrato := TfRelPessoasContrato.Create(self);
  fRelPessoasContrato.Dm1 := Fdm1;
  fRelPessoasContrato.RlReport1.Preview;
  FreeAndNil(fRelPessoasContrato);

  Fdm1.tPessoa_Curso.Filtered := False;
  Fdm1.tPessoa_Curso.Filter   := '';
  Fdm1.tPessoa.Filter   := '';
  Fdm1.tPessoa.Filtered := False;
  fdm1.tPessoa.Locate('ID',IDPessoa,[loCaseInsensitive]);
end;

procedure TfPessoa.ModeloWord;
////// declarar ShellApi, ComObj
var
  arquivo, vPasta: String;
  WinWord, Docs, Doc: Variant;
const
  wdFindContinue = 1;
  wdReplaceOne = 1;
  wdReplaceAll = 2;
  wdDoNotSaveChanges = 0;
begin
 // Pega o nome do arquivo...
//  vTipo_Config_Email := 3;
  vPasta  := ExtractFilePath(Application.ExeName) + 'Contratos\';

  arquivo := vPasta + Fdm1.tPessoaNOME.AsString + '_' +
             Fdm1.tPessoaID.AsString + '.docx';

  if not (fileExists(arquivo)) then
  begin
    arquivo := ExtractFilePath(Application.ExeName) + fdm1.tPessoa_CursoARQUIVO_CONTRATO.AsString;
    if not (fileExists(arquivo)) then
    begin
      ShowMessage('Arquivo de modelo ' + arquivo + ' não localizado!');
      Exit;
    end;
  end;

  if not DirectoryExists(ExtractFilePath(Application.ExeName)+ 'Contratos') then
  begin
    ShowMessage('Pasta ' + vPasta + ' deve ser criada!');
    Exit;
  end;

  // Cria objeto principal de controle
  WinWord := CreateOleObject('Word.Application');

  //Não Mostra o Word
  WinWord.Visible := False;

  // Pega uma interface para o objeto que manipula documentos
  Docs := WinWord.Documents;

  // Abre um Documento
  Doc := Docs.Open(arquivo);

  //Substitui texto via "name parameters"
  ValorPorExtenso1.Valor := Fdm1.tPessoa_CursoVLRCURSO.AsFloat;

  //Nome nossa empresa
  Doc.Content.Find.Execute(FindText := '<contrato_num>', ReplaceWith    := Fdm1.tPessoaID.AsString, Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<contratante>',  ReplaceWith    := Fdm1.tPessoaNOME.AsString, Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<contratante_cpf>', ReplaceWith := Fdm1.tPessoaDOCUMENTO.AsString, Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<contratante_rg>', ReplaceWith  := Fdm1.tPessoaRG.AsString, Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<contratante_end>', ReplaceWith := Fdm1.tPessoaENDERECO.AsString + ', ' +
                                                                           Fdm1.tPessoaENDNUMERO.AsString + ', ' +
                                                                           Fdm1.tPessoaENDCOMPLEMENTO.AsString, Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<contratante_bairro>', ReplaceWith := Fdm1.tPessoaBAIRRO.AsString, Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<contratante_cidade>', ReplaceWith := Fdm1.tPessoaCIDADENOME.AsString, Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<contratante_uf>', ReplaceWith  := Fdm1.tPessoaESTADO.AsString, Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<contratante_cep>', ReplaceWith := Fdm1.tPessoaCEP.AsString, Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<nome_pai>', ReplaceWith        := Fdm1.tPessoaNOMEPAI.AsString, Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<nome_mae>', ReplaceWith        := Fdm1.tPessoaNOMEMAE.AsString, Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<preco>', ReplaceWith           := FormatFloat('#,##0.00',Fdm1.tPessoa_CursoVLRCURSO.AsFloat), Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<preco_extenso>', ReplaceWith   := ValorPorExtenso1.Texto, Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<dia_vcto>', ReplaceWith        := Fdm1.tPessoaDIAPAGAMENTO.AsString, Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<dt_ini>', ReplaceWith          := FormatDateTime('dd/mm/yyyy',Fdm1.tPessoa_CursoDTINICIO.AsDateTime), Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<dt_fim>', ReplaceWith          := FormatDateTime('dd/mm/yyyy',Fdm1.tPessoa_CursoDTFINAL.AsDateTime), Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<forma_pgto>', ReplaceWith      := Fdm1.tPessoa_CursoFORMAPGTO.AsString, Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<cond_pgto>', ReplaceWith       := Fdm1.tPessoa_CursoCONDPGTO.AsString, Replace := wdReplaceAll);

//  Doc.Content.Find.Execute(FindText := '<contrato_comarca>', ReplaceWith   := Fdm1.tPessoaCOMARCA.AsString);
  Doc.Content.Find.Execute(FindText := '<contrato_data>', ReplaceWith   := FormatDateTime('dd " de " mmmm " de " yyyy',Date), Replace := wdReplaceAll);

  //Salva doc
  arquivo := vPasta + Fdm1.tPessoaNOME.AsString + '_' +
             Fdm1.tPessoaID.AsString + '.docx';
  Doc.SaveAs(arquivo);

  // Fecha o Word
  WinWord.Quit;

  Sleep(2500);

  if (fileExists(arquivo)) then
    ShellExecute(Handle, nil, Pchar(arquivo), nil, nil, SW_SHOWNORMAL);
end;

procedure TfPessoa.SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  case AnsiIndexStr(Fdm1.tPessoa_CursoSITUACAO.AsString,['AP','DES','REP']) of
    0: AFont.Color := clBlue;
    1: AFont.Color := $004080FF;
    2: AFont.Color := clRed;
  end;
end;

procedure TfPessoa.BitBtn29Click(Sender: TObject);
begin
  fContasReceber := TfContasReceber.Create(Self);
  fContasReceber.vPessoa := fDm1.tPessoaID.AsInteger;
  fContasReceber.ShowModal;
end;

procedure TfPessoa.BitBtn30Click(Sender: TObject);
var
  i: Word;
begin
  Fdm1.cdsPessoaReajuste.Last;
  i := Fdm1.cdsPessoaReajusteITEM.AsInteger;
  inc(i);

  Fdm1.tPessoaVLRPGTO.AsCurrency := JvCurrencyEdit1.Value;

  Fdm1.cdsPessoaReajuste.Insert;
  fDm1.cdsPessoaReajusteID.AsInteger    := fdm1.tPessoaID.AsInteger;
  Fdm1.cdsPessoaReajusteITEM.AsInteger  := i;
  fDm1.cdsPessoaReajusteDATA.AsDateTime := Date;
  fDm1.cdsPessoaReajusteVALOR.AsFloat   := Fdm1.tPessoaVLRPGTO.AsCurrency;
  Fdm1.cdsPessoaReajuste.Post;
  Fdm1.cdsPessoaReajuste.ApplyUpdates(0);

  JvCurrencyEdit1.Clear;
end;

procedure TfPessoa.BitBtn31Click(Sender: TObject);
begin
  if MessageDlg('Deseja desfazer o reajuste mais recente?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
  begin
    fDm1.cdsPessoaReajuste.Last;
    fDm1.tPessoaVLRPGTO.AsCurrency := fdm1.cdsPessoaReajusteVALOR.AsCurrency;
    Fdm1.cdsPessoaReajuste.Delete;
    Fdm1.cdsPessoaReajuste.ApplyUpdates(0);
  end;
end;

end.

