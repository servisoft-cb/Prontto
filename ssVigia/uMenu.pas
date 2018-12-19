unit uMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Menus, UCBase, UCDBXConn, TDI;

type
  TfMenu = class(TForm)
    UserControl1: TUserControl;
    MainMenu1: TMainMenu;
    Administrao1: TMenuItem;
    Usurios1: TMenuItem;
    Logoff1: TMenuItem;
    Perfis1: TMenuItem;
    AlterarSenha1: TMenuItem;
    Cadastros1: TMenuItem;
    Agentes1: TMenuItem;
    Bairros1: TMenuItem;
    Celulares1: TMenuItem;
    Dirio1: TMenuItem;
    EscalasDirias1: TMenuItem;
    Reclamaes1: TMenuItem;
    Viaturas1: TMenuItem;
    UCDBXConn1: TUCDBXConn;
    procedure Logoff1Click(Sender: TObject);
    procedure Agentes1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Celulares1Click(Sender: TObject);
    procedure Viaturas1Click(Sender: TObject);
    procedure Dirio1Click(Sender: TObject);
  private
    { Private declarations }
    procedure OpenForm(FClass: TFormClass; vEstado: TWindowState);
  public
    { Public declarations }
    FTDI: TTDI;
  end;

var
  fMenu: TfMenu;

implementation

uses DmdDatabase, uAgenteC, uPadrao, uDiarioC, uCelularC, uViaturaC;

{$R *.dfm}

procedure TfMenu.Logoff1Click(Sender: TObject);
begin
  UserControl1.Logoff;
end;

procedure TfMenu.OpenForm(FClass: TFormClass; vEstado: TWindowState);
var
  existe: TForm;
  j: Byte;
begin
  existe := nil;
  for j := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[j] is FClass then
      existe := Screen.Forms[j];
  end;

  if not (existe = nil) then
  begin
    existe.BringToFront;
    existe.SetFocus;
  end
  else
  begin
    Application.CreateForm(FClass,existe);
    existe.FormStyle := fsMDIChild;
    existe.Show;
  end;
  existe.WindowState := vEstado;
end;

procedure TfMenu.Agentes1Click(Sender: TObject);
begin
  OpenForm(TfAgenteC,wsMaximized);
end;

procedure TfMenu.FormCreate(Sender: TObject);
begin
  UserControl1.Execute;
end;

procedure TfMenu.Celulares1Click(Sender: TObject);
begin
  OpenForm(TfCelularC,wsMaximized);
end;

procedure TfMenu.Viaturas1Click(Sender: TObject);
begin
  OpenForm(TfViaturaC,wsMaximized);
end;

procedure TfMenu.Dirio1Click(Sender: TObject);
begin
  OpenForm(TfDiarioC,wsMaximized);
end;

end.
