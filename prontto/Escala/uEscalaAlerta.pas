unit uEscalaAlerta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, SqlExpr;

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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure tocaTons;
  public
    { Public declarations }
  end;

var
  fEscalaAlerta: TfEscalaAlerta;

implementation

{$R *.dfm}

procedure TfEscalaAlerta.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfEscalaAlerta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfEscalaAlerta.FormCreate(Sender: TObject);
begin
  tocaTons;
//  sndPlaySound('D:\Fontes\$Servisoft\prontto\Hilo.waw',SND_NODEFAULT Or SND_ASYNC Or SND_LOOP);
end;

procedure TfEscalaAlerta.tocaTons;
begin
  Windows.Beep(1800,100);
  Windows.Beep(1450,100);
  Windows.Beep(1800,100);
  Windows.Beep(1450,250);
  Windows.Beep(1800,100);
  Windows.Beep(1450,100);
  Windows.Beep(1800,100);
  Windows.Beep(1450,250);
{  Windows.Beep(1800,100);
  Windows.Beep(1450,100);
  Windows.Beep(1800,100);
  Windows.Beep(1450,250);
  Windows.Beep(1800,100);
  Windows.Beep(1450,100);
  Windows.Beep(1800,100);
  Windows.Beep(1450,250);}
end;

end.
