unit uDiarioCelular;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, uDmDiario,
  Mask, DBCtrls;

type
  TfDiarioCelular = class(TForm)
    Panel1: TPanel;
    btSalvar: TBitBtn;
    btCancelar: TBitBtn;
    Label1: TLabel;
    DBEdit3: TDBEdit;
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
  fDiarioCelular: TfDiarioCelular;

implementation

{$R *.dfm}

procedure TfDiarioCelular.btSalvarClick(Sender: TObject);
begin
  fDmDiario.cdsDiarioCelular.Post;
  Close;
end;

procedure TfDiarioCelular.btCancelarClick(Sender: TObject);
begin
  fDmDiario.cdsDiarioCelular.Cancel;
  Close;
end;

procedure TfDiarioCelular.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
