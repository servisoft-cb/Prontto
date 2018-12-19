unit uAlarme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB, Dialogs, StdCtrls, Mask, DBCtrls, Buttons, UDm1, 
  ExtCtrls, JvLookup, rsDBUtils;

type
  TfAlarme = class(TForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    DBMemo1: TDBMemo;
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
  fAlarme: TfAlarme;

implementation


{$R *.dfm}

procedure TfAlarme.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tAlarme.Cancel;
  Close;
end;

procedure TfAlarme.BitBtn1Click(Sender: TObject);
begin
  if DBEdit1.Text = '' then
  begin
    ShowMessage('Nome deve ser preenchido!');
    Exit;
  end;
  if DBEdit2.Text = '' then
  begin
    ShowMessage('Fone 1 deve ser preenchido!');
    Exit;
  end;
  if DBEdit5.Text = '' then
  begin
    ShowMessage('Endereço deve ser preenchido!');
    Exit;
  end;
  if JvDBLookupCombo1.Text = '' then
  begin
    ShowMessage('Cidade deve ser preenchida!');
    Exit;
  end;
  if (DBEdit8.Text = '') or (DBEdit9.Text = '') then
  begin
    ShowMessage('Senha e contra-senha devme ser preenchidas!');
    Exit;
  end;
  Fdm1.tAlarme.Post;
  Close;
end;

procedure TfAlarme.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tAlarme.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tAlarme.State in [dsBrowse] then
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

procedure TfAlarme.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
