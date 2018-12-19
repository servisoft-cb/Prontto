unit uCelular;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB, Dialogs, StdCtrls, Mask, DBCtrls, Buttons, UDm1,
  rsDBUtils, ExtCtrls;

type
  TfCelular = class(TForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    DBText1: TDBText;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fCelular: TfCelular;

implementation

{$R *.dfm}

procedure TfCelular.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tCelular.Cancel;
  Close;
end;

procedure TfCelular.BitBtn1Click(Sender: TObject);
begin
  if Fdm1.tCelularOPERADORA.IsNull then
  begin
    ShowMessage('Operadora deve ser preenchida!');
    Exit;
  end;
  if Fdm1.tCelularNUMERO.IsNull then
  begin
    ShowMessage('Número deve ser preenchido!');
    Exit;
  end;
  if Fdm1.tCelular.State in [dsInsert] then
    Fdm1.tCelularID.AsInteger := Fdm1.Incrementa('ID','CELULAR');
  Fdm1.tCelular.Post;
  Fdm1.tCelular.ApplyUpdates(0);
  Close;
end;

procedure TfCelular.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tCelular.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tCelular.State in [dsBrowse] then
                CanClose := True;
            end;
      mrNo: begin
              BitBtn2.Click;
              CanClose := true;
            end;
    end;
  end
  else
    CanClose := True;
end;

procedure TfCelular.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
