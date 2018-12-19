{
  Logiciel: Camera
  Par: MAsterC
  E-Mail: hight_master@hotmail.com
  Site: À venir!
}

unit cam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Camera, PiconeBarreTache, Menus;

type
  TTabImage = Array[0..230399] of byte;

type
  TMainForm = class(TForm)
    Camera1: TCamera;
    PiconeBarreTache1: TPiconeBarreTache;
    BMenu: TPopupMenu;
    FermerlaCamera1: TMenuItem;
    N1: TMenuItem;
    About1: TMenuItem;

    procedure FormCreate(Sender: TObject);
    procedure FermerlaCamera1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
var
  P : ^TTabImage;
begin
  Camera1.Actif:=True;
  New(p);
end;

procedure TMainForm.FermerlaCamera1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMainForm.About1Click(Sender: TObject);
begin
  Beep;
  MessageDlg('Camera'+#13+#13+'Par: MAsterC                                                '+#13+'Version: 1.0'+#13+'Build Date: 06/02/04', mtInformation, [mbOk], 0);
end;

end.
