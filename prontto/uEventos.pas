unit uEventos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, JvLookup, JvEdit,
  JvTypedEdit, JvToolEdit, JvCurrEdit, Grids, DBGrids, SMDBGrid, JvDBComb,
  UDm1, rsDBUtils;

type
  TfEventos = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    JvDBComboBox1: TJvDBComboBox;
    JvDBComboBox2: TJvDBComboBox;
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
  fEventos: TfEventos;

implementation

uses UDmCons;

{$R *.dfm}

procedure TfEventos.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tEventos.Cancel;
  Close;
end;

procedure TfEventos.BitBtn1Click(Sender: TObject);
begin
  if Fdm1.tEventosNOME.Text = '' then
  begin
    ShowMessage('Nome deve ser preenchido!');
    Exit;
  end;
  if Fdm1.tEventos.State in [dsInsert] then
    Fdm1.tEventosID.AsInteger := Fdm1.Incrementa('ID','Eventos');
  Fdm1.tEventos.Post;
  Fdm1.tEventos.ApplyUpdates(0);
  Close;
end;

procedure TfEventos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tEventos.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tEventos.State in [dsBrowse] then
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

procedure TfEventos.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
