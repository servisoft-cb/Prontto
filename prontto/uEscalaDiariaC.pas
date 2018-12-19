unit uEscalaDiariaC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, rsDBUtils, Dialogs, StdCtrls, Buttons, ExtCtrls, uDm1,
  uDmEscala, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids,
  SMDBGrid, Mask, JvToolEdit, JvDBCtrl;

type
  TfEscalaDiariaC = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    sdsEscalaDiaria: TSQLDataSet;
    dspEscalaDiaria: TDataSetProvider;
    cdsEscalaDiaria: TClientDataSet;
    dsEscalaDiaria: TDataSource;
    sdsEscalaDiariaDATA: TDateField;
    cdsEscalaDiariaDATA: TDateField;
    dsPessoaServico: TDataSource;
    cdsPessoaServico: TClientDataSet;
    cdsPessoaServicoID: TIntegerField;
    cdsPessoaServicoNOME: TStringField;
    cdsPessoaServicoPORTARIA: TStringField;
    dspPessoaServico: TDataSetProvider;
    sdsPessoaServico: TSQLDataSet;
    sdsPessoaServicoID: TIntegerField;
    sdsPessoaServicoNOME: TStringField;
    sdsPessoaServicoABERTURA: TStringField;
    cdsPessoaServicoABERTURA: TStringField;
    sdsPessoaServicoSEG_HR_INI: TTimeField;
    sdsPessoaServicoSEG_HR_FIM: TTimeField;
    sdsPessoaServicoTER_HR_INI: TTimeField;
    sdsPessoaServicoTER_HR_FIM: TTimeField;
    sdsPessoaServicoQUA_HR_INI: TTimeField;
    sdsPessoaServicoQUA_HR_FIM: TTimeField;
    sdsPessoaServicoQUI_HR_INI: TTimeField;
    sdsPessoaServicoQUI_HR_FIM: TTimeField;
    sdsPessoaServicoSEX_HR_INI: TTimeField;
    sdsPessoaServicoSEX_HR_FIM: TTimeField;
    sdsPessoaServicoSAB_HR_INI: TTimeField;
    sdsPessoaServicoSAB_HR_FIM: TTimeField;
    sdsPessoaServicoDOM_HR_INI: TTimeField;
    sdsPessoaServicoDOM_HR_FIM: TTimeField;
    sdsPessoaServicoPORTARIA: TStringField;
    cdsPessoaServicoSEG_HR_INI: TTimeField;
    cdsPessoaServicoSEG_HR_FIM: TTimeField;
    cdsPessoaServicoTER_HR_INI: TTimeField;
    cdsPessoaServicoTER_HR_FIM: TTimeField;
    cdsPessoaServicoQUA_HR_INI: TTimeField;
    cdsPessoaServicoQUA_HR_FIM: TTimeField;
    cdsPessoaServicoQUI_HR_INI: TTimeField;
    cdsPessoaServicoQUI_HR_FIM: TTimeField;
    cdsPessoaServicoSEX_HR_INI: TTimeField;
    cdsPessoaServicoSEX_HR_FIM: TTimeField;
    cdsPessoaServicoSAB_HR_INI: TTimeField;
    cdsPessoaServicoSAB_HR_FIM: TTimeField;
    cdsPessoaServicoDOM_HR_INI: TTimeField;
    cdsPessoaServicoDOM_HR_FIM: TTimeField;
    JvDateEdit1: TJvDateEdit;
    BitBtn2: TBitBtn;
    SQLDataSet1: TSQLDataSet;
    SQLQuery1: TSQLQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
    fDmEscala: TDmEscala;
  public
    { Public declarations }
  end;

var
  fEscalaDiariaC: TfEscalaDiariaC;

implementation

uses uEscalaDiaria, DateUtils;

{$R *.dfm}

procedure TfEscalaDiariaC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfEscalaDiariaC.BitBtn1Click(Sender: TObject);
begin
  if JvDateEdit1.Date < StrToDate('20/06/2012') then
  begin
    ShowMessage('Data inválida!');
    Exit;
  end;
  fEscalaDiaria := TfEscalaDiaria.Create(Self);
  fEscalaDiaria.Dm1      := Fdm1;
  fEscalaDiaria.dmEscala := fDmEscala;

  cdsPessoaServico.Close;
  cdsPessoaServico.Filtered := False;
  cdsPessoaServico.Filter   := 'ABERTURA = ''1'' OR PORTARIA = ''1''';
  cdsPessoaServico.Filtered := True;
  cdsPessoaServico.Open;
  while not cdsPessoaServico.Eof do
  begin
    case DayOfWeek(JvDateEdit1.Date) of
      1: if cdsPessoaServicoDOM_HR_INI.IsNull then
         begin
           cdsPessoaServico.Next;
           Continue;
         end;
      2: if cdsPessoaServicoSEG_HR_INI.IsNull then
         begin
           cdsPessoaServico.Next;
           Continue;
         end;
      3: if cdsPessoaServicoTER_HR_INI.IsNull then
         begin
           cdsPessoaServico.Next;
           Continue;
         end;
      4: if cdsPessoaServicoQUA_HR_INI.IsNull then
         begin
           cdsPessoaServico.Next;
           Continue;
         end;
      5: if cdsPessoaServicoQUI_HR_INI.IsNull then
         begin
           cdsPessoaServico.Next;
           Continue;
         end;
      6: if cdsPessoaServicoSEX_HR_INI.IsNull then
         begin
           cdsPessoaServico.Next;
           Continue;
         end;
      7: if cdsPessoaServicoSAB_HR_INI.IsNull then
         begin
           cdsPessoaServico.Next;
           Continue;
         end;
    end;
//    fDmEscala.cdsEscalaDiaria.IndexFieldNames := 'DATA;CLIENTE_ID;HR_INI';
//    if fDmEscala.cdsEscalaDiaria.FindKey([JvDateEdit1.Date,cdsPessoaServicoID.AsInteger,cdsPessoaServico])
    fDmEscala.cdsEscalaDiaria.Insert;
    fDmEscala.cdsEscalaDiariaDATA.AsDateTime      := JvDateEdit1.Date;
    fDmEscala.cdsEscalaDiariaID.AsInteger         := Fdm1.Incrementa('ID','ESCALA_DIARIA');
    fDmEscala.cdsEscalaDiariaCLIENTE_ID.AsInteger := cdsPessoaServicoID.AsInteger;
    fDmEscala.cdsEscalaDiariaCLIENTE.AsString     := cdsPessoaServicoNOME.AsString;
    case DayOfWeek(JvDateEdit1.Date) of
      1: begin
          fDmEscala.cdsEscalaDiariaHR_INI.AsDateTime := cdsPessoaServicoDOM_HR_INI.AsDateTime;
          fDmEscala.cdsEscalaDiariaHR_FIM.AsDateTime := cdsPessoaServicoDOM_HR_FIM.AsDateTime;
         end;
      2: begin
          fDmEscala.cdsEscalaDiariaHR_INI.AsDateTime := cdsPessoaServicoSEG_HR_INI.AsDateTime;
          fDmEscala.cdsEscalaDiariaHR_FIM.AsDateTime := cdsPessoaServicoSEG_HR_FIM.AsDateTime;
         end;
      3: begin
          fDmEscala.cdsEscalaDiariaHR_INI.AsDateTime := cdsPessoaServicoTER_HR_INI.AsDateTime;
          fDmEscala.cdsEscalaDiariaHR_FIM.AsDateTime := cdsPessoaServicoTER_HR_FIM.AsDateTime;
         end;
      4: begin
          fDmEscala.cdsEscalaDiariaHR_INI.AsDateTime := cdsPessoaServicoQUA_HR_INI.AsDateTime;
          fDmEscala.cdsEscalaDiariaHR_FIM.AsDateTime := cdsPessoaServicoQUA_HR_FIM.AsDateTime;
         end;
      5: begin
          fDmEscala.cdsEscalaDiariaHR_INI.AsDateTime := cdsPessoaServicoQUI_HR_INI.AsDateTime;
          fDmEscala.cdsEscalaDiariaHR_FIM.AsDateTime := cdsPessoaServicoQUI_HR_FIM.AsDateTime;
         end;
      6: begin
          fDmEscala.cdsEscalaDiariaHR_INI.AsDateTime := cdsPessoaServicoSEX_HR_INI.AsDateTime;
          fDmEscala.cdsEscalaDiariaHR_FIM.AsDateTime := cdsPessoaServicoSEX_HR_FIM.AsDateTime;
         end;
      7: begin
          fDmEscala.cdsEscalaDiariaHR_INI.AsDateTime := cdsPessoaServicoSAB_HR_INI.AsDateTime;
          fDmEscala.cdsEscalaDiariaHR_FIM.AsDateTime := cdsPessoaServicoSAB_HR_FIM.AsDateTime;
         end;
    end;
    fDmEscala.cdsEscalaDiaria.Post;
    fDmEscala.cdsEscalaDiaria.ApplyUpdates(0);

    cdsPessoaServico.Next;
  end;
  cdsPessoaServico.Close;
  cdsPessoaServico.Filtered := False;
  cdsPessoaServico.Filter   := '';

  fDmEscala.cdsEscalaDiaria.Filter   := 'DATA = ''' + FormatDateTime('DD/MM/YYYY',fDmEscala.cdsEscalaDiariaDATA.AsDateTime) + '''';
  fDmEscala.cdsEscalaDiaria.Filtered := True;
  fDmEscala.cdsEscalaDiaria.IndexFieldNames := 'HR_INI';

  fEscalaDiaria.ShowModal;
  JvDateEdit1.Clear;
  fDmEscala.cdsEscalaDiaria.Filter   := '';
  fDmEscala.cdsEscalaDiaria.Filtered := False;
  fDmEscala.cdsEscalaDiaria.Close;
  fDmEscala.cdsEscalaDiaria.Open;

  cdsEscalaDiaria.Close;
  cdsEscalaDiaria.Open;
end;

procedure TfEscalaDiariaC.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  fDmEscala := TDmEscala.Create(Self);
  fDmEscala.cdsEscalaDiaria.Open;
  cdsEscalaDiaria.Open;

  Height := Screen.Height - 70;
  Top    := (Screen.Height - Height) div 2;
  Left   := (Screen.Width - Width) div 2;
end;

procedure TfEscalaDiariaC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
  FreeAndNil(fDmEscala);
end;

procedure TfEscalaDiariaC.SMDBGrid1DblClick(Sender: TObject);
begin
  fDmEscala.cdsEscalaDiaria.Filter   := 'DATA = ''' + FormatDateTime('DD/MM/YYYY',cdsEscalaDiariaDATA.AsDateTime) + '''';
  fDmEscala.cdsEscalaDiaria.Filtered := True;
  fDmEscala.cdsEscalaDiaria.IndexFieldNames := 'HR_INI';
  fEscalaDiaria := TfEscalaDiaria.Create(Self);
  fEscalaDiaria.Dm1      := Fdm1;
  fEscalaDiaria.dmEscala := fDmEscala;
  fEscalaDiaria.ShowModal;
  fDmEscala.cdsEscalaDiaria.Filter   := '';
  fDmEscala.cdsEscalaDiaria.Filtered := False;
  fDmEscala.cdsEscalaDiaria.Close;
  fDmEscala.cdsEscalaDiaria.Open;
end;

procedure TfEscalaDiariaC.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DayOfWeek(cdsEscalaDiariaDATA.AsDateTime) = 1 then
  begin
    AFont.Color := clWhite;
    BackGround  := clRed;
  end;
end;

procedure TfEscalaDiariaC.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja exlcuir esta escala?',mtConfirmation,[mbOk],0) = mrOk then
  begin
    SQLQuery1.ParamByName('D1').AsDate := cdsEscalaDiariaDATA.AsDateTime;
    SQLQuery1.ExecSQL;
    cdsEscalaDiaria.Close;
    cdsEscalaDiaria.Open;
  end;
end;

end.
