unit uRelNotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uDmRel, Dialogs, RLReport;

type
  TfRelNotas = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    lblMedia: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    Linha: TRLLabel;
    RLLabel4: TRLLabel;
    D1: TRLMemo;
    D2: TRLMemo;
    D3: TRLMemo;
    D4: TRLMemo;
    D5: TRLMemo;
    D6: TRLMemo;
    D7: TRLMemo;
    D8: TRLMemo;
    D9: TRLMemo;
    D10: TRLMemo;
    D11: TRLMemo;
    D12: TRLMemo;
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    esq, lin: Word;
  public
    { Public declarations }
  end;

var
  fRelNotas: TfRelNotas;

implementation

uses uNotasC;

{$R *.dfm}

procedure TfRelNotas.RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
var
  i: Byte;
begin
  RLLabel4.Caption := fNotasC.tPessoaNotaCURSO.AsString + ' - ' + fNotasC.tPessoaNotaTURMA.AsString;
  esq := 0;
  for i := 1 to 12 do
  begin
    if fNotasC.mNotas.FieldByName('D'+ IntToStr(i)).IsNull then
    begin
      esq := esq + 37;
      TRLMemo(FindComponent('D'+IntToStr(i))).Visible := False;
    end
    else
      TRLMemo(FindComponent('D'+IntToStr(i))).Lines.Add(fNotasC.mNotas.FieldByName('D'+IntToStr(i)).AsString);
  end;
  lblMedia.Left  := lblMedia.Left - esq;
  esq := lblMedia.Left;
  RLDBText2.Left := esq;
end;

procedure TfRelNotas.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inc(lin);
  RLDBText2.Left := esq;
  Linha.Caption  := IntToStr(lin);
end;

procedure TfRelNotas.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  lin := 0;
end;

end.
