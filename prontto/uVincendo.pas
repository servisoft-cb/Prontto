unit uVincendo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, UDm1, Dialogs, StdCtrls, Buttons, Grids, DBGrids,
  SMDBGrid, ExtCtrls, rsDBUtils;

type
  TfVincendo = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Fdm1: Tdm1;
  public
    { Public declarations }
  end;

var
  fVincendo: TfVincendo;

implementation

{$R *.dfm}

procedure TfVincendo.BitBtn1Click(Sender: TObject);
begin
  fdm1.tVincendo.Close;
  fdm1.Vincendo.ParamByName('D1').AsDate := Date;
  case RadioGroup1.ItemIndex of
    0: fdm1.Vincendo.ParamByName('D2').AsDate := Date - 360;
    1: fdm1.Vincendo.ParamByName('D2').AsDate := Date - 355;
    2: fdm1.Vincendo.ParamByName('D2').AsDate := Date - 350;
  end;
  fdm1.tVincendo.Open;
end;

procedure TfVincendo.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,Fdm1);
end;

procedure TfVincendo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
