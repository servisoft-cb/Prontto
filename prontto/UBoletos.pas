unit UBoletos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvLookup, StdCtrls, Grids, DBGrids, JvDBCtrl, Buttons,
  JvEdit, JvTypedEdit, Mask, JvToolEdit, SMDBGrid, ExtCtrls, UDm1, rsDBUtils;

type
  TfBoletos = class(TForm)
    Label1: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    JvDBGrid1: TJvDBGrid;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    JvYearEdit1: TJvYearEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    JvIntegerEdit1: TJvIntegerEdit;
    Label5: TLabel;
    Edit1: TEdit;
    Label6: TLabel;
    Edit2: TEdit;
    Bevel1: TBevel;
    Label7: TLabel;
    JvDateEdit1: TJvDateEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Instrucao1: TJvDBLookupCombo;
    Instrucao2: TJvDBLookupCombo;
    Instrucao3: TJvDBLookupCombo;
    Instrucao4: TJvDBLookupCombo;
    Instrucao5: TJvDBLookupCombo;
    CheckBox1: TCheckBox;
    Label13: TLabel;
    JvDateEdit2: TJvDateEdit;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    Fdm1: Tdm1;
    procedure GeraCReceber(cliente,numNota: Integer; vlr: Currency; vcto: TDateTime);
  public
    { Public declarations }
  end;

var
  fBoletos: TfBoletos;

implementation

uses DateUtils, URelBoletos, UGBoleto, UBcoItau;

{$R *.dfm}

procedure TfBoletos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Fdm1.tClienteAcc.Close;
  Fdm1.tInstrCobranca.Close;
  Action := Cafree;
end;

procedure TfBoletos.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tClienteAcc.Filtered := False;
  JvDBLookupCombo1.ClearValue;
  JvYearEdit1.Value := YearOf(Date);
  JvIntegerEdit1.Value := 0;
  JvDateEdit1.Date := Date;
  JvDateEdit2.Clear;
  Edit2.Clear;
  CheckBox1.Checked := False;
  Instrucao1.ClearValue;
  Instrucao2.ClearValue;
  Instrucao3.ClearValue;
  Instrucao4.ClearValue;
  Instrucao5.ClearValue;
end;

procedure TfBoletos.FormShow(Sender: TObject);
begin
  Fdm1.tInstrCobranca.Open;
  JvDBLookupCombo1.ClearValue;
  ComboBox1.ItemIndex := MonthOfTheYear(Date) - 1;
  JvYearEdit1.Value := YearOf(Date);
  JvDateEdit1.Date := Date;
  CheckBox1Click(Sender);
end;

procedure TfBoletos.BitBtn3Click(Sender: TObject);
var
  Texto1, Texto2 : String;
  I : Integer;
  F : TextFile;
begin
  if (Edit1.Text = '') then
    begin
      ShowMessage('Não existe caminho para a impressão!');
      Edit1.SetFocus;
    end
  else
  if (ComboBox1.Text = '') then
    begin
      ShowMessage('Deve haver um mês selecionado para efetuar impressão!');
      ComboBox1.SetFocus;
    end
  else
    begin
      if JvDBLookupCombo1.Text <> '' then
        begin
          fRelBoletos := TfRelBoletos.Create(Self);
          fRelBoletos.QuickRep1.Preview;
          fRelBoletos.QuickRep1.Free;
        end
      else
        begin
          AssignFile(F,Edit1.Text);
          ReWrite(F);
          Fdm1.tClienteACC.First;
          while not Fdm1.tClienteACC.Eof do
            begin
              Write(F,'0'#15);
              for i := 1 to Fdm1.tParametroLINHASBOLETO.AsInteger do
                Writeln(F);
              //Linha do local de pagamento e data do vencimento
              Texto2 := Copy(Edit2.Text,1,82);
              for i := 1 to 82 - length(Texto2) do
                texto2 := texto2 + ' ';
              if CheckBox1.Checked then
                texto1 := texto2 + '         ' + JvDateEdit2.Text
              else
                texto1 := texto2 + '         ' + Fdm1.tClienteAccDiaVencimento.AsString + '/' + IntToStr(ComboBox1.ItemIndex + 1) + '/' + IntToStr(JvYearEdit1.Value);
              Writeln(F,texto1);

              for i := 1 to 3 do //era 4
                Writeln(F);

              //Linha da data e o número do documento
              texto2 := JvDateEdit1.Text;
              for i := 1 to 11 - length(texto2) do
                texto2 := texto2 + ' ';
              Writeln(F,texto2);
              Writeln(F);

              //Linha do valor do documento
              texto2 := '';
              for i := 1 to 98 do
                texto2 := ' ' + texto2;
              texto2 := texto2 + FormatFloat('###,###,##0.00',Fdm1.tClienteAccValor.AsFloat);
              Writeln(F,texto2);
              for i := 1 to 2 do
                Writeln(F);

              //Linha das instruções
              for i := 1 to 5 do
                Writeln(F,TJvDBLookupCombo(FindComponent('Instrucao'+IntToStr(I))).Text);

              for i := 1 to 4 do
                Writeln(F);

              //Linha dos dados do cliente
              texto1 := Fdm1.tClienteACCNOME.AsString + '       ' + Fdm1.tClienteAccCPFCNPJ.AsString;
              Writeln(F,texto1);

              Writeln(F,Fdm1.tClienteACCEndereco.AsString + ' - ' + Fdm1.tClienteACCBairro.AsString + ' Cep: ' + Fdm1.tClienteACCCEP.AsString);
              Writeln(F,Fdm1.tClienteACClkCidade.AsString + ' - ' + Fdm1.tClienteACCUF.AsString);

              for i := 1 to Fdm1.tParametroLINHASPULOBOLETO.AsInteger do // era 8
                Writeln(F);

              GeraCReceber(Fdm1.tClienteAccIdCliente.AsInteger,
                           StrToInt(JvYearEdit1.Text + FormatFloat('00',ComboBox1.ItemIndex + 1)),
                           Fdm1.tClienteAccValor.AsCurrency,
                           StrToDate(Fdm1.tClienteAccDiaVencimento.AsString + '/' +
                           IntToStr(ComboBox1.ItemIndex + 1) + '/' + IntToStr(JvYearEdit1.Value)));
              Fdm1.tClienteACC.Next;
            end;
          CloseFile(F);
          BitBtn2.Click;
          ShowMessage('Impressão concluída');
        end;
    end;
end;

procedure TfBoletos.CheckBox1Click(Sender: TObject);
begin
  JvDateEdit2.Enabled := CheckBox1.Checked;
end;

procedure TfBoletos.FormCreate(Sender: TObject);
begin
  Fdm1.tInstrCobranca.Open;
  Fdm1.tClienteAcc.Open;
  Fdm1.tClienteAcc.IndexFieldNames := 'NOME';
end;

procedure TfBoletos.GeraCReceber(cliente,numNota: Integer; vlr: Currency; vcto: TDateTime);
begin
  if not Fdm1.tCReceberParc.Active then
    Fdm1.tCReceberParc.Open;
  Fdm1.tCReceberParc.Insert;
  Fdm1.tCReceberParcNUMCRECEBER.AsInteger   := Fdm1.Incrementa('NUMCRECEBER','CRECEBERPARC');
  Fdm1.tCReceberParcPARCELA.AsInteger       := 1;
  Fdm1.tCReceberParcVLRVENCIMENTO.AsFloat   := StrToFloat(FormatFloat('0.00',vlr)); //Fdm1.tNotaFiscalParcVLRVENCIMENTO.AsFloat;
  Fdm1.tCReceberParcVLRRESTANTE.AsFloat     := StrToFloat(FormatFloat('0.00',vlr)); //Fdm1.tNotaFiscalParcVLRVENCIMENTO.AsFloat;
  Fdm1.tCReceberParcDTVENCIMENTO.AsDateTime := vcto;//Fdm1.tNotaFiscalParcDTVENCIMENTO.AsDateTime;
  Fdm1.tCReceberParcCODCLIENTE.AsInteger    := cliente;//Fdm1.tNotaFiscalCODCLIENTE.AsInteger;
  Fdm1.tCReceberParcNUMNOTA.AsInteger       := numNota; //ano + mes
  Fdm1.tCReceberParcDTMOVIMENTO.AsDateTime  := Date;
  Fdm1.tCReceberParcTIPODOC.AsString        := 'CA'; //Cobrança avulsa
  Fdm1.tCReceberParc.Post;
  Fdm1.tCReceberParc.ApplyUpdates(0);
end;

procedure TfBoletos.BitBtn4Click(Sender: TObject);
begin
  fBCoItau := TfBCoItau.Create(Self);
  fBCoItau.ShowModal;
end;

end.
