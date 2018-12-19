unit uCertificadoR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, uDm1, RLRichText, uDmRel;

type
  TfCertificadoR = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    LBLData: TRLLabel;
    RLCertificado: TRLLabel;
    RLImage1: TRLImage;
    RLImage2: TRLImage;
    RLImage3: TRLImage;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    vImagens: Boolean;
  end;

var
  fCertificadoR: TfCertificadoR;
  
implementation

uses uCertificadoC;

{$R *.dfm}

procedure TfCertificadoR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfCertificadoR.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vDe: String;
begin
  RLMemo2.Lines.Clear;
  fCertificadoC.Memo1.Lines.Text;
  RLMemo2.Lines.Text := fCertificadoC.Memo1.Lines.Text;
  vDe := ' de ';
  LBLData.Caption    := 'Novo Hamburgo, ' + FormatDateTime('dd " de " mmmm " de " yyyy',Date);

  ////imagens
  RLDraw1.Visible := vImagens;
  RLDraw2.Visible := vImagens;
  RLImage1.Visible := vImagens;
  RLImage2.Visible := vImagens;
  RLImage3.Visible := vImagens;
end;

procedure TfCertificadoR.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := fCertificadoC.SMDBGrid1.SelectedRows.CurrentRowSelected;

  RLMemo1.Lines.Clear;
  RLMemo1.Lines.Add('Conferimos o Certificado a ' + fCertificadoC.tPessoaCursoALUNO.AsString +
                    ', por ter concluído o curso de ' + fCertificadoC.tPessoaCursoCURSO.AsString +
                    ', com duração ' +  fCertificadoC.tPessoaCursoCARGAHORARIA.AsString + ' horas/aula, ' +
                    'realizado no período de ' + FormatDateTime('dd/mm/yyyy',fCertificadoC.tPessoaCursoDTINICIO.AsDateTime) +
                    ' a ' + FormatDateTime('dd/mm/yyyy',fCertificadoC.tPessoaCursoDTFINAL.AsDateTime));
  RLCertificado.Caption := 'CERTIFICADO Nº ' + fCertificadoC.tPessoaCursoPESSOA_ID.AsString;
end;

end.
