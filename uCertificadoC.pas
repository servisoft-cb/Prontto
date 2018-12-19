unit uCertificadoC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uDm1, Dialogs, StdCtrls, Buttons, ExtCtrls,
  Grids, DBGrids, SMDBGrid, FMTBcd, DB, DBClient, Provider, SqlExpr, JvLookup, ShellApi, ComObj;

type
  TfCertificadoC = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Label2: TLabel;
    Memo1: TMemo;
    Label1: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label6: TLabel;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    vPessoaCurso: TSQLDataSet;
    pPessoaCurso: TDataSetProvider;
    tPessoaCurso: TClientDataSet;
    tPessoaCursoALUNO: TStringField;
    tPessoaCursoCURSO: TStringField;
    dsPessoaCurso: TDataSource;
    tPessoaCursoDTINICIO: TDateField;
    tPessoaCursoDTFINAL: TDateField;
    tPessoaCursoTURMA: TStringField;
    tPessoaCursoPESSOA_ID: TIntegerField;
    tPessoaCursoCARGAHORARIA: TIntegerField;
    BitBtn3: TBitBtn;
    PessoaNota: TSQLDataSet;
    PessoaNotaID: TIntegerField;
    PessoaNotaALUNO: TStringField;
    PessoaNotaCURSO: TStringField;
    PessoaNotaTURMA: TStringField;
    PessoaNotaDISCIPLINA: TStringField;
    PessoaNotaNOTA: TFMTBCDField;
    PessoaNotaSIGLA: TStringField;
    pPessoaNota: TDataSetProvider;
    tPessoaNota: TClientDataSet;
    tPessoaNotaID: TIntegerField;
    tPessoaNotaALUNO: TStringField;
    tPessoaNotaCURSO: TStringField;
    tPessoaNotaTURMA: TStringField;
    tPessoaNotaDISCIPLINA: TStringField;
    tPessoaNotaNOTA: TFMTBCDField;
    tPessoaNotaSIGLA: TStringField;
    dsPessoaNota: TDataSource;
    PessoaNotaCARGA_HORARIA: TStringField;
    tPessoaNotaCARGA_HORARIA: TStringField;
    tPessoaCursoNOMEPAI: TStringField;
    tPessoaCursoNOMEMAE: TStringField;
    tPessoaCursoDTNASCIMENTO: TDateField;
    tPessoaCursoNATUR_CID: TStringField;
    tPessoaCursoNATUR_UF: TStringField;
    tPessoaCursoCURSO_ID: TIntegerField;
    tPessoaCursoMEDIA: TFMTBCDField;
    CheckBox1: TCheckBox;
    qParametros: TSQLQuery;
    qParametrosESCOLA: TStringField;
    tPessoaCursoDOCUMENTO: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure JvDBLookupCombo1Enter(Sender: TObject);
    procedure ModeloWord(vPasta: String);
  private
    { Private declarations }
    fDm1: TDm1;
    ct: String;
  public
    { Public declarations }
  end;

var
  fCertificadoC: TfCertificadoC;

implementation

uses Math, uCertificadoR, rsDBUtils, uCertificadoR2;

{$R *.dfm}

procedure TfCertificadoC.BitBtn1Click(Sender: TObject);
var
  vPasta: String;
begin
  if not fdm1.tParametro.ACtive then
    fdm1.tParametro.Open;
  case fdm1.tParametroESCOLA.AsInteger of
    1: begin
         fCertificadoR := TfCertificadoR.Create(Self);
         fCertificadoR.vImagens := CheckBox1.Checked;
         fCertificadoR.RLReport1.Preview;
         fCertificadoR.RLReport1.Free;
       end;
    2: begin
         vPasta := ExtractFilePath(Application.ExeName) + 'Certificados\';
         if not DirectoryExists(vPasta) then
         begin
           ShowMessage('Pasta ' + vPasta + ' deve ser criada!');
           Exit;
         end;
         while not tPessoaCurso.Eof do
         begin
           ModeloWord(vPasta);
           tPessoaCurso.Next;  
         end;
       end;
  end;
end;

procedure TfCertificadoC.FormCreate(Sender: TObject);
begin
  fDm1 := TDm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDm1);
  fDm1.tCurso.Open;
  ct := vPessoaCurso.CommandText;
end;

procedure TfCertificadoC.BitBtn2Click(Sender: TObject);
begin
  tPessoaCurso.Close;
  vPessoaCurso.CommandText := ct;
  if JvDBLookupCombo1.KeyValue > 0 then
    vPessoaCurso.CommandText := vPessoaCurso.CommandText + ' AND CURSO_ID = ' + JvDBLookupCombo1.Value;
  if Edit1.Text <> '' then
    vPessoaCurso.CommandText := vPessoaCurso.CommandText + ' AND TURMA LIKE ''%' + Edit1.Text + '%''';
  vPessoaCurso.CommandText := vPessoaCurso.CommandText + ' ORDER BY ALUNO';
  tPessoaCurso.Open;

  SMDBGrid1.SelectAllClick(Sender);
end;

procedure TfCertificadoC.BitBtn3Click(Sender: TObject);
begin
  fCertificadoR2 := TfCertificadoR2.Create(Self);
  fCertificadoR2.RLReport1.Preview;
  fCertificadoR2.RLReport1.Free;
end;

procedure TfCertificadoC.JvDBLookupCombo1Enter(Sender: TObject);
begin
  fdm1.tCurso.IndexFieldNames := 'NOME';
end;

procedure TfCertificadoC.ModeloWord(vPasta: String);
////// declarar ShellApi, ComObj
var
  arquivo: String;
  WinWord, Docs, Doc: Variant;
const
  wdFindContinue = 1;
  wdReplaceOne = 1;
  wdReplaceAll = 2;
  wdDoNotSaveChanges = 0;
begin
//  vTipo_Config_Email := 3;

  arquivo := vPasta + Fdm1.tPessoaNOME.AsString + '_' +
             Fdm1.tPessoaID.AsString + '.docx';

  if not (fileExists(arquivo)) then
  begin
    arquivo := ExtractFilePath(Application.ExeName) + 'Certificado.docx';
    if not (fileExists(arquivo)) then
    begin
      ShowMessage('Arquivo de modelo ' + arquivo + ' não localizado!');
      Exit;
    end;
  end;

  // Cria objeto principal de controle
  WinWord := CreateOleObject('Word.Application');

  //Não Mostra o Word
  WinWord.Visible := False;

  // Pega uma interface para o objeto que manipula documentos
  Docs := WinWord.Documents;

  // Abre um Documento
  Doc := Docs.Open(arquivo);

  //Nome nossa empresa
  Doc.Content.Find.Execute(FindText := '<certificado>',  ReplaceWith := tPessoaCursoPESSOA_ID.AsString + '/' +
                                                                        FormatDateTime('yyyy',Fdm1.tPessoa_CursoDTFINAL.AsDateTime), Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<aluno>',  ReplaceWith       := tPessoaCursoALUNO.AsString, Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<cpf>', ReplaceWith          := tPessoaCursoDOCUMENTO.AsString, Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<curso>', ReplaceWith        := tPessoaCursoCURSO.AsString, Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<dt_ini>', ReplaceWith       := FormatDateTime('dd/mm/yyyy',Fdm1.tPessoa_CursoDTINICIO.AsDateTime), Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<dt_fim>', ReplaceWith       := FormatDateTime('dd/mm/yyyy',Fdm1.tPessoa_CursoDTFINAL.AsDateTime), Replace := wdReplaceAll);
  Doc.Content.Find.Execute(FindText := '<carga_hora>', ReplaceWith   := tPessoaCursoCARGAHORARIA.AsString, Replace := wdReplaceAll);

  //Salva doc
  arquivo := vPasta + tPessoaCursoALUNO.AsString + '_' + tPessoaCursoPESSOA_ID.AsString + '.docx';
  Doc.SaveAs(arquivo);

  // Fecha o Word
  WinWord.Quit;

  Sleep(2500);

  if (fileExists(arquivo)) then
    ShellExecute(Handle, nil, Pchar(arquivo), nil, nil, SW_SHOWNORMAL);
end;

end.
