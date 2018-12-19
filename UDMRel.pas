unit UDMRel;

interface

uses
  SysUtils, Classes, RLPDFFilter, RLHTMLFilter, RLFilters, RLRichFilter, RLPreviewForm, FMTBcd, DB, SqlExpr,
  RLXLSFilter;

type
  TDmRel = class(TDataModule)
    RLPreviewSetup1: TRLPreviewSetup;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    procedure RLPreviewSetup1Send(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmRel: TDmRel;

implementation

uses SendMailOptions;

{$R *.dfm}

procedure TDmRel.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

end.
