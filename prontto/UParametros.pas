unit UParametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls,
  ComCtrls, Mask, JvToolEdit, JvLookup, DBCtrls, Grids, DBGrids, JvDBCtrl, UDm1, rsDBUtils, JvDBComb;

type
  TfParametros = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    Label1: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    TabSheet2: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    Label17: TLabel;
    JvDBComboBox2: TJvDBComboBox;
    Label18: TLabel;
    DBMemo3: TDBMemo;
    TabSheet4: TTabSheet;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
  public
    { Public declarations }
  end;

var
  fParametros: TfParametros;

implementation

uses UDmCons, UMenu, DB, uCustoHomem;

{$R *.dfm}

procedure TfParametros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tParametro.Close;
  DmCons.qPais.Close;
  Fdm1.tCustoHomem.Close;
  Action := Cafree;
end;

procedure TfParametros.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  PageControl1.ActivePageIndex := 0;
  Fdm1.tParametro.Open;
  Fdm1.tCustoHomem.Open;
  DmCons.qPais.Open;
end;

procedure TfParametros.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Fdm1.tParametro.State in [dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn5.Click;
              if Fdm1.tParametro.State in [dsBrowse] then
                CanClose := True;
             end;
      mrNo: begin
              BitBtn3.Click;
              CanClose := true;
            end;
    end;
  end
  else
    CanClose := True;
end;

procedure TfParametros.BitBtn3Click(Sender: TObject);
begin
  Fdm1.tParametro.Cancel;
  Close;
end;

procedure TfParametros.BitBtn5Click(Sender: TObject);
begin
  if Fdm1.tParametro.State in [dsEdit] then
  begin
    Fdm1.tParametro.Post;
    Fdm1.tParametro.ApplyUpdates(0);
  end;
  Close;
end;

procedure TfParametros.BitBtn1Click(Sender: TObject);
begin
  fCustoHomem := TfCustoHomem.Create(Self);

  fCustoHomem.Dm1 := Fdm1;

  Fdm1.tCustoHomem.Insert;
  Fdm1.tCustoHomemPERCENTUAL.AsString    := '0';
  Fdm1.tCustoHomemPERIODICIDADE.AsString := '1';
  fCustoHomem.ShowModal;
  fCustoHomem.Free;
end;

procedure TfParametros.JvDBGrid1DblClick(Sender: TObject);
begin
  if not Fdm1.tCustoHomem.IsEmpty then
  begin
    fCustoHomem := TfCustoHomem.Create(Self);

    fCustoHomem.Dm1 := Fdm1;

    fCustoHomem.ShowModal;
    fCustoHomem.Free;
  end;
end;

procedure TfParametros.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbNo,mbOk],0) = mrOk then
  begin
    Fdm1.tCustoHomem.Delete;
    Fdm1.tCustoHomem.ApplyUpdates(0);
  end;
end;

procedure TfParametros.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
