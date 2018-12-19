unit uEscalaAlerta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, uDmDiario, DBCtrls, rsDBUtils,
  MMSystem, Grids, DBGrids, SMDBGrid;

type
  TfEscalaAlerta = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    lblAgente: TLabel;
    lblCliente: TLabel;
    lblHrIni: TLabel;
    lblHrFim: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    fDmDiario: TDmDiario;
  public
    { Public declarations }
    property dmDiario: TDmDiario read fDmDiario write fDmDiario;
  end;

var
  fEscalaAlerta: TfEscalaAlerta;

implementation

uses UMenu;

{$R *.dfm}

procedure TfEscalaAlerta.BitBtn1Click(Sender: TObject);
begin
  fMenu.posic := 0;
  Close;
end;

procedure TfEscalaAlerta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfEscalaAlerta.FormShow(Sender: TObject);
begin
  SetWindowPos(Handle,HWND_TOPMOST,Left,Top,Width,Height,SWP_NOACTIVATE);
  oDBUtils.SetDataSourceProperties(Self,fDmDiario);
end;

procedure TfEscalaAlerta.FormCreate(Sender: TObject);
begin
  Windows.Beep(1800,100);
  Windows.Beep(1450,100);
  Windows.Beep(1800,100);
  Windows.Beep(1450,250);
  Windows.Beep(1800,100);
  Windows.Beep(1450,100);
  Windows.Beep(1800,100);
  Windows.Beep(1450,250);
//  sndPlaySound('D:\Fontes\$Servisoft\prontto\Hilo.waw',SND_NODEFAULT Or SND_ASYNC Or SND_LOOP);
end;

end.
