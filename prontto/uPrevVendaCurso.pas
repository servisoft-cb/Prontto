unit uPrevVendaCurso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, JvToolEdit,
  Mask, JvLookup, Buttons, Grids, DBGrids, SMDBGrid, UDmCons, DateUtils;

type
  TfPrevVendaCurso = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    JvDBLookupCombo4: TJvDBLookupCombo;
    JvDateEdit1: TJvDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    JvDateEdit2: TJvDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    procedure JvDBLookupCombo4Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmCons: TDmCons;
  end;

var
  fPrevVendaCurso: TfPrevVendaCurso;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfPrevVendaCurso.JvDBLookupCombo4Enter(Sender: TObject);
begin
  fDmCons.cdsVendedor.IndexFieldNames := 'NOME';
end;

procedure TfPrevVendaCurso.FormShow(Sender: TObject);
var
  vData: TDateTime;
begin
  fDmCons := TDmCons.Create(Self);

  oDBUtils.SetDataSourceProperties(Self,fDmCons);
  oDBUtils.OpenTables(True,Self);

  vData := EncodeDate(YearOf(Date),MonthOf(Date),01);
  JvDateEdit1.Date := vData;
  JvDateEdit2.Date := Date;
end;

procedure TfPrevVendaCurso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfPrevVendaCurso.BitBtn1Click(Sender: TObject);
begin
  if JvDBLookupCombo4.Text = '' then
  begin
    ShowMessage('Vendedor deve ser selecionado!');
    Exit;
  end;
  
  fDmCons.cdsVendaCurso.Close;
  fDmCons.sdsVendaCurso.ParamByName('V1').AsInteger := JvDBLookupCombo4.KeyValue;
  if JvDateEdit1.Date > 0 then
    fDmCons.sdsVendaCurso.ParamByName('D1').AsDate := JvDateEdit1.Date;
  if JvDateEdit2.Date > 0 then
    fDmCons.sdsVendaCurso.ParamByName('D2').AsDate := JvDateEdit2.Date;
  fDmCons.cdsVendaCurso.Open;
end;

procedure TfPrevVendaCurso.BitBtn2Click(Sender: TObject);
var
  vArq: String;
begin
  vArq := 'RelVendas.fr3';
  if FileExists(vArq) then
  begin
    fDmCons.frxReport1.LoadFromFile(vArq);
    fDmCons.frxReport1.ShowReport;
  end;
end;

end.
