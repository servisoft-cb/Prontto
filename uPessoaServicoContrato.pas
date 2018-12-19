unit uPessoaServicoContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, uDm1,
  Grids, DBGrids, SMDBGrid, rsDBUtils, DBCtrls;

type
  TfPessoaServicoContrato = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    DBRichEdit1: TDBRichEdit;
    FontDialog1: TFontDialog;
    Button1: TButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    Fdm1: Tdm1;
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fPessoaServicoContrato: TfPessoaServicoContrato;

implementation

uses uEditor;

{$R *.dfm}

procedure TfPessoaServicoContrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tClausula.Close;
  Action := caFree;
end;

procedure TfPessoaServicoContrato.BitBtn1Click(Sender: TObject);
begin
  fdm1.tPessoaServico.ApplyUpdates(0);
  Close;
end;

procedure TfPessoaServicoContrato.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPessoaServicoContrato.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  Fdm1.tClausula.Open;
end;

procedure TfPessoaServicoContrato.BitBtn3Click(Sender: TObject);
var
  vPessoa, vTipoEndereco, vTipoDoc: String;
begin
  if fdm1.tPessoaPESSOA.AsString = 'J' then
  begin
    vPessoa       := ' jurírica, ';
    vTipoEndereco := ' com sede ';
    vTipoDoc      := ' CNPJ ';
  end
  else
  begin
    vPessoa       := ' física, ';
    vTipoEndereco := ' com residência ';
    vTipoDoc      := ' CPF ';
  end;
  fdm1.tPessoaServico.Edit;
  if (fdm1.tPessoaServicoCONTRATO.IsNull) or (fdm1.tPessoaServicoCONTRATO.AsString = '') then
  begin
    dbRichEdit1.SelAttributes.Color  := clBlue;
    dbRichEdit1.SelAttributes.Height := dbRichEdit1.DefAttributes.Height + 2;
    dbRichEdit1.SelAttributes.Style  := [fsBold, fsItalic];
    dbRichEdit1.Paragraph.Alignment := TAlignment(TControl(Sender).Tag);

    DBRichEdit1.Lines.Add('CONTRATO DE PRESTAÇÃO DE SERVIÇO');
    DBRichEdit1.Lines.Add('');
    DBRichEdit1.Lines.Add('');
    DBRichEdit1.Lines.Add('PARTES');
    DBRichEdit1.Lines.Add('Pelo presente instrumento e na melhor forma de direito, ');
    DBRichEdit1.Lines.Add(fdm1.tEmpresaNOME.AsString +
                          ', pessoa jurítica de direito privado, com sede matriz sita à ' + fdm1.tEmpresaENDERECO.AsString + ', ' +
                          fdm1.tEmpresaBAIRRO.AsString + ', ' + fdm1.tEmpresaCIDADE.AsString + ', ' +  fdm1.tEmpresaUF.AsString +
                          ', registrada sob o CNPJ ' + fdm1.tEmpresaDOCUMENTO.AsString + ', doravante denominada CONTRATADA e ');
    DBRichEdit1.Lines.Add(Fdm1.tPessoaNOME.AsString + ', pessoa' + vPessoa + vTipoEndereco + 'sita à ' +
                          Fdm1.tPessoaENDERECO.AsString + ', ' + Fdm1.tPessoaENDNUMERO.AsString + ' - ' + Fdm1.tPessoaENDCOMPLEMENTO.AsString +
                          ', ' + Fdm1.tPessoaBAIRRO.AsString + ', ' + Fdm1.tPessoaCIDADENOME.AsString + ', ' + Fdm1.tPessoaESTADO.AsString +
                          ' registrada sob o ' + vTipoDoc + Fdm1.tPessoaDOCUMENTO.AsString + ', identificado simplesmente como CONTRATANTE, ' +
                          'têm justo e contratados entre si o que segue:');
    DBRichEdit1.Lines.Add('');  


    DBRichEdit1.Lines.Add(Fdm1.tClausulaclTipo.AsString);
    DBRichEdit1.Lines.Add('');
    dbRichEdit1.DefAttributes.Color  := clBlack;
    dbRichEdit1.DefAttributes.Height := dbRichEdit1.DefAttributes.Height - 2;
    dbRichEdit1.DefAttributes.Style  := [];
    DBRichEdit1.Lines.Add(Fdm1.tClausulaDESCRICAO.AsString);
  end
  else
  begin
    DBRichEdit1.Lines.Add('');
    DBRichEdit1.Lines.Add(Fdm1.tClausulaclTipo.AsString);
    DBRichEdit1.Lines.Add('');
    dbRichEdit1.DefAttributes.Color  := clBlack;
    dbRichEdit1.DefAttributes.Height := dbRichEdit1.DefAttributes.Height - 2;
    dbRichEdit1.DefAttributes.Style  := [];
    DBRichEdit1.Lines.Add(Fdm1.tClausulaDESCRICAO.AsString);
  end;
  fdm1.tPessoaServico.Post;
end;

procedure TfPessoaServicoContrato.Button1Click(Sender: TObject);
begin
  fEditor := TfEditor.Create(Self);
  fEditor.Editor.Text := DBRichEdit1.Text;
  fEditor.ShowModal;
end;

procedure TfPessoaServicoContrato.Button2Click(Sender: TObject);
begin
  if (MessageDlg('Deseja realmente limpar o texto do contrato?', mtConfirmation, [mbNo, mbOK], 0) in [mrOk]) then
  begin
    fdm1.tPessoaServico.Edit;
    fdm1.tPessoaServicoCONTRATO.Clear;
    fdm1.tPessoaServico.Post;
  end;
end;

end.
