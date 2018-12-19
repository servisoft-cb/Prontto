unit uDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls,
  uDmDiario, RxLookup, RxDBComb, ToolEdit, RXDBCtrl, Grids, DBGrids, SMDBGrid, RzTabs;

type
  TfDiario = class(TForm)
    Panel1: TPanel;
    btSalvar: TBitBtn;
    btCancelar: TBitBtn;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    TabSheet4: TRzTabSheet;
    TabSheet5: TRzTabSheet;
    TabSheet6: TRzTabSheet;
    TabSheet7: TRzTabSheet;
    TabSheet8: TRzTabSheet;
    Panel3: TPanel;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    SMDBGrid3: TSMDBGrid;
    Panel4: TPanel;
    btInserir: TBitBtn;
    BitBtn2: TBitBtn;
    Panel5: TPanel;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    Panel6: TPanel;
    BitBtn6: TBitBtn;
    BitBtn8: TBitBtn;
    Panel7: TPanel;
    BitBtn9: TBitBtn;
    BitBtn11: TBitBtn;
    Panel8: TPanel;
    BitBtn12: TBitBtn;
    BitBtn14: TBitBtn;
    SMDBGrid4: TSMDBGrid;
    Panel9: TPanel;
    Panel10: TPanel;
    SMDBGrid5: TSMDBGrid;
    SMDBGrid6: TSMDBGrid;
    SMDBGrid7: TSMDBGrid;
    SMDBGrid8: TSMDBGrid;
    SMDBGrid9: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmDiario: TDmDiario;
  end;

var
  fDiario: TfDiario;

implementation

uses rsDBUtils, uDiarioCelular;

{$R *.dfm}

procedure TfDiario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfDiario.btSalvarClick(Sender: TObject);
begin
  fDmDiario.cdsDiario.Post;
  fDmDiario.cdsDiario.ApplyUpdates(0);
end;

procedure TfDiario.btCancelarClick(Sender: TObject);
begin
  fDmDiario.cdsDiario.Cancel;
  Close;
end;

procedure TfDiario.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDmDiario.cdsAgente.IndexFieldNames := 'NOME';
end;

procedure TfDiario.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmDiario);
end;

procedure TfDiario.SMDBGrid2DblClick(Sender: TObject);
begin
  fDiarioCelular := TfDiarioCelular.Create(Self);
  fDiarioCelular.fdmDiario := fDmDiario;
  fDiarioCelular.ShowModal;
end;

procedure TfDiario.SMDBGrid1DblClick(Sender: TObject);
begin
  fDiarioViatura := fDiarioViatura.Create(Self);
  fDiarioViatura.fdmDiario := fDmDiario;
  fDiarioViatura.ShowModal;
end;

end.
