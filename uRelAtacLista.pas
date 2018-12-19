unit uRelAtacLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, RLRichText, jpeg, uDm1,
  rsDbUtils;

type
  TfRelAtacLista = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLBand3: TRLBand;
    RLImage1: TRLImage;
    RLSystemInfo1: TRLSystemInfo;
    RLMemo1: TRLMemo;
    RLLabel2: TRLLabel;
    RLMemo2: TRLMemo;
    RLLabel3: TRLLabel;
    RLBand4: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    lbOficio: TRLLabel;
    RLLabel9: TRLLabel;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fDm1: TDm1;
  end;

var
  fRelAtacLista: TfRelAtacLista;

implementation

uses uPrevQNC, UDMRel;

{$R *.dfm}

procedure TfRelAtacLista.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo1.Lines.Clear;
  RLMemo1.Lines.AddStrings(fPrevQNC.Memo2.Lines);
end;

procedure TfRelAtacLista.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if not fdm1.tEmpresa.Active then
    fDm1.tEmpresa.Open;

  RLMemo2.Lines.Clear;
  case fPrevQNC.Tag of
    2: RLMemo2.Lines.Add('A ATAC Escola de Aviação Civil, neste ato representada por sua diretora, Gerusa Isabel Mohr Garcia, ' +
                         'brasileira, CPF 011.531.670-18, residente na Av. Pedro Adams Filho, nº 4362, apto 91, Novo Hamburgo, Rio Grande do Sul. ' +
                         'Vem por meio deste informar, que de acordo com as resoluções do RBAC iniciará o curso teórico e prático de ' +
                         'COMISSÁRIO DE VOO, para a turma ' + fPrevQNC.Edit1.Text + ', que terá início em ' + fPrevQNC.tPessoaCursoDTINICIO.AsString +
                         ' e término em ' + fPrevQNC.tPessoaCursoDTFINAL.AsString);
    1: RLMemo2.Lines.Add('Venho por meio deste informar o nome dos alunos aprovados, reprovados e desistentes' +
                         ' do Curso de Comissários de Vôo realizado no período de ' +
                         fPrevQNC.tPessoaCursoDTINICIO.AsString + ' a ' +
                         fPrevQNC.tPessoaCursoDTFINAL.AsString);
  end;
  lbOficio.Caption := fPrevQNC.Edit2.Text;
end;

procedure TfRelAtacLista.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fPrevQNC.tPessoaCursoDTFINAL.AsDateTime > 0 then
    RLLabel2.Caption := FormatDateTime('mm/yyyy',fPrevQNC.tPessoaCursoDTFINAL.AsDateTime)
  else
    RLLabel2.Caption := FormatDateTime('mm/yyyy',fPrevQNC.tPessoaCursoDTINICIO.AsDateTime);
end;

procedure TfRelAtacLista.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
