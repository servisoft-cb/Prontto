unit uSobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, StdCtrls, ExtCtrls, JvComponent, JvFileInfo, jpeg, DB,
  Buttons, FMTBcd, DBClient, Provider, SqlExpr, UDm1, rsDBUtils ;

type
  TfSobre = class(TForm)
    JvFileInfo1: TJvFileInfo;
    Label2: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Image2: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
  public
    { Public declarations }
  end;

var
  fSobre: TfSobre;

implementation

{$R *.dfm}

procedure TfSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfSobre.FormCreate(Sender: TObject);
{const
  InfoNum = 10;
  InfoStr: array[1..InfoNum] of string = ('CompanyName', 'FileDescription', 'FileVersion',
                                          'InternalName', 'LegalCopyright', 'LegalTradeMarks',
                                          'OriginalFileName', 'ProductName', 'ProductVersion', 'Comments');
var
  S: string;
  n, Len, i: DWORD;
  Buf: PChar;
  Value: PChar;}
begin
  Fdm1 := TDm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

{  S := Application.ExeName;
  JvFileInfo1.Filename := S;
  n := GetFileVersionInfoSize(PChar(S),n);
  if n > 0 then
  begin
    Buf := AllocMem(n);
    Memo1.Lines.Add('VersionInfoSize = ' + IntToStr(n));
    GetFileVersionInfo(PChar(S),0,n,Buf);
    for i := 1 to InfoNum do
      if VerQueryValue(Buf, PChar('StringFileInfo\040904E4\' + InfoStr[i]), Pointer(Value), Len) then
        Memo1.Lines.Add(InfoStr[i] + ' = ' + Value);
    FreeMem(Buf,n);
  end
  else
    Memo1.Lines.Add('Informação de versão não encontrada!');}
end;

procedure TfSobre.BitBtn1Click(Sender: TObject);
begin
  //Parcela do contas a pagar
end;

procedure TfSobre.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    BitBtn1.Enabled := not BitBtn1.Enabled;
end;

procedure TfSobre.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
