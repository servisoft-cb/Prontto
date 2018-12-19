unit uEscalaDiaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, DBCtrls, Mask, JvToolEdit,
  JvDBCtrl, Grids, DBGrids, SMDBGrid, ExtCtrls, rsDBUtils, uDm1, uDmEscala;

type
  TfEscalaDiaria = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    Fdm1: Tdm1;
    fDmEscala: TDmEscala;
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
    property dmEscala: TdmEscala read fdmEscala write fdmEscala;
  end;

var
  fEscalaDiaria: TfEscalaDiaria;

implementation

{$R *.dfm}

procedure TfEscalaDiaria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfEscalaDiaria.FormShow(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.SetDataSourceProperties(Self,fDmEscala);
  oDBUtils.SetDataSourceProperties(Self,fDm1);

  Height := Screen.Height - 35;
  Top    := 0;
  Left   := (Screen.Width - Width) div 2;
end;

procedure TfEscalaDiaria.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

procedure TfEscalaDiaria.BitBtn1Click(Sender: TObject);
begin
  fDmEscala.cdsEscalaDiaria.ApplyUpdates(0);
  Close;
end;

procedure TfEscalaDiaria.BitBtn2Click(Sender: TObject);
begin
  fDmEscala.cdsEscalaDiaria.Cancel;
  Close;
end;

end.
