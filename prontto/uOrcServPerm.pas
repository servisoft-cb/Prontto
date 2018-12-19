unit uOrcServPerm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB, Dialogs, StdCtrls, Mask, DBCtrls, Buttons, uDM1,
  ExtCtrls, JvLookup, Menus, rsDBUtils;

type
  TfOrcServPerm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit16: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    JvDBLookupCombo2: TJvDBLookupCombo;
    Label15: TLabel;
    DBEdit17: TDBEdit;
    PopupMenu1: TPopupMenu;
    Limpar1: TMenuItem;
    Label16: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure JvDBLookupCombo1Exit(Sender: TObject);
    procedure JvDBLookupCombo1Enter(Sender: TObject);
    procedure JvDBLookupCombo2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label1Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure Limpar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }
    function calcHoras: Currency;
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fOrcServPerm: TfOrcServPerm;

implementation

uses UDmCons, uServico, uCustoHomem;

{$R *.dfm}

procedure TfOrcServPerm.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tPedidoServicoPermanente.Cancel;
  Close;
end;

procedure TfOrcServPerm.BitBtn1Click(Sender: TObject);
begin
  if Fdm1.tPedidoServicoPermanenteSERVICO_ID.IsNull then
  begin
    ShowMessage('Serviço deve ser preenchido!');
    Exit;
  end;
  if Fdm1.tPedidoServicoPermanenteQTD.IsNull then
  begin
    ShowMessage('Quantidade deve ser preenchida!');
    Exit;
  end;
  if Fdm1.tPedidoServicoPermanenteVLR.IsNull then
  begin
    ShowMessage('Valor deve ser preenchido!');
    Exit;
  end;
  Fdm1.tPedidoServicoPermanenteSERVICO.AsString := JvDBLookupCombo1.Text;
  Fdm1.tPedidoServicoPermanente.Post;
  Close;
end;

procedure TfOrcServPerm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tPedidoServicoPermanente.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tPedidoServicoPermanente.State in [dsBrowse] then
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

procedure TfOrcServPerm.DBEdit1Exit(Sender: TObject);
begin
  Fdm1.tPedidoServicoPermanenteTER_HR_INI.AsString := DBEdit1.Text;
  Fdm1.tPedidoServicoPermanenteQUA_HR_INI.AsString := DBEdit1.Text;
  Fdm1.tPedidoServicoPermanenteQUI_HR_INI.AsString := DBEdit1.Text;
  Fdm1.tPedidoServicoPermanenteSEX_HR_INI.AsString := DBEdit1.Text;
end;

procedure TfOrcServPerm.DBEdit2Exit(Sender: TObject);
begin
  Fdm1.tPedidoServicoPermanenteTER_HR_FIM.AsString := DBEdit2.Text;
  Fdm1.tPedidoServicoPermanenteQUA_HR_FIM.AsString := DBEdit2.Text;
  Fdm1.tPedidoServicoPermanenteQUI_HR_FIM.AsString := DBEdit2.Text;
  Fdm1.tPedidoServicoPermanenteSEX_HR_FIM.AsString := DBEdit2.Text;
  calcHoras;
end;

procedure TfOrcServPerm.JvDBLookupCombo1Exit(Sender: TObject);
begin
  Fdm1.tServico.Filtered := False;
end;

procedure TfOrcServPerm.JvDBLookupCombo1Enter(Sender: TObject);
begin
  Fdm1.tServico.Filtered := False;
  Fdm1.tServico.Filter   := 'PERMANENTE = ''1''';
  Fdm1.tServico.Filtered := True;
end;

procedure TfOrcServPerm.JvDBLookupCombo2Exit(Sender: TObject);
begin
  if JvDBLookupCombo2.Value <> '' then
    Fdm1.tPedidoServicoPermanenteHORAS.AsCurrency := Fdm1.tEscalaQTD_HORAS.AsCurrency;
end;

procedure TfOrcServPerm.FormCreate(Sender: TObject);
begin
  Fdm1.tEscala.Open;
  Fdm1.tCustoHomem.Open;
end;

procedure TfOrcServPerm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tEscala.Close;
  Fdm1.tCustoHomem.Close;
end;

procedure TfOrcServPerm.Label1Click(Sender: TObject);
begin
  if not Fdm1.tServico.Active then
    Fdm1.tServico.Open;
  fServico := TfServico.Create(Self);
  Fdm1.tServico.Insert;
  Fdm1.tServicoDESLOCAMENTO.AsString := '0';
  Fdm1.tServicoVALORHORA.AsString    := '0';
  Fdm1.tServicoAVULSO.AsString       := '0';
  Fdm1.tServicoPERMANENTE.AsString   := '0';
  fServico.ShowModal;
  fServico.Free;
end;

procedure TfOrcServPerm.Label14Click(Sender: TObject);
begin
  fCustoHomem := TfCustoHomem.Create(Self);
  Fdm1.tCustoHomem.Insert;
  Fdm1.tCustoHomemPERCENTUAL.AsString    := '0';
  Fdm1.tCustoHomemPERIODICIDADE.AsString := '1';
  fCustoHomem.ShowModal;
  fCustoHomem.Free;
end;

procedure TfOrcServPerm.DBEdit4Exit(Sender: TObject);
var
  custo: Currency;
begin
  if Fdm1.tPedidoServicoPermanenteHORAS.AsCurrency > 0 then
  begin
    Fdm1.tParametro.Open;
    Fdm1.qInc.Close;
    Fdm1.qInc.SQL.Text := 'SELECT SUM(VALOR) SOMA ' +
                         'FROM CUSTO_HOMEM ' +
                         'WHERE PERCENTUAL = ''1''' +
                         'AND PERIODICIDADE = ''1'''; //custo percentual mensal
    Fdm1.qInc.Open;
    custo := Fdm1.qInc.FieldByName('SOMA').AsCurrency;
    Fdm1.qInc.Close;
    Fdm1.qInc.SQL.Text := 'SELECT SUM(VALOR) SOMA ' +
                         'FROM CUSTO_HOMEM ' +
                         'WHERE PERCENTUAL = ''1''' +
                         'AND PERIODICIDADE = ''2'''; //custo percentual anual
    Fdm1.qInc.Open;
    custo := custo + Fdm1.qInc.FieldByName('SOMA').AsCurrency / 12;
    Fdm1.tPedidoServicoPermanenteVLR.AsCurrency := Fdm1.tParametroVLRHOMEMHR.AsCurrency *
                                                  Fdm1.tPedidoServicoPermanenteHORAS.AsCurrency *
                                                  Fdm1.tPedidoServicoPermanenteQTD.AsCurrency;
    Fdm1.tPedidoServicoPermanenteVLR.AsCurrency := Fdm1.tPedidoServicoPermanenteVLR.AsCurrency *
                                                  (1 + custo / 100);
    Fdm1.qInc.Close;
    Fdm1.qInc.SQL.Text := 'SELECT SUM(VALOR) SOMA ' +
                         'FROM CUSTO_HOMEM ' +
                         'WHERE PERCENTUAL = ''0''' +
                         'AND PERIODICIDADE = ''1'''; //custo mensal
    Fdm1.qInc.Open;
    custo := Fdm1.qInc.FieldByName('SOMA').AsCurrency;
    Fdm1.tPedidoServicoPermanenteVLR.AsCurrency := Fdm1.tPedidoServicoPermanenteVLR.AsCurrency +
                                                  custo * Fdm1.tPedidoServicoPermanenteQTD.AsCurrency;
    Fdm1.qInc.Close;
    Fdm1.qInc.SQL.Text := 'SELECT SUM(VALOR) SOMA ' +
                         'FROM CUSTO_HOMEM ' +
                         'WHERE PERCENTUAL = ''0''' +
                         'AND PERIODICIDADE = ''2'''; //custo anual
    Fdm1.qInc.Open;
    custo := Fdm1.qInc.FieldByName('SOMA').AsCurrency / 12;
    Fdm1.tPedidoServicoPermanenteVLR.AsCurrency := Fdm1.tPedidoServicoPermanenteVLR.AsCurrency +
                                                  custo  * Fdm1.tPedidoServicoPermanenteQTD.AsCurrency;
    Fdm1.qInc.Open;
    Fdm1.tParametro.Close;
  end;
end;

function TfOrcServPerm.calcHoras: Currency;
begin
  if Fdm1.tPedidoServicoPermanenteSEG_HR_FIM.AsFloat <
    Fdm1.tPedidoServicoPermanenteSEG_HR_INI.AsFloat then
    result := (Fdm1.tPedidoServicoPermanenteSEG_HR_FIM.AsFloat + 1 -
     Fdm1.tPedidoServicoPermanenteSEG_HR_INI.AsFloat) * 24
  else
    result := (Fdm1.tPedidoServicoPermanenteSEG_HR_FIM.AsFloat -
              Fdm1.tPedidoServicoPermanenteSEG_HR_INI.AsFloat) * 24;
  if Fdm1.tPedidoServicoPermanenteTER_HR_FIM.AsFloat <
    Fdm1.tPedidoServicoPermanenteTER_HR_INI.AsFloat then
    result := result + (Fdm1.tPedidoServicoPermanenteTER_HR_FIM.AsFloat + 1 -
     Fdm1.tPedidoServicoPermanenteTER_HR_INI.AsFloat) * 24
  else
    result := result + (Fdm1.tPedidoServicoPermanenteTER_HR_FIM.AsFloat -
              Fdm1.tPedidoServicoPermanenteTER_HR_INI.AsFloat) * 24;
  if Fdm1.tPedidoServicoPermanenteQUA_HR_FIM.AsFloat <
    Fdm1.tPedidoServicoPermanenteQUA_HR_INI.AsFloat then
    result := result + (Fdm1.tPedidoServicoPermanenteQUA_HR_FIM.AsFloat + 1 -
     Fdm1.tPedidoServicoPermanenteQUA_HR_INI.AsFloat) * 24
  else
    result := result + (Fdm1.tPedidoServicoPermanenteQUA_HR_FIM.AsFloat -
              Fdm1.tPedidoServicoPermanenteQUA_HR_INI.AsFloat) * 24;
  if Fdm1.tPedidoServicoPermanenteQUI_HR_FIM.AsFloat <
    Fdm1.tPedidoServicoPermanenteQUI_HR_INI.AsFloat then
    result := result + (Fdm1.tPedidoServicoPermanenteQUI_HR_FIM.AsFloat + 1 -
     Fdm1.tPedidoServicoPermanenteQUI_HR_INI.AsFloat) * 24
  else
    result := result + (Fdm1.tPedidoServicoPermanenteQUI_HR_FIM.AsFloat -
              Fdm1.tPedidoServicoPermanenteQUI_HR_INI.AsFloat) * 24;
  if Fdm1.tPedidoServicoPermanenteSEX_HR_FIM.AsFloat <
    Fdm1.tPedidoServicoPermanenteSEX_HR_INI.AsFloat then
    result := result + (Fdm1.tPedidoServicoPermanenteSEX_HR_FIM.AsFloat + 1 -
     Fdm1.tPedidoServicoPermanenteSEX_HR_INI.AsFloat) * 24
  else
    result := result + (Fdm1.tPedidoServicoPermanenteSEX_HR_FIM.AsFloat -
              Fdm1.tPedidoServicoPermanenteSEX_HR_INI.AsFloat) * 24;
  if Fdm1.tPedidoServicoPermanenteSAB_HR_FIM.AsFloat <
    Fdm1.tPedidoServicoPermanenteSAB_HR_INI.AsFloat then
    result := result + (Fdm1.tPedidoServicoPermanenteSAB_HR_FIM.AsFloat + 1 -
     Fdm1.tPedidoServicoPermanenteSAB_HR_INI.AsFloat) * 24
  else
    result := result + (Fdm1.tPedidoServicoPermanenteSAB_HR_FIM.AsFloat -
              Fdm1.tPedidoServicoPermanenteSAB_HR_INI.AsFloat) * 24;
  if Fdm1.tPedidoServicoPermanenteDOM_HR_FIM.AsFloat <
     Fdm1.tPedidoServicoPermanenteDOM_HR_INI.AsFloat then
     result := result + (Fdm1.tPedidoServicoPermanenteDOM_HR_FIM.AsFloat + 1 -
     Fdm1.tPedidoServicoPermanenteDOM_HR_INI.AsFloat) * 24
  else
    result := result + (Fdm1.tPedidoServicoPermanenteDOM_HR_FIM.AsFloat -
              Fdm1.tPedidoServicoPermanenteDOM_HR_INI.AsFloat) * 24;
  Fdm1.tPedidoServicoPermanenteHORAS.AsCurrency := result * 4 * 1.11; //aumento de 11% para completar dias do mes
  DBEdit4Exit(Self);
end;

procedure TfOrcServPerm.DBEdit5Exit(Sender: TObject);
begin
  calcHoras;
end;

procedure TfOrcServPerm.Limpar1Click(Sender: TObject);
begin
  Fdm1.tPedidoServicoPermanente.FieldByName(TDBEdit(Components[ActiveControl.ComponentIndex]).DataField).Clear;
end;

procedure TfOrcServPerm.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
