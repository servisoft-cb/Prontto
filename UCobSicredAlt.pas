unit UCobSicredAlt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, VerificaCGC, VerificaCPF, DB, DBTables, JvDBComb,JvLookup;

type
  TfCobSicredAlt = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Bevel2: TBevel;
    Label2: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label19: TLabel;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    Label18: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit10: TDBEdit;
    Bevel1: TBevel;
    Label4: TLabel;
    DBEdit11: TDBEdit;
    Label8: TLabel;
    DBEdit12: TDBEdit;
    Label9: TLabel;
    DBEdit13: TDBEdit;
    Label12: TLabel;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    DBEdit15: TDBEdit;
    Label15: TLabel;
    DBEdit16: TDBEdit;
    Bevel3: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    VerificaCPF1: TVerificaCPF;
    VerificaCGC1: TVerificaCGC;
    DBEdit22: TDBEdit;
    Label16: TLabel;
    Label22: TLabel;
    JvDBComboBox2: TJvDBComboBox;
    JvDBComboBox7: TJvDBComboBox;
    JvDBComboBox4: TJvDBComboBox;
    JvDBComboBox5: TJvDBComboBox;
    JvDBComboBox3: TJvDBComboBox;
    JvDBComboBox6: TJvDBComboBox;
    JvDBComboBox8: TJvDBComboBox;
    JvDBComboBox1: TJvDBComboBox;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCobSicredAlt: TfCobSicredAlt;

implementation

uses UCobSicred;

{$R *.dfm}

procedure TfCobSicredAlt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfCobSicredAlt.BitBtn2Click(Sender: TObject);
begin
  fCobSicred.mBoletos.Cancel;
  Close;
end;

procedure TfCobSicredAlt.BitBtn1Click(Sender: TObject);
var
  vGravar : Boolean;
begin
  vGravar := True;
  if Length(fCobSicred.mBoletosCpfCnpjAvalista.AsString) > 0 then
    begin
      if Length(fCobSicred.mBoletosCpfCnpjAvalista.AsString) = 11 then
        begin
          VerificaCPF1.Entrada := fCobSicred.mBoletosCpfCnpjAvalista.AsString;
          if not VerificaCPF1.Resultado then
            begin
              ShowMessage('Número de CPF inválido!');
              DBEdit12.SetFocus;
              vGravar := False;
            end;
        end
      else
      if Length(fCobSicred.mBoletosCpfCnpjAvalista.AsString) = 14 then
        begin
          VerificaCGC1.Entrada := fCobSicred.mBoletosCpfCnpjAvalista.AsString;
          if not VerificaCGC1.Resultado then
            begin
              ShowMessage('Número de CNPJ inválido!');
              DBEdit12.SetFocus;
              vGravar := False;
            end;
        end
      else
        begin
          ShowMessage('Falta digitos do CNPJ ou CPF!');
          DBEdit12.SetFocus;
          vGravar := False;
        end;
    end;
  if vGravar then
    begin
      if (fCobSicred.mBoletosNomeAvalista.AsString <> '') and (fCobSicred.mBoletosEndAvalista.AsString = '') then
        begin
          ShowMessage('Falta informar o endereço do avalista!');
          vGravar := False;
        end;
    end;
  if vGravar then
    begin
      if (fCobSicred.mBoletosNomeAvalista.AsString <> '') and (fCobSicred.mBoletosCepAvalista.AsString = '') then
        begin
          ShowMessage('Falta informar o CEP do avalista!');
          vGravar := False;
        end;
    end;
  if vGravar then
    begin
      fCobSicred.mBoletos.Post;
      Close;
    end;
end;

end.
