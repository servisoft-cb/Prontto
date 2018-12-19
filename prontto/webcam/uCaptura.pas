unit uCaptura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, jpeg,
  Dialogs, ExtCtrls, StdCtrls; //tscap32_rt,

type
  TfCaptura = class(TForm)
//    tsCap321: TtsCap32;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure BmpToJpg(FileName: string);
  public
    { Public declarations }
    vNomeArquivo: String;
  end;

var
  fCaptura: TfCaptura;

implementation

{$R *.dfm}

procedure TfCaptura.FormShow(Sender: TObject);
begin
//  tscap321.Connected := True;
end;

procedure TfCaptura.Button1Click(Sender: TObject);
begin
  vNomeArquivo := vNomeArquivo + '.bmp';
//  tsCap321.CapturingNow := True;
//  tsCap321.SaveAsBMP := vNomeArquivo;
  BmpToJpg(vNomeArquivo);
  Close;
end;

procedure TfCaptura.BmpToJpg(FileName: string);
var
  Jpg: TJpegImage;
  Stm: TMemoryStream;
  Bmp: TBitmap;
begin
  if FileExists(FileName) then
  begin
    Bmp := TBitmap.Create;
    Bmp.LoadFromFile(FileName);
    Jpg := TJpegImage.Create;
    Jpg.Assign(Bmp);
    Jpg.Compress;
    Stm := TMemoryStream.Create;
    Jpg.SaveToStream(Stm);
    Stm.Position := 0;
    Stm.SaveToFile(ChangeFileExt(FileName,'.jpg'));
    Stm.Free;
    Jpg.Free;
    Bmp.Free;
  end;
end;

procedure TfCaptura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
