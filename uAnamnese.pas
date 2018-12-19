unit uAnamnese;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, UDm1, rsDBUtils;

type
  TfAnamnese = class(TForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
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
  fAnamnese: TfAnamnese;

implementation



{$R *.dfm}

procedure TfAnamnese.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tAnamnese.Cancel;
  Close;
end;

procedure TfAnamnese.BitBtn1Click(Sender: TObject);
begin
  if Fdm1.tAnamneseNOME.IsNull then
  begin
    ShowMessage('Nome deve ser preenchido!');
    Exit;
  end;
  if Fdm1.tAnamnese.State in [dsInsert] then
    Fdm1.tAnamneseID.AsInteger := Fdm1.Incrementa('ID','ANAMNESE');
  Fdm1.tAnamnese.Post;
  Fdm1.tAnamnese.ApplyUpdates(0);
  Close;
end;

procedure TfAnamnese.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Fdm1.tAnamnese.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tAnamnese.State in [dsBrowse] then
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

procedure TfAnamnese.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
