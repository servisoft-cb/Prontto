unit uDiarioC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, UCBase, 
  UDm1, JvDBCtrl, rsDBUtils, DBCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr, uDmDiario, Mask, JvToolEdit, dbxpress, MMSystem;

type
  TfDiarioC = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    UCControls1: TUCControls;
    DBMemo1: TDBMemo;
    BitBtn3: TBitBtn;
    JvDateEdit1: TJvDateEdit;
    sdsPessoaServico: TSQLDataSet;
    dspPessoaServico: TDataSetProvider;
    cdsPessoaServico: TClientDataSet;
    dsPessoaServico: TDataSource;
    sdsPessoaServicoID: TIntegerField;
    sdsPessoaServicoNOME: TStringField;
    sdsPessoaServicoALARME: TStringField;
    sdsPessoaServicoAVULSO: TStringField;
    sdsPessoaServicoCAMERA: TStringField;
    sdsPessoaServicoPORTARIA: TStringField;
    sdsPessoaServicoRONDA: TStringField;
    cdsPessoaServicoID: TIntegerField;
    cdsPessoaServicoNOME: TStringField;
    cdsPessoaServicoALARME: TStringField;
    cdsPessoaServicoAVULSO: TStringField;
    cdsPessoaServicoCAMERA: TStringField;
    cdsPessoaServicoPORTARIA: TStringField;
    cdsPessoaServicoRONDA: TStringField;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    SQLQuery1: TSQLQuery;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Shape2: TShape;
    JvDateEdit2: TJvDateEdit;
    Label4: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vExcluirAux: Boolean;
    Fdm1: TDm1;
    fDmDiario: TDmDiario;
    ctDiario: String;
    procedure Gravar_Parametros(Usuario : String);
  public
    { Public declarations }
  end;

var
  fDiarioC: TfDiarioC;

implementation

uses uDiario, UMenu, uDiarioR, uUtil;

{$R *.dfm}

procedure TfDiarioC.BitBtn1Click(Sender: TObject);
var
  sds: TSQLDataSet;
  iSeq: Integer;
  ID: TTransactionDesc;
begin
  fDmDiario.cdsDiarioCons.Close;
  fDmDiario.sdsDiarioCons.CommandText := ctDiario + ' AND REVISADO_HORA IS NULL ORDER BY DATA DESC, TURNO DESC';
  fDmDiario.cdsDiarioCons.Open;
  fDmDiario.cdsDiarioCons.First;
  if (fDmDiario.cdsDiarioConsRV_ALARME.AsString  = 'N') or (fDmDiario.cdsDiarioConsRV_BAIRRO.AsString  = 'N') or
     (fDmDiario.cdsDiarioConsRV_CAMERA.AsString  = 'N') or (fDmDiario.cdsDiarioConsRV_ESPECIAL.AsString  = 'N') or
     (fDmDiario.cdsDiarioConsRV_RONDA.AsString  = 'N') or (fDmDiario.cdsDiarioConsRV_VIATURA.AsString  = 'N') then
  begin
    ShowMessage('Existe diário sem revisão!');
    Exit;
  end;
//    fDmDiario.cdsDiarioCons.Close;
//    fDmDiario.sdsDiarioCons.CommandText := ctDiario;
//    fDmDiario.cdsDiarioCons.Open;

  sds := TSQLDataSet.Create(nil);
//  try
//    ID.TransactionID := 999;
//    ID.IsolationLevel := xilREADCOMMITTED;
//    fDM1.Conexao.StartTransaction(ID);

    fDiario := TfDiario.Create(Self);
    fDiario.Dm1      := fDm1;
    fDiario.dmDiario := fDmDiario;

    if not fDmDiario.cdsDiario.Active then
      fDmDiario.prcLocalizar(0);

    fDmDiario.cdsDiario.Insert;
    fDmDiario.cdsDiarioID.AsInteger         := Fdm1.Incrementa('ID','DIARIO');
    fDmDiario.cdsDiarioDIARIO_ID.AsInteger  := fDmDiario.cdsDiarioID.AsInteger;
    fDmDiario.cdsDiarioDATA.AsDateTime      := Date;
    fDmDiario.cdsDiarioFC_ALARME.AsString   := 'N';
    fDmDiario.cdsDiarioFC_BAIRRO.AsString   := 'N';
    fDmDiario.cdsDiarioFC_CAMERA.AsString   := 'N';
    fDmDiario.cdsDiarioFC_ESPECIAL.AsString := 'N';
    fDmDiario.cdsDiarioFC_PORTARIA.AsString := 'N';
    fDmDiario.cdsDiarioFC_RONDA.AsString    := 'N';
    fDmDiario.cdsDiarioFC_VIATURA.AsString  := 'N';

    fDmDiario.cdsDiarioRV_ALARME.AsString   := 'N';
    fDmDiario.cdsDiarioRV_BAIRRO.AsString   := 'N';
    fDmDiario.cdsDiarioRV_CAMERA.AsString   := 'N';
    fDmDiario.cdsDiarioRV_ESPECIAL.AsString := 'N';
    fDmDiario.cdsDiarioRV_PORTARIA.AsString := 'N';
    fDmDiario.cdsDiarioRV_RONDA.AsString    := 'N';
    fDmDiario.cdsDiarioRV_VIATURA.AsString  := 'N';

    fDmDiario.cdsDiarioOK_ALARME.AsString   := 'N';
    fDmDiario.cdsDiarioOK_BAIRRO.AsString   := 'N';
    fDmDiario.cdsDiarioOK_CAMERA.AsString   := 'N';
    fDmDiario.cdsDiarioOK_ESPECIAL.AsString := 'N';
    fDmDiario.cdsDiarioOK_PORTARIA.AsString := 'N';
    fDmDiario.cdsDiarioOK_RONDA.AsString    := 'N';
    fDmDiario.cdsDiarioOK_VIATURA.AsString  := 'N';

    fdm1.tBairro.Close;
    fdm1.tBairro.Open;
    while not fdm1.tBairro.Eof do
    begin
      fDmDiario.cdsDiarioBairro.Insert;
      fDmDiario.cdsDiarioBairroDIARIO_ID.AsInteger := fDmDiario.cdsDiarioID.AsInteger;
      fDmDiario.cdsDiarioBairroBAIRRO_ID.AsInteger := fdm1.tBairroID.AsInteger;
      fDmDiario.cdsDiarioBairroBAIRRO.AsString     := fdm1.tBairroNOME.AsString;
      fDmDiario.cdsDiarioBairro.Post;
      fdm1.tBairro.Next;
    end;

    fdm1.tCelular.Close;
    fdm1.tCelular.Open;
    while not fdm1.tCelular.Eof do
    begin
      fDmDiario.cdsDiarioCelular.Insert;
      fDmDiario.cdsDiarioCelularDIARIO_ID.AsInteger  := fDmDiario.cdsDiarioID.AsInteger;
      fDmDiario.cdsDiarioCelularCELULAR_ID.AsInteger := fdm1.tCelularID.AsInteger;
      fDmDiario.cdsDiarioCelularOPERADORA.AsString   := fdm1.tCelularOPERADORA.AsString;
      fDmDiario.cdsDiarioCelularNUMERO.AsString      := fdm1.tCelularNUMERO.AsString;
      fDmDiario.cdsDiarioCelular.Post;
      fdm1.tCelular.Next;
    end;

    cdsPessoaServico.Close;
    cdsPessoaServico.Filtered := False;
    cdsPessoaServico.Filter   := 'RONDA = ''1''';
    cdsPessoaServico.Filtered := True;
    cdsPessoaServico.Open;
    while not cdsPessoaServico.Eof do
    begin
      fDmDiario.cdsDiarioRonda.IndexFieldNames := 'DIARIO_ID;PESSOA_ID';
      if fDmDiario.cdsDiarioRonda.FindKey([fdmDiario.cdsDiarioID.AsInteger,cdsPessoaServicoID.AsInteger]) then
        fDmDiario.cdsDiarioRonda.Edit
      else
        fDmDiario.cdsDiarioRonda.Insert;
      fDmDiario.cdsDiarioRondaDIARIO_ID.AsInteger := fdmDiario.cdsDiarioID.AsInteger;
      fDmDiario.cdsDiarioRondaPESSOA_ID.AsInteger := cdsPessoaServicoID.AsInteger;
      fDmDiario.cdsDiarioRondaCLIENTE.AsString    := cdsPessoaServicoNOME.AsString;
      fDmDiario.cdsDiarioRonda.Post;
      cdsPessoaServico.Next;
    end;
    cdsPessoaServico.Close;
    cdsPessoaServico.Filtered := False;
    cdsPessoaServico.Filter   := '';

    fdm1.tViatura.Close;
    fdm1.tViatura.Open;
    fdm1.tViatura.Filtered := False;
    fdm1.tViatura.Filter   := 'ATIVA = ''S''';
    fdm1.tViatura.Filtered := True;
    while not fdm1.tViatura.Eof do
    begin
      fDmDiario.cdsDiarioViatura.Insert;
  //    fDmDiario.cdsDiarioViaturaDIARIO_ID.AsInteger  := fDmDiario.cdsDiarioID.AsInteger;
      fDmDiario.cdsDiarioViaturaVIATURA_ID.AsInteger := fdm1.tViaturaID.AsInteger;
      fDmDiario.cdsDiarioViaturaVIATURA.AsString     := fdm1.tViaturaPLACA.AsString;
      fDmDiario.cdsDiarioViatura.Post;
      fdm1.tViatura.Next;
    end;
    fdm1.tViatura.Filtered := False;
    fdm1.tViatura.Filter   := '';
    fdmDiario.cdsDiario.Post;
    fdmDiario.cdsDiario.ApplyUpdates(0);
//    fDm1.Conexao.Commit(ID);
    fdmDiario.cdsDiario.Edit;
    fDiario.ShowModal;
    BitBtn3.Click;
    fDiario.Free;
//  except
//    fDm1.Conexao.Rollback(ID);
//    raise;
//  end;
  FreeAndNil(sds);
end;

procedure TfDiarioC.JvDBGrid1DblClick(Sender: TObject);
begin
  if not fDmDiario.cdsDiarioCons.IsEmpty then
  begin
    fdmDiario.cdsDiario.Close;
    fDmDiario.sdsDiario.CommandText := fDmDiario.ctDiario + ' WHERE D.ID = ' + fDmDiario.cdsDiarioConsID.AsString;
    fdmDiario.cdsDiario.Open;
    fDiario     := TfDiario.Create(Self);
    fDiario.Tag := 1;
    fDiario.Dm1 := Fdm1;
    fDiario.dmDiario := fDmDiario;
    if not fDmDiario.cdsDiarioConsREVISADO_HORA.IsNull then
    begin
      fdmDiario.cdsDiario.ReadOnly := True;
      fdmDiario.cdsDiarioAlarme.ReadOnly   := True;
      fdmDiario.cdsDiarioBairro.ReadOnly   := True;
      fdmDiario.cdsDiarioCamera.ReadOnly   := True;
      fdmDiario.cdsDiarioEspecial.ReadOnly := True;
      fdmDiario.cdsDiarioPortaria.ReadOnly := True;
      fdmDiario.cdsDiarioRonda.ReadOnly    := True;
      fdmDiario.cdsDiarioViatura.ReadOnly  := True;
    end
    else
      fDmDiario.cdsDiario.Edit;
    fDiario.ShowModal;
    fdmDiario.cdsDiario.ReadOnly := False;
    fdmDiario.cdsDiarioAlarme.ReadOnly   := False;
    fdmDiario.cdsDiarioBairro.ReadOnly   := False;
    fdmDiario.cdsDiarioCamera.ReadOnly   := False;
    fdmDiario.cdsDiarioEspecial.ReadOnly := False;
    fdmDiario.cdsDiarioPortaria.ReadOnly := False;
    fdmDiario.cdsDiarioRonda.ReadOnly    := False;
    fdmDiario.cdsDiarioViatura.ReadOnly  := False;
    fDiario.Free;
    fdmDiario.cdsDiario.Close;
  end;
end;

procedure TfDiarioC.BitBtn2Click(Sender: TObject);
begin
  if not vExcluirAux then
    exit;
  if not fDmDiario.cdsDiarioCons.IsEmpty then
    if not fDmDiario.cdsDiarioConsREVISADO_HORA.IsNull then
    begin
      MessageDlg('Diário finalizado não pode ser excluído!', mtError, [mbOK], 0);
      Exit;
    end;
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      if not fDmDiario.cdsDiario.Active then
        oDBUtils.ActiveDataSet(True,fDmDiario.cdsDiario,Name);
      fDmDiario.cdsDiario.IndexFieldNames := 'ID';
      if fDmDiario.cdsDiario.FindKey([fDmDiario.cdsDiarioConsID.AsInteger]) then
      begin
        fDmDiario.cdsDiario.Delete;
        fDmDiario.cdsDiario.ApplyUpdates(0);
      end;
    end;
  BitBtn3.Click;
  vExcluirAux := False;
end;

procedure TfDiarioC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
  if Tag <> 9 then
    FreeAndNil(FdmDiario);
end;

procedure TfDiarioC.BitBtn3Click(Sender: TObject);
var
  vSenhaAux: String;
begin
  if JvDateEdit2.Date < Date - 1 then
  begin
    if not InputQuery('Informe a senha','Senha:',vSenhaAux) then
      JvDateEdit2.Date := Date - 1;
    if Trim(vSenhaAux) <> 'abc' then
      JvDateEdit2.Date := Date - 1;
  end;

  fDmDiario.cdsDiarioCons.Close;
  fDmDiario.sdsDiarioCons.CommandText := ctDiario;
  
  if JvDateEdit1.Date > 1000 then
    fDmDiario.sdsDiarioCons.CommandText := fDmDiario.sdsDiarioCons.CommandText + ' AND DATA <= ''' + FormatDateTime('MM/DD/YYYY',JvDateEdit1.Date) + '''';
  if JvDateEdit2.Date > 1000 then
    fDmDiario.sdsDiarioCons.CommandText := fDmDiario.sdsDiarioCons.CommandText + ' AND DATA >= ''' + FormatDateTime('MM/DD/YYYY',JvDateEdit2.Date) + '''';

  fDmDiario.sdsDiarioCons.CommandText := fDmDiario.sdsDiarioCons.CommandText + ' ORDER BY DATA DESC, TURNO DESC';
  fDmDiario.cdsDiarioCons.Open;
end;

procedure TfDiarioC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Tag <> 9 then
  begin
    if Fdm1.tParametroUSUARIODIARIO.AsString = vUsuario2 then
      Gravar_Parametros('');
  end;
  fDM1.tParametro.Close;
  vExcluirAux := False;
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfDiarioC.JvDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDmDiario.cdsDiarioConsDATA.AsDateTime < Date) and (fDmDiario.cdsDiarioConsREVISADO_HORA.AsString = '') then
    AFont.Color := clRed;
  if (fDmDiario.cdsDiarioConsRV_ALARME.AsString = 'N') or (fDmDiario.cdsDiarioConsRV_BAIRRO.AsString = 'N') or
     (fDmDiario.cdsDiarioConsRV_CAMERA.AsString = 'N') or (fDmDiario.cdsDiarioConsRV_ESPECIAL.AsString = 'N') or
     (fDmDiario.cdsDiarioConsRV_RONDA.AsString = 'N') or (fDmDiario.cdsDiarioConsRV_VIATURA.AsString = 'N') then
    AFont.Color := clBlue;
end;

procedure TfDiarioC.BitBtn4Click(Sender: TObject);
begin
  if not fDmDiario.cdsDiarioCons.IsEmpty then
  begin
    if not fDmDiario.cdsDiario.Active then
      oDBUtils.ActiveDataSet(True,fDmDiario.cdsDiario,Name);
    fdmDiario.cdsDiario.IndexFieldNames := 'ID';
    fdmDiario.cdsDiario.FindKey([fdmDiario.cdsDiarioConsID.AsInteger]);

    vEmail_Fortes         := Fdm1.tParametroREVISOR_EMAIL.AsString;
    vEmail_Assunto_Fortes := 'Diário_' + FormatDateTime('YYYY-MM-DD',fDmDiario.cdsDiarioDATA.AsDateTime);
    vEmail_Fortes_Corpo   := 'Segue anexo...';

    fDiarioR := TfDiarioR.Create(Self);
    fDiarioR.fDm1      := fDm1;
    fDiarioR.fDmDiario := fDmDiario;
    fDiarioR.RlReport1.Preview;
  end;
end;

procedure TfDiarioC.BitBtn5Click(Sender: TObject);
begin
  if MessageDlg('Deseja revisar todos os diários em aberto?',mtConfirmation,[mbOk,mbNo],0) = mrNo then
    Exit;
  SQLQuery1.SQL.Text := 'update diario set RV_ALARME = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'update diario set RV_ESPECIAL = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'update diario set RV_BAIRRO = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'update diario set RV_CAMERA = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'update diario set RV_PORTARIA = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'update diario set RV_RONDA = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'update diario set RV_VIATURA = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'update diario set FC_ALARME = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'update diario set FC_ESPECIAL = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'update diario set FC_BAIRRO = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'update diario set FC_CAMERA = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'update diario set FC_PORTARIA = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'update diario set FC_RONDA = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'update diario set FC_VIATURA = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'update diario set OK_ALARME = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'update diario set OK_BAIRRO = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'update diario set OK_CAMERA = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'update diario set OK_ESPECIAL = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'update diario set OK_PORTARIA = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'update diario set OK_RONDA = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'update diario set OK_VIATURA = ''S''';
  SQLQuery1.ExecSQL(True);
  SQLQuery1.SQL.Text := 'commit';
  SQLQuery1.ExecSQL(True);
end;

procedure TfDiarioC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
  begin
    vExcluirAux     := True;
    BitBtn2.Enabled := True;
  end;
end;

procedure TfDiarioC.Gravar_Parametros(Usuario: String);
begin
  Fdm1.tParametro.Edit;
  Fdm1.tParametroUSUARIODIARIO.AsString := Usuario;
  Fdm1.tParametro.Post;
  Fdm1.tParametro.ApplyUpdates(0);
end;

procedure TfDiarioC.FormShow(Sender: TObject);
begin
  vExcluirAux := False;
  JvDateEdit2.Date := Date - 1;
  JvDateEdit1.Date := Date;

  Fdm1 := Tdm1.Create(Self);

  Tag := 0;
  Fdm1.tParametro.Close;
  Fdm1.tParametro.Open;
{  if (Trim(Fdm1.tParametroUSUARIODIARIO.AsString) <> '') then
  begin
    ShowMessage('Usuário ' + fDM1.tParametroUSUARIODIARIO.AsString + ' está usando esta tela!');
    Tag := 9;
    Close;
    exit;
  end;
  Gravar_Parametros(vUsuario2);}
  fDmDiario := TDmDiario.Create(Self);
  ctDiario  := fDmDiario.sdsDiarioCons.CommandText;

  BitBtn3Click(Sender);

  oDBUtils.OpenTables(True,Self);
  PlaySound(PChar('D:\Fontes\$Servisoft\prontto\hilo.waw'),1, SND_ASYNC);
end;

end.
