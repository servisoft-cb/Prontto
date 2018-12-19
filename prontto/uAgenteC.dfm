object fAgenteC: TfAgenteC
  Left = 320
  Top = 194
  Width = 538
  Height = 400
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fAgenteC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 329
    Width = 522
    Height = 33
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 3
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Incluir'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 78
      Top = 4
      Width = 75
      Height = 25
      Caption = 'E&xcluir'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 31
    Width = 522
    Height = 298
    Align = alClient
    DataSource = dsAgente
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = JvDBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 350
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 522
    Height = 31
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 12
      Width = 44
      Height = 13
      Caption = 'Consulta:'
    end
    object Edit1: TEdit
      Left = 62
      Top = 4
      Width = 227
      Height = 21
      TabOrder = 0
      Text = '[Digite o nome e pressione F3 para localizar]'
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Servi'#231'os'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 160
    Top = 331
  end
  object sdsAgente: TSQLDataSet
    CommandText = 
      'SELECT ID, NOME, CODIGO'#13#10'FROM PESSOA'#13#10'WHERE AGENTE = '#39'1'#39#13#10'ORDER ' +
      'BY NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 190
    Top = 330
    object sdsAgenteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsAgenteNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object sdsAgenteCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
  end
  object dspAgente: TDataSetProvider
    DataSet = sdsAgente
    Left = 214
    Top = 330
  end
  object cdsAgente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAgente'
    Left = 238
    Top = 330
    object cdsAgenteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAgenteNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object cdsAgenteCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
  end
  object dsAgente: TDataSource
    DataSet = cdsAgente
    Left = 261
    Top = 330
  end
end
