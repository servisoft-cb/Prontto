unit URelPessoas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDm1, rsDBUtils, jpeg, uDmRel;

type
  TfRelPessoas = class(TForm)
    RLReport1: TRLReport;
    RLBand6: TRLBand;
    RLDraw23: TRLDraw;
    RLDBText20: TRLDBText;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    RLLabel34: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLDraw24: TRLDraw;
    RLLabel47: TRLLabel;
    RLLabel49: TRLLabel;
    RLDraw26: TRLDraw;
    RLLabel50: TRLLabel;
    RLDraw27: TRLDraw;
    RLLabel51: TRLLabel;
    RLDraw29: TRLDraw;
    RLLabel53: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    End1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLReport2: TRLReport;
    RLReport3: TRLReport;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLSubDetail3: TRLSubDetail;
    RLBand4: TRLBand;
    RLDBText9: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    Endereco: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText10: TRLDBText;
    RLImage1: TRLImage;
    RLLabel8: TRLLabel;
    RLDBText19: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel9: TRLLabel;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure End1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDmRel: TDmRel;
  public
    { Public declarations }
    fDm1: Tdm1;
    vImpSelecionados: Boolean;
  end;

var
  fRelPessoas: TfRelPessoas;

implementation

uses uPrevQNC;

{$R *.dfm}

procedure TfRelPessoas.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel4.Caption := 'Relação de Alunos - Curso de ' + fPrevQNC.tPessoaCursoCURSO.AsString +
                      ' Turma: ' + fPrevQNC.tPessoaCursoTURMA.AsString;
end;

procedure TfRelPessoas.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Endereco.Caption := fdm1.tPessoaENDERECO.AsString + ', ' + fdm1.tPessoaENDNUMERO.AsString +
                      ' - ' + fdm1.tPessoaENDCOMPLEMENTO.AsString;

  if Fdm1.tEmpresaLOGOEMPRESA.AsString <> '' then
    if FileExists(Fdm1.tEmpresaLOGOEMPRESA.AsString) then
      RLImage1.Picture.LoadFromFile(Fdm1.tEmpresaLOGOEMPRESA.AsString)
    else
      ShowMessage('Arquivo ' + Fdm1.tEmpresaLOGOEMPRESA.AsString + ' não localizado!');
end;

procedure TfRelPessoas.RLReport2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  if not fdm1.tEmpresa.Active then
    fdm1.tEmpresa.Open;
  if not fdm1.tCidade.Active then
    fdm1.tCidade.Open;
end;

procedure TfRelPessoas.End1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  End1.Caption := fdm1.cdsPessoaConsENDERECO.AsString + ', ' + fdm1.cdsPessoaConsENDNUMERO.AsString +
                  ' - ' + fdm1.cdsPessoaConsENDCOMPLEMENTO.AsString;
end;

procedure TfRelPessoas.FormCreate(Sender: TObject);
begin
  fDmRel := TDmRel.Create(Self);
end;

procedure TfRelPessoas.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := True;
  if (vImpSelecionados) then
  begin
    if not fPrevQNC.SMDBGrid1.SelectedRows.CurrentRowSelected then
      PrintIt := False;
  end;
end;

procedure TfRelPessoas.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfRelPessoas.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
