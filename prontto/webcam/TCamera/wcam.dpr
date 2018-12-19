{
  Logiciel: Camera
  Par: MAsterC
  E-Mail: hight_master@hotmail.com
  Site: À venir!
}

program wcam;

uses
  Forms,
  cam in 'cam.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Camera';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
