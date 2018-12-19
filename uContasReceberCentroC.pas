unit uContasReceberCentroC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, JvLookup, StdCtrls, Buttons, Mask,
  ExtCtrls, DBCtrls, uDm1, JvEdit, JvTypedEdit;

type
  TfContasReceberCCusto = class(TForm)
    Panel1: TPanel;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    Label44: TLabel;
    JvDBLookupCombo7: TJvDBLookupCombo;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    JvCurrencyEdit1: TJvCurrencyEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fContasReceberCCusto: TfContasReceberCCusto;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfContasReceberCCusto.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfContasReceberCCusto.BitBtn3Click(Sender: TObject);
begin
  fdm1.tCReceberDiscrim.Cancel;
  Close;
end;

procedure TfContasReceberCCusto.BitBtn5Click(Sender: TObject);
begin
  if fdm1.tCReceberDiscrimVALOR.AsCurrency > JvCurrencyEdit1.Value then
  begin
    ShowMessage('Valor do centro de custo não pode ser maior que o saldo!');
    Exit;
  end;
  fdm1.tCReceberDiscrimNOME.AsString := JvDBLookupCombo7.Text;
  fdm1.tCReceberDiscrim.Post;
  Close;
end;

procedure TfContasReceberCCusto.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
