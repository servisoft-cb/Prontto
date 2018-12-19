program Escala;

uses
  Forms, Windows,
  uAlerta in 'uAlerta.pas' {fAlerta},
  uEscalaAlerta in 'uEscalaAlerta.pas' {fEscalaAlerta};

{$R *.res}

var
  hWnd: THandle;
begin
  hWnd := FindWindow('TfAlerta','fAlerta');
  if hWnd = 0 then
  begin
    Application.Initialize;
    Application.CreateForm(TfAlerta, fAlerta);
    Application.Run;
  end
  else
    SetForegroundWindow(hWnd);
end.
