unit UPrevDuplicatas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, Mask,
   Grids, DBGrids, Db, DBTables, ValorPor, Spin, Variants, Menus,
   DBClient, StdCtrls, FMTBcd, Provider, SqlExpr, UDM1, ExtCtrls, rsDBUtils,
  ComCtrls, SMDBGrid;

type
  TfPrevDuplicatas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    RadioGroup1: TRadioGroup;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ValorPorExtenso1: TValorPorExtenso;
    CURRENCYEDIT1: TEdit;
    CurrencyEdit3: TEdit;
    CurrencyEdit2: TEdit;
    BitBtn1: TBitBtn;
    CReceberParc: TSQLDataSet;
    CReceberParcP: TDataSetProvider;
    tCReceberParc: TClientDataSet;
    dsCReceberParc: TDataSource;
    CReceberParcNUMCRECEBER: TIntegerField;
    CReceberParcPARCELA: TStringField;
    CReceberParcVLRVENCIMENTO: TFloatField;
    CReceberParcDTVENCIMENTO: TDateField;
    CReceberParcQUITADO: TStringField;
    CReceberParcJUROSCALC: TFloatField;
    CReceberParcDTPAGTO: TDateField;
    CReceberParcCODCLIENTE: TIntegerField;
    CReceberParcNUMNOTA: TIntegerField;
    CReceberParcVLRDESCONTO: TFloatField;
    CReceberParcVLRPAGTO: TFloatField;
    CReceberParcVLRRESTANTE: TFloatField;
    CReceberParcCODVENDEDOR: TIntegerField;
    CReceberParcPERCCOMISSAO: TFloatField;
    CReceberParcAGENCIA: TStringField;
    CReceberParcTITPORTADOR: TStringField;
    CReceberParcCODTIPOCOBRANCA: TIntegerField;
    CReceberParcVLRDESPESA: TFloatField;
    CReceberParcCODBANCO: TIntegerField;
    CReceberParcPGCARTORIO: TStringField;
    CReceberParcTITPROTESTADO: TStringField;
    CReceberParcQTDDIASPROT: TIntegerField;
    CReceberParcDTMOVIMENTO: TDateField;
    CReceberParcDIASATRASO: TIntegerField;
    CReceberParcJUROSPAGOS: TFloatField;
    CReceberParcCANCELADO: TStringField;
    CReceberParcTIPODOC: TStringField;
    CReceberParcVLRDEVOLUCAO: TFloatField;
    CReceberParcCODCONDPGTO: TIntegerField;
    CReceberParcDTDEVOLUCAO: TDateField;
    CReceberParcCOBRANCAEMITIDA: TStringField;
    CReceberParcNUMCARTEIRA: TStringField;
    CReceberParcNOSSONUMERO: TStringField;
    CReceberParcIMPRIMIR: TStringField;
    CReceberParcCODCENTROCUSTO: TIntegerField;
    CReceberParcOBS: TBlobField;
    CReceberParcARQGERADO: TStringField;
    CReceberParcIMPBOLETOSICREDICEDENTE: TStringField;
    CReceberParcNUMTITBANCO: TStringField;
    CReceberParcNUMSEQNOSSONUM: TIntegerField;
    CReceberParcITEMSEQNOSSONUM: TIntegerField;
    CReceberParcDUPLICATAIMP: TStringField;
    tCReceberParcNUMCRECEBER: TIntegerField;
    tCReceberParcPARCELA: TStringField;
    tCReceberParcVLRVENCIMENTO: TFloatField;
    tCReceberParcDTVENCIMENTO: TDateField;
    tCReceberParcQUITADO: TStringField;
    tCReceberParcJUROSCALC: TFloatField;
    tCReceberParcDTPAGTO: TDateField;
    tCReceberParcCODCLIENTE: TIntegerField;
    tCReceberParcNUMNOTA: TIntegerField;
    tCReceberParcVLRDESCONTO: TFloatField;
    tCReceberParcVLRPAGTO: TFloatField;
    tCReceberParcVLRRESTANTE: TFloatField;
    tCReceberParcCODVENDEDOR: TIntegerField;
    tCReceberParcPERCCOMISSAO: TFloatField;
    tCReceberParcAGENCIA: TStringField;
    tCReceberParcTITPORTADOR: TStringField;
    tCReceberParcCODTIPOCOBRANCA: TIntegerField;
    tCReceberParcVLRDESPESA: TFloatField;
    tCReceberParcCODBANCO: TIntegerField;
    tCReceberParcPGCARTORIO: TStringField;
    tCReceberParcTITPROTESTADO: TStringField;
    tCReceberParcQTDDIASPROT: TIntegerField;
    tCReceberParcDTMOVIMENTO: TDateField;
    tCReceberParcDIASATRASO: TIntegerField;
    tCReceberParcJUROSPAGOS: TFloatField;
    tCReceberParcCANCELADO: TStringField;
    tCReceberParcTIPODOC: TStringField;
    tCReceberParcVLRDEVOLUCAO: TFloatField;
    tCReceberParcCODCONDPGTO: TIntegerField;
    tCReceberParcDTDEVOLUCAO: TDateField;
    tCReceberParcCOBRANCAEMITIDA: TStringField;
    tCReceberParcNUMCARTEIRA: TStringField;
    tCReceberParcNOSSONUMERO: TStringField;
    tCReceberParcIMPRIMIR: TStringField;
    tCReceberParcCODCENTROCUSTO: TIntegerField;
    tCReceberParcOBS: TBlobField;
    tCReceberParcARQGERADO: TStringField;
    tCReceberParcIMPBOLETOSICREDICEDENTE: TStringField;
    tCReceberParcNUMTITBANCO: TStringField;
    tCReceberParcNUMSEQNOSSONUM: TIntegerField;
    tCReceberParcITEMSEQNOSSONUM: TIntegerField;
    tCReceberParcDUPLICATAIMP: TStringField;
    CReceberParcNOMECLIENTE: TStringField;
    CReceberParcENDERECO: TStringField;
    CReceberParcESTADO: TStringField;
    CReceberParcCEP: TStringField;
    CReceberParcBAIRRO: TStringField;
    CReceberParcCIDADE: TStringField;
    CReceberParcENDCOMPLEMENTO: TStringField;
    CReceberParcNUMERO: TIntegerField;
    CReceberParcCOBENDERECO: TStringField;
    CReceberParcCIDADECOB: TStringField;
    CReceberParcDOCUMENTO: TStringField;
    CReceberParcINSCESTADUAL: TStringField;
    CReceberParcCOBCEP: TStringField;
    tCReceberParcNOMECLIENTE: TStringField;
    tCReceberParcENDERECO: TStringField;
    tCReceberParcESTADO: TStringField;
    tCReceberParcCEP: TStringField;
    tCReceberParcBAIRRO: TStringField;
    tCReceberParcCIDADE: TStringField;
    tCReceberParcENDCOMPLEMENTO: TStringField;
    tCReceberParcNUMERO: TIntegerField;
    tCReceberParcCOBENDERECO: TStringField;
    tCReceberParcCIDADECOB: TStringField;
    tCReceberParcDOCUMENTO: TStringField;
    tCReceberParcINSCESTADUAL: TStringField;
    tCReceberParcCOBCEP: TStringField;
    Label1: TLabel;
    Label6: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    SMDBGrid1: TSMDBGrid;
    BitBtn3: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CurrencyEdit2Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    Fdm1: Tdm1;

  public
    procedure Monta_CReceber(Tipo: String);

    property Dm1: Tdm1 read Fdm1 write Fdm1;

    { Public declarations }
  end;

var
  fPrevDuplicatas: TfPrevDuplicatas;

implementation

uses URelDuplicata;


{$R *.DFM}

procedure TfPrevDuplicatas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(Fdm1);
  Action := Cafree;
end;

procedure TfPrevDuplicatas.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevDuplicatas.RadioGroup1Click(Sender: TObject);
begin
  Panel3.Enabled := not(Panel3.Enabled);
  MaskEdit1.Enabled := RadioGroup1.ItemIndex = 0;
  MaskEdit2.Enabled := RadioGroup1.ItemIndex = 0;
  MaskEdit1.Clear;
  MaskEdit2.Clear;
end;

procedure TfPrevDuplicatas.BitBtn1Enter(Sender: TObject);
begin
 if CurrencyEdit3.Text = '0' then
   CurrencyEdit3.Text := '99999';
end;

procedure TfPrevDuplicatas.BitBtn1Click(Sender: TObject);
begin
  fRelDuplicata := TfRelDuplicata.Create(Self);
  fRelDuplicata.QuickRep1.Preview;
  fRelDuplicata.QuickRep1.Free;
end;

procedure TfPrevDuplicatas.Monta_CReceber(Tipo: String);
begin
  tCReceberParc.Close;
  CReceberParc.CommandText := ' select CRECEBERPARC.*, PESSOA.NOME AS NOMECLIENTE, ' +
     'PESSOA.ENDERECO, pessoa.ESTADO, Pessoa.CEP, pessoa.BAIRRO, '+
     'CIDADE.NOME as CIDADE, PESSOA.ENDCOMPLEMENTO, PESSOA.ENDNUMERO AS NUMERO, '+
     'PESSOA.COBENDERECO, CIDADECOB.NOME AS CIDADECOB, '+
     'pessoa.DOCUMENTO, pessoa.INSCESTADUAL, Pessoa.COBCEP '+
     'from CRECEBERPARC '+
     'left join PESSOA on (PESSOA.ID = CRECEBERPARC.CODCLIENTE) '+
     'left join CIDADE on (CIDADE.ID = PESSOA.CIDADE) '+
     'left join CIDADE CIDADECOB on (CIDADECOB.ID = PESSOA.COBCIDADE) ' +
     ' where CANCELADO = ' + QuotedStr('N');
  if Tipo = 'G' then
  begin
    CReceberParc.CommandText := CReceberParc.CommandText
                              + ' AND DUPLICATAIMP = '  + QuotedStr('N');
    if (MaskEdit1.Text <> '  /  /    ') and (MaskEdit2.Text <> '  /  /    ') then
    CReceberParc.CommandText := CReceberParc.CommandText +
                               ' AND DTVENCIMENTO >= '  + QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(MaskEdit1.Text))) +
                               ' AND DTVENCIMENTO <= '  + QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(MaskEdit2.Text)));

  end
  else
  begin
    CReceberParc.CommandText := CReceberParc.CommandText
                              + ' AND NUMNOTA = ' + CURRENCYEDIT1.Text
                              + ' AND PARCELA >= ' + CurrencyEdit2.Text
                              + ' AND PARCELA <= ' + CurrencyEdit3.Text;
  end;
  CReceberParc.CommandText := CReceberParc.CommandText
                            + ' ORDER BY NUMNOTA, PARCELA';
//  ShowMessage(CReceberParc.CommandText);
  tCReceberParc.Open;
end;

procedure TfPrevDuplicatas.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  Fdm1.tEmpresa.Open;
end;

procedure TfPrevDuplicatas.BitBtn2Click(Sender: TObject);
begin
  MaskEdit1.Clear;
  MaskEdit2.Clear;
  CURRENCYEDIT1.Clear;
  CURRENCYEDIT2.Clear;
  CURRENCYEDIT3.Clear;
end;

procedure TfPrevDuplicatas.CurrencyEdit2Exit(Sender: TObject);
begin
 if CurrencyEdit3.Text = '0' then
   CurrencyEdit3.Text := '99999';
end;

procedure TfPrevDuplicatas.BitBtn3Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then
    Monta_CReceber('G')
  else
  if RadioGroup1.ItemIndex = 1 then
  begin
    if StrToInt(CurrencyEdit2.Text) > StrToInt(CurrencyEdit3.Text) then
    begin
      ShowMessage('Parcela inicial maior que final');
      CurrencyEdit2.SetFocus;
    end
    else
    if (CurrencyEdit1.Text = '0') or (CurrencyEdit3.Text = '0') then
    begin
      ShowMessage('Nº da nota ou o nº da parcela final não podem ser zeros!');
      CurrencyEdit1.SetFocus;
    end
    else
      Monta_CReceber('I');
  end;
end;

end.



