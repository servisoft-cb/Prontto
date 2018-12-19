unit uViatura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB, Dialogs, StdCtrls, Mask, DBCtrls, Buttons, UDm1, 
  ExtCtrls, JvDBComb, rsDBUtils;

type
  TfViatura = class(TForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label10: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    Label4: TLabel;
    DBText1: TDBText;
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
  fViatura: TfViatura;

implementation

{$R *.dfm}

procedure TfViatura.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tViatura.Cancel;
  Close;
end;

procedure TfViatura.BitBtn1Click(Sender: TObject);
begin
  if Fdm1.tViaturaPLACA.IsNull then
  begin
    ShowMessage('Placa deve ser preenchida!');
    Exit;
  end;
  if Fdm1.tViatura.State in [dsInsert] then
    Fdm1.tViaturaID.AsInteger := Fdm1.Incrementa('ID','Viatura');
  Fdm1.tViatura.Post;
  Fdm1.tViatura.ApplyUpdates(0);
  Close;
end;

procedure TfViatura.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tViatura.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tViatura.State in [dsBrowse] then
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

procedure TfViatura.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
