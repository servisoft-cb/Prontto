unit UBcoSicredi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, JvDBComb, JvLookup, Mask, ExtCtrls,
  Buttons,uDm1, rsDBUtils, DBTables, DB, StdCtrls, DBCtrls, JvToolEdit;

type
    TfBcoSicredi = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    JvDBLookupCombo1: TJvDBLookupCombo;
    JvDBComboBox1: TJvDBComboBox;
    JvDBComboBox2: TJvDBComboBox;
    JvDBComboBox3: TJvDBComboBox;
    JvDBComboBox4: TJvDBComboBox;
    JvDBComboBox5: TJvDBComboBox;
    JvDBComboBox6: TJvDBComboBox;
    Label11: TLabel;
    Label14: TLabel;
    JvDBComboBox7: TJvDBComboBox;
    Label18: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    JvDBComboBox8: TJvDBComboBox;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit10: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
    procedure Habilita;
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fBcoSicredi: TfBcoSicredi;

implementation

uses UGBoleto, UDmCons, UCobSicred;

{$R *.dfm}


procedure TfBcoSicredi.Habilita;
begin
  BitBtn1.Enabled := not BitBtn1.Enabled;
  BitBtn2.Enabled := not BitBtn2.Enabled;
  BitBtn3.Enabled := not BitBtn3.Enabled;
  BitBtn4.Enabled := not BitBtn4.Enabled;
  BitBtn5.Enabled := not BitBtn5.Enabled;
  Panel3.Enabled  := not Panel3.Enabled;
end;

procedure TfBcoSicredi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Screen.FormCount < 3 then
    begin
      DmCons.qBanco.Close;;
      Fdm1.tSicred.Close;
      //Fdm1.tClienteAcc.Close;
      //Fdm1.tCReceberParc.Close;
      Fdm1.tCReceberHist.Close;
      Fdm1.tBanco.Close;
    end;
  Action := Cafree;
end;

procedure TfBcoSicredi.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tSicred.State in [dsEdit] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar antes de fechar a janela');
      CanClose := False;
    end
  else
    CanClose := True;

end;

procedure TfBcoSicredi.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tSicred.Edit;
  if Fdm1.tSicredNOME.AsString = '' then
    begin
      Fdm1.tSicredNOME.AsString     := 'Remessa';
      Fdm1.tSicredEXTENSAO.AsString := 'TXT';
    end;
  Habilita;
  DBEdit1.SetFocus;

end;

procedure TfBcoSicredi.BitBtn1Click(Sender: TObject);
begin
  Fdm1.tSicred.Cancel;
  Habilita;

end;

procedure TfBcoSicredi.BitBtn5Click(Sender: TObject);
begin
//  FDM1.tSicredCaminho.AsString := JvFilenameEdit1.Text;
  Fdm1.tSicred.Post;
  Fdm1.tSicred.ApplyUpdates(0);
  Habilita;
end;

procedure TfBcoSicredi.FormShow(Sender: TObject);
begin
  Fdm1.tSicred.Open;
  //Fdm1.tClienteAcc.Open;
  //Fdm1.tCReceberParc.Open;
  Fdm1.tCReceberHist.Open;
  Fdm1.tBanco.Open;
  Fdm1.tCidade.Open;
  Fdm1.tUF.Open;
  DmCons.qBanco.Open;
//  JvFilenameEdit1.Text := Fdm1.tSicredCAMINHO.AsString;
end;

procedure TfBcoSicredi.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    DBEdit7.ReadOnly := not(DBEdit7.ReadOnly);
end;

procedure TfBcoSicredi.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    DBEdit5.ReadOnly := not(DBEdit5.ReadOnly);
end;

procedure TfBcoSicredi.BitBtn4Click(Sender: TObject);
begin
  fCobSicred := TfCobSicred.Create(Self);
  fCobSicred.ShowModal;
end;

procedure TfBcoSicredi.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfBcoSicredi.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfBcoSicredi.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
