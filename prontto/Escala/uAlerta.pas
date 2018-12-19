unit uAlerta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, DBXpress, DB, SqlExpr, ExtCtrls,
  FMTBcd, DBClient, Provider, DateUtils, jpeg, JvComponent, JvTrayIcon,
  StdCtrls, Buttons, Menus;

type
  Alerta = class(TThread)
  private
    { Private declarations }
  public
    { Public declarations }
    vCliente, vAgente, vHrIni, vHrFim: String;
  protected
    procedure Mostra;
    procedure Execute; override;
  end;

type
  TfAlerta = class(TForm)
    Timer1: TTimer;
    sdsAvisoEscala: TSQLDataSet;
    sdsAvisoEscalaID: TIntegerField;
    sdsAvisoEscalaCLIENTE_ID: TIntegerField;
    sdsAvisoEscalaDATA: TDateField;
    sdsAvisoEscalaHR_INI: TTimeField;
    sdsAvisoEscalaHR_FIM: TTimeField;
    sdsAvisoEscalaAGENTE_ID: TIntegerField;
    sdsAvisoEscalaHR_QAP: TTimeField;
    sdsAvisoEscalaCLIENTE: TStringField;
    pdsAvisoEscala: TDataSetProvider;
    cdsAvisoEscala: TClientDataSet;
    cdsAvisoEscalaID: TIntegerField;
    cdsAvisoEscalaCLIENTE_ID: TIntegerField;
    cdsAvisoEscalaDATA: TDateField;
    cdsAvisoEscalaHR_INI: TTimeField;
    cdsAvisoEscalaHR_FIM: TTimeField;
    cdsAvisoEscalaAGENTE_ID: TIntegerField;
    cdsAvisoEscalaHR_QAP: TTimeField;
    cdsAvisoEscalaCLIENTE: TStringField;
    dsAvisoEscala: TDataSource;
    Conexao: TSQLConnection;
    sdsAvisoEscalaAGENTE: TStringField;
    cdsAvisoEscalaAGENTE: TStringField;
    Image2: TImage;
    JvTrayIcon1: TJvTrayIcon;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    miFechar: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ConexaoBeforeConnect(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    FSairAplicacao: Boolean;
  public
    { Public declarations }
    vx, vy: Integer;
  end;

var
  fAlerta: TfAlerta;

implementation

uses uEscalaAlerta;

{$R *.dfm}

procedure Alerta.Execute;
begin
  Synchronize(Mostra);
end;

procedure Alerta.Mostra;
begin
  fEscalaAlerta := TfEscalaAlerta.Create(fAlerta);
  fEscalaAlerta.Top  := fAlerta.vy;
  fEscalaAlerta.Left := fAlerta.vx;
  fEscalaAlerta.lblCliente.Caption := vCliente;
  fEscalaAlerta.lblAgente.Caption  := vAgente;
  fEscalaAlerta.lblHrIni.Caption   := vHrIni;
  fEscalaAlerta.lblHrFim.Caption   := vHrFim;
  fEscalaAlerta.Show;
end;

procedure TfAlerta.FormCreate(Sender: TObject);
begin
  JvTrayIcon1.Visibility := [tvVisibleTaskBar, tvVisibleTaskList, tvAutoHide, tvRestoreDbClick];
  jvTrayIcon1.Active     := True;
  jvTrayIcon1.HideApplication;
  Timer1.Enabled := True;
end;

procedure TfAlerta.Timer1Timer(Sender: TObject);
var
  t1: Alerta;
begin
  vx := 0;
  vy := 0;
  cdsAvisoEscala.Close;
  sdsAvisoEscala.ParamByName('D1').AsDate := Date;
  sdsAvisoEscala.ParamByName('H1').AsTime := IncMinute(Frac(Now),5);
  sdsAvisoEscala.ParamByName('H2').AsTime := IncMinute(Frac(Now),6);
  cdsAvisoEscala.Open;
  while not fAlerta.cdsAvisoEscala.Eof do
  begin
    inc(vx,15);
    inc(vy,15);
    t1 := Alerta.Create(True);
    t1.Priority := tpNormal;
    t1.vCliente := cdsAvisoEscalaCLIENTE.AsString;
    t1.vAgente  := cdsAvisoEscalaAGENTE.AsString;
    t1.vHrIni   := cdsAvisoEscalaHR_INI.AsString;
    t1.vHrFim   := cdsAvisoEscalaHR_FIM.AsString;
    t1.Resume;
    fAlerta.cdsAvisoEscala.Next;
  end;
  fAlerta.cdsAvisoEscala.Close;
end;

procedure TfAlerta.ConexaoBeforeConnect(Sender: TObject);
var
  caminho: String;
begin
  caminho := ExtractFilePath(ParamStr(0));
  Conexao.LoadParamsFromIniFile(caminho + 'dbxconnections.ini')
end;

procedure TfAlerta.BitBtn1Click(Sender: TObject);
begin
  FSairAplicacao := (Sender = miFechar);
  Close;
end;

procedure TfAlerta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  jvTrayIcon1.Active := False;
end;

procedure TfAlerta.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := FSairAplicacao;
  if not CanClose then
    jvTrayIcon1.HideApplication;
end;

end.
