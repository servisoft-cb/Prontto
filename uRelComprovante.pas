unit uRelComprovante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uDm1, uDmRel, Dialogs, RLReport, rsDBUtils,
  jpeg;

type
  TfRelComprovante = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLBand4: TRLBand;
    RLLabel9: TRLLabel;
    Data: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLMemo1: TRLMemo;
    RLLabel1: TRLLabel;
    RLBand6: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText15: TRLDBText;
    RLImage2: TRLImage;
    Endereco2: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText14: TRLDBText;
    RLImage1: TRLImage;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLSubDetail1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    Fdm1: Tdm1;
    procedure SetDM1(const Value: Tdm1);
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write SetDM1;
  end;

var
  fRelComprovante: TfRelComprovante;

implementation

uses UPessoa;

{$R *.dfm}

procedure TfRelComprovante.SetDM1(const Value: Tdm1);
begin
  Fdm1 := Value;
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfRelComprovante.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//  RLImage1.Picture.LoadFromFile(fdm1.tEmpresaLOGOEMPRESA.AsString);
//  RLImage1.Stretch := dm1.tEmpresaSTRETCH.AsBoolean;
  Endereco2.Caption := Fdm1.tEmpresaENDERECO.AsString + ' - ' +
                       Fdm1.tEmpresaCIDADE.AsString + ' - ' +
                       Fdm1.tEmpresaUF.AsString + ' CEP: ' +
                       Fdm1.tEmpresaCEP.AsString + ' Fone: ' +
                       Fdm1.tEmpresaFONE.AsString;

end;

procedure TfRelComprovante.RLSubDetail1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  texto: String;
begin
  PrintIt := fPessoa.SMDBGrid2.SelectedRows.CurrentRowSelected;
  if printIt then
  begin
    texto := 'Declaro para os devidos fins que ' + fDm1.tPessoaNome.AsString +
             ', portador da cédula de identidade nº ' +
             fdm1.tPessoaRG.AsString + ', concluiu com aproveitamento o curso de ' +
             fdm1.tPessoa_CursoNome.AsString + ', realizado neste Centro de Formação de Vigilantes no período de: ' +
             FormatDateTime('DD' + '" de "' + 'mmmm',Fdm1.tPessoa_CursoDTINICIO.AsDateTime) + ' a ' +
             FormatDateTime('DD' + '" de "' + 'mmmm' + '" de "' + 'YYYY',Fdm1.tPessoa_CursoDTFINAL.AsDateTime) +
             ' com uma carga horária de ' + Fdm1.tPessoa_CursoCARGAHORARIA.AsString;
    RLMemo1.Lines.Clear;
    RLMemo1.Lines.Add(texto);
  end;
end;

procedure TfRelComprovante.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Data.Caption := 'CAMPO BOM, ' + FormatDateTime('DD' + '" de "' + 'mmmm' + '" de "' + 'YYYY',Date);
end;

procedure TfRelComprovante.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLImage1.Visible := False;
  RLImage2.Visible := False;
  case Fdm1.tParametroESCOLA.AsInteger of
    1: RLImage2.Visible := True;
    2: RLImage1.Visible := True;
  end;
end;

end.
