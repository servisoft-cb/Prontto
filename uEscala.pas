unit uEscala;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, JvDBComb, UDm1, rsDBUtils;

type
  TfEscala = class(TForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
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
  fEscala: TfEscala;

implementation


{$R *.dfm}

procedure TfEscala.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tEscala.Cancel;
  Close;
end;

procedure TfEscala.BitBtn1Click(Sender: TObject);
begin
  if Fdm1.tEscalaNOME.IsNull then
  begin
    ShowMessage('Nome deve ser preenchido!');
    Exit;
  end;
  if Fdm1.tEscalaQTD_HORAS.IsNull then
  begin
    ShowMessage('Quantidade de horas deve ser preenchida!');
    Exit;
  end;
  if Fdm1.tEscala.State in [dsInsert] then
    Fdm1.tEscalaID.AsInteger := Fdm1.Incrementa('ID','Escala');
  Fdm1.tEscala.Post;
  Fdm1.tEscala.ApplyUpdates(0);
  Close;
end;

procedure TfEscala.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tEscala.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tEscala.State in [dsBrowse] then
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

procedure TfEscala.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
