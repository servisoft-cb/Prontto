unit uDiarioCelular;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, JvLookup, StdCtrls, Mask, DBCtrls, Buttons,
  ExtCtrls, uDmDiario, FMTBcd, DB, SqlExpr, rsDBUtils;

type
  TfDiarioCelular = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    BitBtn3: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    fDmDiario: TDmDiario;
  public
    { Public declarations }
    property DmDiario: TDmDiario read fDmDiario write fDmDiario;
  end;

var
  fDiarioCelular: TfDiarioCelular;

implementation
              
{$R *.dfm}

procedure TfDiarioCelular.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfDiarioCelular.BitBtn2Click(Sender: TObject);
begin
  fDmDiario.cdsDiarioCelular.Cancel;
  Close;
end;

procedure TfDiarioCelular.BitBtn1Click(Sender: TObject);
begin
  if fDmDiario.cdsDiario.ReadOnly then
  begin
    ShowMessage('Diário revisado não pode ser alterado!');
    BitBtn2.Click;
    Exit;
  end;
  fDmDiario.cdsDiarioCelular.Post;
  Close;
end;

procedure TfDiarioCelular.FormCreate(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
end;

procedure TfDiarioCelular.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmDiario);
end;

procedure TfDiarioCelular.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if fDmDiario.cdsDiarioCelular.State in [dsInsert,dsEdit] then
    BitBtn2.Click;
end;

end.
