unit uDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB, Dialogs, StdCtrls, Mask, DBCtrls, Buttons,
  ExtCtrls, JvDBComb, UDm1, ComCtrls, JvToolEdit, Grids, DBGrids, SMDBGrid, JvLookup, UCBase, JvDBCtrl, uDmDiario, rsDBUtils,
  FMTBcd, DBClient, Provider, SqlExpr, Menus, uDmEscala, JvComponent;

type
  TfDiario = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    TabSheet7: TTabSheet;
    Label3: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    JvDBComboBox1: TJvDBComboBox;
    Panel3: TPanel;
    SMDBGrid2: TSMDBGrid;
    SMDBGrid3: TSMDBGrid;
    Panel4: TPanel;
    SMDBGrid4: TSMDBGrid;
    SMDBGrid5: TSMDBGrid;
    SMDBGrid6: TSMDBGrid;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    UCControls1: TUCControls;
    Panel5: TPanel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    DBText1: TDBText;
    Label4: TLabel;
    sdsAgente: TSQLDataSet;
    sdsAgenteID: TIntegerField;
    sdsAgenteNOME: TStringField;
    dspAgente: TDataSetProvider;
    cdsAgente: TClientDataSet;
    cdsAgenteID: TIntegerField;
    cdsAgenteNOME: TStringField;
    dsAgente: TDataSource;
    SMDBGrid7: TSMDBGrid;
    Panel6: TPanel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    Panel7: TPanel;
    Label5: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    Panel10: TPanel;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    JvDBDateEdit1: TJvDBDateEdit;
    SMDBGrid1: TSMDBGrid;
    PopupMenu1: TPopupMenu;
    Ronda1: TMenuItem;
    Monitoramento1: TMenuItem;
    Label6: TLabel;
    N1: TMenuItem;
    Limpar1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    Label7: TLabel;
    BitBtn12: TBitBtn;
    SMDBGrid8: TSMDBGrid;
    TabSheet8: TTabSheet;
    SMDBGrid9: TSMDBGrid;
    Panel11: TPanel;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    PopupMenu3: TPopupMenu;
    MenuItem5: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    BitBtn15: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure JvDBLookupCombo1Enter(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn7Click(Sender: TObject);
    procedure SMDBGrid5DblClick(Sender: TObject);
    procedure SMDBGrid3DblClick(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure SMDBGrid4DblClick(Sender: TObject);
    procedure SMDBGrid6DblClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure DBCheckBox3Click(Sender: TObject);
    procedure SMDBGrid7DblClick(Sender: TObject);
    procedure DBCheckBox5Click(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure JvDBComboBox1Exit(Sender: TObject);
    procedure JvDBLookupCombo1Exit(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure Ronda1Click(Sender: TObject);
    procedure Monitoramento1Click(Sender: TObject);
    procedure Limpar1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure SMDBGrid8DblClick(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
  private
    { Private declarations }
    Fdm1: Tdm1;
    fDmDiario: TDmDiario;
    function verificaKm(vFinal: Boolean): Boolean;
    function verificaCel: Boolean;
    procedure geraPortaria;
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
    property dmDiario: TDmDiario read fDmDiario write fDmDiario;
  end;

var
  fDiario: TfDiario;

implementation

uses uDiarioViatura, uDiarioAlarme, uDiarioEspecial, uDiarioCamera, uDiarioRevisado, uDiarioBairro, uDiarioRonda,
  uDiarioPortaria, uPessoac, uDiarioCelular, uEscalaAlerta, DateUtils;

{$R *.dfm}

procedure TfDiario.BitBtn2Click(Sender: TObject);
begin
  if fDmDiario.cdsDiarioOPERADOR_RADIO.IsNull then
  begin
    fDmDiario.cdsDiario.Delete;
    fDmDiario.cdsDiario.ApplyUpdates(0);
  end;
  fDmDiario.cdsDiario.Cancel;
  Close;
end;

procedure TfDiario.BitBtn1Click(Sender: TObject);
begin
  if fDmDiario.cdsDiario.ReadOnly then
  begin
    ShowMessage('Diário revisado não pode ser alterado!');
    BitBtn2.Click;
    Exit;
  end;
  if fdmDiario.cdsDiarioTURNO.IsNull then
  begin
    MessageDlg('Turno deve ser preenchido!', mtWarning, [mbOK], 0);
    JvDBComboBox1.SetFocus;
    Exit;
  end;
  if fdmDiario.cdsDiarioOPERADOR_RADIO.IsNull then
  begin
    MessageDlg('Operador de rádio deve ser preenchido!', mtWarning, [mbOK], 0);
    JvDBLookupCombo1.SetFocus;
    Exit;
  end;
  fDmDiario.cdsDiario.Post;
  fDmDiario.cdsDiario.ApplyUpdates(0);
  Close;
end;

procedure TfDiario.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (fDmDiario.cdsDiarioREVISADO_HORA.IsNull) and (fDmDiario.cdsDiario.State in [dsInsert,dsEdit]) then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if fDmDiario.cdsDiario.State in [dsBrowse] then
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

procedure TfDiario.FormShow(Sender: TObject);
begin
  WindowState := wsMaximized;
  PageControl1.ActivePageIndex := 0;
  oDBUtils.OpenTables(True,Self);
  oDBUtils.SetDataSourceProperties(Self,fDmDiario);
  oDBUtils.SetDataSourceProperties(Self,fDm1);

  DBCheckBox15.Enabled := DBCheckBox3.Checked;
  DBCheckBox17.Enabled := DBCheckBox7.Checked;
  DBCheckBox18.Enabled := DBCheckBox9.Checked;
  DBCheckBox19.Enabled := DBCheckBox5.Checked;
  DBCheckBox20.Enabled := DBCheckBox1.Checked;
  DBCheckBox21.Enabled := DBCheckBox11.Checked;
  DBCheckBox16.Enabled := DBCheckBox13.Checked;
end;

procedure TfDiario.JvDBLookupCombo1Enter(Sender: TObject);
begin
  fdm1.tPessoa.IndexFieldNames := 'NOME';
end;

procedure TfDiario.SMDBGrid1DblClick(Sender: TObject);
begin
  if fDmDiario.cdsDiarioViatura.IsEmpty then
    Exit;

  fDiarioViatura := TfDiarioViatura.Create(Self);
  fDiarioViatura.dmDiario := fDmDiario;
  if fdmDiario.cdsDiarioREVISADO_HORA.IsNull then
    fDmDiario.cdsDiarioViatura.Edit;
  fDiarioViatura.ShowModal;

  fDmDiario.cdsDiario.ApplyUpdates(0);
  fDmDiario.cdsDiario.Edit;
end;

procedure TfDiario.BitBtn3Click(Sender: TObject);
begin
  if not verificaKm(False) then
    Exit;
  if not verificaCel then
    Exit;

  if not fdmDiario.cdsDiarioREVISADO_HORA.IsNull then
  begin
    ShowMessage('Diário revisado não pode ser alterado!');
    Exit;
  end;
  fDiarioAlarme := TfDiarioAlarme.Create(Self);
  fDiarioAlarme.dmDiario := fDmDiario;
  fDmDiario.cdsDiarioAlarme.Insert;
  fDmDiario.cdsDiarioAlarmeDIARIO_ID.AsInteger := fDmDiario.cdsDiarioID.AsInteger;
  fDmDiario.cdsDiarioAlarmeID.AsInteger        := dm1.ProximaSequencia('DIARIO_ALARME');
  fDmDiario.cdsDiarioAlarmeHORA.AsDateTime     := Now;
  fDmDiario.cdsDiarioAlarmeSA.AsString         := '1';
  fDmDiario.cdsDiarioAlarmeAPBM.AsString       := 'N';
  fDiarioAlarme.ShowModal;

  fDmDiario.cdsDiario.ApplyUpdates(0);
  fDmDiario.cdsDiario.Edit;
end;

procedure TfDiario.BitBtn4Click(Sender: TObject);
begin
  if not fdmDiario.cdsDiarioREVISADO_HORA.IsNull then
  begin
    ShowMessage('Diário revisado não pode ser alterado!');
    Exit;
  end;
  if not fDmDiario.cdsDiarioAlarme.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
      fDmDiario.cdsDiarioAlarme.Delete;

  fDmDiario.cdsDiario.ApplyUpdates(0);
  fDmDiario.cdsDiario.Edit;
end;

procedure TfDiario.BitBtn6Click(Sender: TObject);
begin
  if not fdmDiario.cdsDiarioREVISADO_HORA.IsNull then
  begin
    ShowMessage('Diário revisado não pode ser alterado!');
    Exit;
  end;
  if not fDmDiario.cdsDiarioEspecial.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
      fDmDiario.cdsDiarioEspecial.Delete;

  fDmDiario.cdsDiario.ApplyUpdates(0);
  fDmDiario.cdsDiario.Edit;
end;

procedure TfDiario.BitBtn5Click(Sender: TObject);
begin
  if not verificaKm(False) then
    Exit;
  if not verificaCel then
    Exit;

  if not fdmDiario.cdsDiarioREVISADO_HORA.IsNull then
  begin
    ShowMessage('Diário revisado não pode ser alterado!');
    Exit;
  end;
  fDiarioEspecial := TfDiarioEspecial.Create(Self);
  fDiarioEspecial.dmDiario := fDmDiario;
  fDmDiario.cdsDiarioEspecial.Insert;
  fDmDiario.cdsDiarioEspecialDIARIO_ID.AsInteger := fDmDiario.cdsDiarioID.AsInteger;
  fDmDiario.cdsDiarioEspecialID.AsInteger        := dm1.ProximaSequencia('DIARIO_ESPECIAL');
  fDmDiario.cdsDiarioEspecialSA.AsString         := '1';
  fDmDiario.cdsDiarioEspecialAPBM.AsString       := 'N';
  fDiarioEspecial.ShowModal;

  fDmDiario.cdsDiario.ApplyUpdates(0);
  fDmDiario.cdsDiario.Edit;
end;

procedure TfDiario.BitBtn8Click(Sender: TObject);
begin
  if not verificaKm(False) then
    Exit;
  if not verificaCel then
    Exit;

  if not fdmDiario.cdsDiarioREVISADO_HORA.IsNull then
  begin
    ShowMessage('Diário revisado não pode ser alterado!');
    Exit;
  end;

  fDiarioCamera := TfDiarioCamera.Create(Self);
  fDiarioCamera.dmDiario := fDmDiario;
  fDmDiario.cdsDiarioCamera.Insert;
  fDmDiario.cdsDiarioCameraDIARIO_ID.AsInteger := fDmDiario.cdsDiarioID.AsInteger;
  fDmDiario.cdsDiarioCameraID.AsInteger        := dm1.ProximaSequencia('DIARIO_CAMERA');
  fDiarioCamera.ShowModal;

  fDmDiario.cdsDiario.ApplyUpdates(0);
  fDmDiario.cdsDiario.Edit;
end;

procedure TfDiario.BitBtn9Click(Sender: TObject);
begin
  if not fdmDiario.cdsDiarioREVISADO_HORA.IsNull then
  begin
    ShowMessage('Diário revisado não pode ser alterado!');
    Exit;
  end;

  if not fDmDiario.cdsDiarioCamera.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
      fDmDiario.cdsDiarioCamera.Delete;

  fDmDiario.cdsDiario.ApplyUpdates(0);
  fDmDiario.cdsDiario.Edit;
end;

procedure TfDiario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfDiario.BitBtn7Click(Sender: TObject);
begin
  fDiarioRevisado          := TfDiarioRevisado.Create(Self);
  fDiarioRevisado.dmDiario := fDmDiario;
  fDiarioRevisado.DBEdit1.Text := Dm1.vUsuario;  //sem fdm1
  fDiarioRevisado.ShowModal;
end;

procedure TfDiario.SMDBGrid5DblClick(Sender: TObject);
begin
  if not verificaKm(False) then
    Exit;
  if not verificaCel then
    Exit;

  if fDmDiario.cdsDiarioBairro.IsEmpty then
    Exit;
      
  fDiarioBairro := TfDiarioBairro.Create(Self);
  fDiarioBairro.fDmDiario := fDmDiario;
  if fdmDiario.cdsDiarioREVISADO_HORA.IsNull then
    fdmDiario.cdsDiarioBairro.Edit;
  fDiarioBairro.ShowModal;

  fDmDiario.cdsDiario.ApplyUpdates(0);
  fDmDiario.cdsDiario.Edit;
end;

procedure TfDiario.SMDBGrid3DblClick(Sender: TObject);
begin
  if fdmDiario.cdsDiarioEspecial.IsEmpty then
    Exit;

  fDiarioEspecial := TfDiarioEspecial.Create(Self);
  fDiarioEspecial.dmDiario := fDmDiario;
  if fdmDiario.cdsDiarioREVISADO_HORA.IsNull then
    fdmDiario.cdsDiarioEspecial.Edit;
  fDiarioEspecial.ShowModal;

  fDmDiario.cdsDiario.ApplyUpdates(0);
  fDmDiario.cdsDiario.Edit;
end;

procedure TfDiario.SMDBGrid2DblClick(Sender: TObject);
begin
  if fdmDiario.cdsDiarioAlarme.IsEmpty then
    Exit;

  fDiarioAlarme := TfDiarioAlarme.Create(Self);
  fDiarioAlarme.dmDiario := fDmDiario;
  if fdmDiario.cdsDiarioREVISADO_HORA.IsNull then
    fdmDiario.cdsDiarioAlarme.Edit;
  fDiarioAlarme.ShowModal;

  fDmDiario.cdsDiario.ApplyUpdates(0);
  fDmDiario.cdsDiario.Edit;
end;

procedure TfDiario.SMDBGrid4DblClick(Sender: TObject);
begin
  if not verificaKm(False) then
    Exit;
  if not verificaCel then
    Exit;

  if fDmDiario.cdsDiarioRonda.IsEmpty then
    Exit;
      
  fDiarioRonda := TfDiarioRonda.Create(Self);
  fDiarioRonda.dmDiario := fDmDiario;
  if fdmDiario.cdsDiarioREVISADO_HORA.IsNull then
    fdmDiario.cdsDiarioRonda.Edit;
  fDiarioRonda.ShowModal;

  fDmDiario.cdsDiario.ApplyUpdates(0);
  fDmDiario.cdsDiario.Edit;
end;

procedure TfDiario.SMDBGrid6DblClick(Sender: TObject);
begin
  if fdmDiario.cdsDiarioCamera.IsEmpty then
    Exit;

  fDiarioCamera := TfDiarioCamera.Create(Self);
  fDiarioCamera.dmDiario := fDmDiario;
  if fdmDiario.cdsDiarioREVISADO_HORA.IsNull then
    fdmDiario.cdsDiarioCamera.Edit;
  fDiarioCamera.ShowModal;

  fDmDiario.cdsDiario.ApplyUpdates(0);
  fDmDiario.cdsDiario.Edit;
end;

procedure TfDiario.BitBtn10Click(Sender: TObject);
begin
  if not verificaKm(False) then
    Exit;
  if not verificaCel then
    Exit;

  if not fdmDiario.cdsDiarioREVISADO_HORA.IsNull then
  begin
    ShowMessage('Diário revisado não pode ser alterado!');
    Exit;
  end;

  fDiarioPortaria := TfDiarioPortaria.Create(Self);
  fDiarioPortaria.dmDiario := fDmDiario;
  fDmDiario.cdsDiarioPortaria.Insert;
  fDmDiario.cdsDiarioPortariaDIARIO_ID.AsInteger := fDmDiario.cdsDiarioID.AsInteger;
  fDmDiario.cdsDiarioPortariaID.AsInteger        := dm1.ProximaSequencia('DIARIO_PORTARIA');
  fDiarioPortaria.ShowModal;

  fDmDiario.cdsDiario.ApplyUpdates(0);
  fDmDiario.cdsDiario.Edit;
end;

procedure TfDiario.DBCheckBox3Click(Sender: TObject);
var
  vCompleto: Boolean;
begin
  SMDBGrid1.DisableScroll;
  if (not DBCheckBox3.Checked) or (not Self.Showing)  then
  begin
    SMDBGrid1.EnableScroll;
    Exit;
  end;
  if not verificaKm(True) then
  begin
    DBCheckBox3.Checked := False;
    SMDBGrid1.EnableScroll;
    Exit;
  end;
  SMDBGrid1.EnableScroll;
end;

function TfDiario.verificaKm(vFinal: Boolean): Boolean;
begin
  if not Self.Showing then
    Exit;
  verificaKm := True;

  fdmDiario.cdsDiarioViatura.First;
  while not fdmDiario.cdsDiarioViatura.Eof do
  begin
    if fdmDiario.cdsDiarioViaturaKM_INICIAL.IsNull then
      verificaKm := False;
    if (vFinal) and (fdmDiario.cdsDiarioViaturaKM_FINAL.IsNull) then
      verificaKm := False;
    fdmDiario.cdsDiarioViatura.Next;
  end;
  if not Result then
    ShowMessage('Km incial das viaturas não está completo!');
end;

procedure TfDiario.SMDBGrid7DblClick(Sender: TObject);
begin
  if fdmDiario.cdsDiarioPortaria.IsEmpty then
    Exit;

  fDiarioPortaria := TfDiarioPortaria.Create(Self);
  fDiarioPortaria.dmDiario := fDmDiario;
  if fdmDiario.cdsDiarioREVISADO_HORA.IsNull then
    fdmDiario.cdsDiarioPortaria.Edit;
  fDiarioPortaria.ShowModal;

  fDmDiario.cdsDiario.ApplyUpdates(0);
  fDmDiario.cdsDiario.Edit;
end;

procedure TfDiario.DBCheckBox5Click(Sender: TObject);
var
  verifica: Boolean;
begin
  SMDBGrid5.DisableScroll;
  if (not DBCheckBox5.Checked) or (not Self.Showing) then
  begin
    SMDBGrid5.EnableScroll;
    Exit;
  end;
  verifica := True;
  fdmDiario.cdsDiarioBairro.First;
  while not fdmDiario.cdsDiarioBairro.Eof do
  begin
    if (fdmDiario.cdsDiarioBairroTIPO.IsNull) then
    begin
      fdmDiario.cdsDiarioBairro.Edit;
      fdmDiario.cdsDiarioBairroTIPO.AsString := 'M';
      fdmDiario.cdsDiarioBairroHORA.AsString := '00:00';
      fdmDiario.cdsDiarioBairro.Post;
//      verifica := False;
    end;
    fdmDiario.cdsDiarioBairro.Next;
  end;
  if not verifica then
  begin
    DBCheckBox5.Checked := False;
    ShowMessage('Existe bairro sem confirmação de ronda!');
    SMDBGrid5.EnableScroll;
    Exit;
  end;
  SMDBGrid5.EnableScroll;
end;

procedure TfDiario.DBCheckBox1Click(Sender: TObject);
var
  verifica: Boolean;
begin
  SMDBGrid4.DisableScroll;
  if (not DBCheckBox1.Checked) or (not Self.Showing)  then
  begin
    SMDBGrid4.EnableScroll;
    Exit;
  end;
  verifica := True;
  fdmDiario.cdsDiarioRonda.First;
  while not fdmDiario.cdsDiarioRonda.Eof do
  begin
    if (fdmDiario.cdsDiarioRondaTIPO.IsNull) then
    begin
      fdmDiario.cdsDiarioRonda.Edit;
      fdmDiario.cdsDiarioRondaTIPO.AsString := 'M';
      fdmDiario.cdsDiarioRondaHORA.AsString := '00:00';
      fdmDiario.cdsDiarioRonda.Post;
//      verifica := False;
    end;
    fdmDiario.cdsDiarioRonda.Next;
  end;
  if not verifica then
  begin
    DBCheckBox1.Checked := False;
    ShowMessage('Existe cliente sem confirmação de ronda!');
    SMDBGrid4.EnableScroll;
    Exit;
  end;
  SMDBGrid4.EnableScroll;
end;

procedure TfDiario.JvDBComboBox1Exit(Sender: TObject);
begin
  if JvDBComboBox1.Text = '' then
    ShowMessage('Turno deve ser preenchido!')
//  JvAlarms1.Active := True;
end;

procedure TfDiario.JvDBLookupCombo1Exit(Sender: TObject);
begin
  if JvDBLookupCombo1.Text = '' then
  begin
    ShowMessage('Operador de rádio deve ser preenchido!');
    JvDBLookupCombo1.SetFocus;
  end
  else
  begin
    fdmDiario.cdsDiario.Post;
    fdmDiario.cdsDiario.ApplyUpdates(0);
    fdmDiario.cdsDiario.Edit;
  end;
end;

procedure TfDiario.BitBtn11Click(Sender: TObject);
begin
  if not fdmDiario.cdsDiarioREVISADO_HORA.IsNull then
  begin
    ShowMessage('Diário revisado não pode ser alterado!');
    Exit;
  end
  else
  if not fDmDiario.cdsDiarioPortaria.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
      fDmDiario.cdsDiarioPortaria.Delete;

  fDmDiario.cdsDiario.ApplyUpdates(0);
  fDmDiario.cdsDiario.Edit;
end;

procedure TfDiario.Ronda1Click(Sender: TObject);
begin
  if not fdmDiario.cdsDiarioRonda.ReadOnly then
  begin
    fdmDiario.cdsDiarioRonda.Edit;
    fdmDiario.cdsDiarioRondaHORA.AsDateTime := Time;
    fdmDiario.cdsDiarioRondaTIPO.AsString   := 'R';
    fdmDiario.cdsDiarioRonda.Post;

    fDmDiario.cdsDiario.ApplyUpdates(0);
    fDmDiario.cdsDiario.Edit;
  end;
end;

procedure TfDiario.Monitoramento1Click(Sender: TObject);
begin
  if not fdmDiario.cdsDiarioRonda.ReadOnly then
  begin
    fdmDiario.cdsDiarioRonda.Edit;
    fdmDiario.cdsDiarioRondaHORA.AsDateTime := Time;
    fdmDiario.cdsDiarioRondaTIPO.AsString   := 'M';
    fdmDiario.cdsDiarioRonda.Post;

    fDmDiario.cdsDiario.ApplyUpdates(0);
    fDmDiario.cdsDiario.Edit;
  end;
end;

procedure TfDiario.Limpar1Click(Sender: TObject);
begin
  if not fdmDiario.cdsDiarioRonda.ReadOnly then
  begin
    fdmDiario.cdsDiarioRonda.Edit;
    fdmDiario.cdsDiarioRondaHORA.Clear;
    fdmDiario.cdsDiarioRondaTIPO.Clear;
    fdmDiario.cdsDiarioRonda.Post;

    fDmDiario.cdsDiario.ApplyUpdates(0);
    fDmDiario.cdsDiario.Edit;
  end;
end;

procedure TfDiario.MenuItem1Click(Sender: TObject);
begin
  if not fdmDiario.cdsDiarioBairro.ReadOnly then
  begin
    fdmDiario.cdsDiarioBairro.Edit;
    fdmDiario.cdsDiarioBairroHORA.AsDateTime := Time;
    fdmDiario.cdsDiarioBairroTIPO.AsString   := 'R';
    fdmDiario.cdsDiarioBairro.Post;

    fDmDiario.cdsDiario.ApplyUpdates(0);
    fDmDiario.cdsDiario.Edit;
  end;
end;

procedure TfDiario.MenuItem2Click(Sender: TObject);
begin
  if not fdmDiario.cdsDiarioBairro.ReadOnly then
  begin
    fdmDiario.cdsDiarioBairro.Edit;
    fdmDiario.cdsDiarioBairroHORA.AsDateTime := Time;
    fdmDiario.cdsDiarioBairroTIPO.AsString   := 'M';
    fdmDiario.cdsDiarioBairro.Post;

    fDmDiario.cdsDiario.ApplyUpdates(0);
    fDmDiario.cdsDiario.Edit;
  end;
end;

procedure TfDiario.MenuItem4Click(Sender: TObject);
begin
  if not fdmDiario.cdsDiarioBairro.ReadOnly then
  begin
    fdmDiario.cdsDiarioBairro.Edit;
    fdmDiario.cdsDiarioBairroHORA.Clear;
    fdmDiario.cdsDiarioBairroTIPO.Clear;
    fdmDiario.cdsDiarioBairro.Post;

    fDmDiario.cdsDiario.ApplyUpdates(0);
    fDmDiario.cdsDiario.Edit;
  end;
end;

procedure TfDiario.BitBtn12Click(Sender: TObject);
begin
  fPessoaC := TfPessoaC.Create(Self);
  fPessoaC.ShowModal;
  fPessoaC.Free;
end;

function TfDiario.verificaCel: Boolean;
begin
  if not Self.Showing then
    Exit;
  verificaCel := True;

  fdmDiario.cdsDiarioCelular.First;
  while not fdmDiario.cdsDiarioCelular.Eof do
  begin
    if fdmDiario.cdsDiarioCelularCREDITO.IsNull then
      verificaCel := False;
    fdmDiario.cdsDiarioCelular.Next;
  end;
  if not Result then
    ShowMessage('Crédito dos celulares não está completo!');
end;

procedure TfDiario.SMDBGrid8DblClick(Sender: TObject);
begin
  if fDmDiario.cdsDiarioCelular.IsEmpty then
    Exit;

  fDiarioCelular := TfDiarioCelular.Create(Self);
  fDiarioCelular.dmDiario := fDmDiario;
  fDiarioCelular.ShowModal;
end;

procedure TfDiario.geraPortaria;
begin
{  fDmEscala.cdsEscalaDiaria.Filtered := False;
  case fDmDiario.cdsDiarioTURNO.AsInteger of
    1: fDmEscala.cdsEscalaDiaria.Filter := '(DATA = ''' + fDmDiario.cdsDiarioDATA.AsString + ''' AND HR_INI > ''07:00'' and HR_INI <= ''19:00'')';
    2: fDmEscala.cdsEscalaDiaria.Filter := '(DATA = ''' + fDmDiario.cdsDiarioDATA.AsString + ''' and HR_INI > ''19:00'') or (DATA = ''' +
                                             FormatDateTime('DD/MM/YYYY',fDmDiario.cdsDiarioDATA.AsDateTime + 1) + ''' and HR_INI < ''07:00'')';
  end;
  fDmEscala.cdsEscalaDiaria.Filtered := True;
  if fDmEscala.cdsEscalaDiaria.IsEmpty then
  begin
    ShowMessage('Não existe escala para esta data!');
    Exit;
  end;

  while not fDmEscala.cdsEscalaDiaria.Eof do
  begin
    fDmDiario.cdsDiarioPortaria.Insert;
    fDmDiario.cdsDiarioPortariaDIARIO_ID.AsInteger  := fDmDiario.cdsDiarioID.AsInteger;
    fDmDiario.cdsDiarioPortariaAGENTE_ID.AsInteger  := fDmEscala.cdsEscalaDiariaAGENTE_ID.AsInteger;
    fDmDiario.cdsDiarioPortariaAGENTE.AsString      := fDmEscala.cdsEscalaDiarialkAgente.AsString ;
    fDmDiario.cdsDiarioPortariaCLIENTE_ID.AsInteger := fDmEscala.cdsEscalaDiariaCLIENTE_ID.AsInteger;
    fDmDiario.cdsDiarioPortariaCLIENTE.AsString     := fDmEscala.cdsEscalaDiariaCLIENTE.AsString;
    fDmDiario.cdsDiarioPortariaHORA_INI.AsDateTime  := fDmEscala.cdsEscalaDiariaHR_INI.AsDateTime;
    fDmDiario.cdsDiarioPortariaHORA_FIM.AsDateTime  := fDmEscala.cdsEscalaDiariaHR_FIM.AsDateTime;
    fDmDiario.cdsDiarioPortariaID.AsInteger         := Fdm1.ProximaSequencia('DIARIO_PORTARIA');
    fDmDiario.cdsDiarioPortaria.Post;
    fdmEscala.cdsEscalaDiaria.Next;
  end;
  fDmDiario.cdsDiarioPortaria.ApplyUpdates(0);}
end;

procedure TfDiario.MenuItem5Click(Sender: TObject);
begin
  if not fdmDiario.cdsDiarioPortaria.ReadOnly then
  begin
    fdmDiario.cdsDiarioPortaria.Edit;
    if fdmDiario.cdsDiarioPortariaHR_CHEGADA.IsNull then
      fdmDiario.cdsDiarioPortariaHR_CHEGADA.AsDateTime := Time
    else
      fdmDiario.cdsDiarioPortariaHR_SAIDA.AsDateTime := Time;
    fdmDiario.cdsDiarioPortaria.Post;

    fDmDiario.cdsDiario.ApplyUpdates(0);
    fDmDiario.cdsDiario.Edit;
  end;

end;

procedure TfDiario.BitBtn13Click(Sender: TObject);
begin
  //
end;

procedure TfDiario.BitBtn15Click(Sender: TObject);
begin
  if fDmDiario.cdsDiarioPortaria.IsEmpty then
    geraPortaria;
end;

end.
