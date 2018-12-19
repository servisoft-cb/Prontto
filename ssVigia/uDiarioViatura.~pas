unit uDiarioViatura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, uDmDiario,
  Mask, DBCtrls, RxLookup;

type
  TfDiarioViatura = class(TForm)
    Panel1: TPanel;
    btSalvar: TBitBtn;
    btCancelar: TBitBtn;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmDiario: TDmDiario;
  end;

var
  fDiarioViatura: TfDiarioViatura;

implementation

{$R *.dfm}

procedure TfDiarioViatura.btSalvarClick(Sender: TObject);
begin
  fDmDiario.cdsDiarioViatura.Post;
  Close;
end;

procedure TfDiarioViatura.btCancelarClick(Sender: TObject);
begin
  fDmDiario.cdsDiarioViatura.Cancel;
  Close;
end;

procedure TfDiarioViatura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
