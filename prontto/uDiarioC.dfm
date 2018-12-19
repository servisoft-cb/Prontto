object fDiarioC: TfDiarioC
  Left = 292
  Top = 176
  Width = 800
  Height = 499
  Caption = 'fDiarioC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 435
    Width = 792
    Height = 33
    Align = alBottom
    TabOrder = 1
    object Shape1: TShape
      Left = 325
      Top = 13
      Width = 15
      Height = 15
      Brush.Color = clBlue
    end
    object Label2: TLabel
      Left = 344
      Top = 16
      Width = 117
      Height = 13
      Caption = 'Encerrado pelo operador'
    end
    object Label3: TLabel
      Left = 512
      Top = 15
      Width = 117
      Height = 13
      Caption = 'Sem revis'#227'o da ger'#234'ncia'
    end
    object Shape2: TShape
      Left = 493
      Top = 13
      Width = 15
      Height = 15
      Brush.Color = clRed
    end
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
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn4: TBitBtn
      Left = 153
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 2
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 228
      Top = 4
      Width = 75
      Height = 25
      Hint = 'Revisa todos os di'#225'rios em aberto'
      Caption = '&Revisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn5Click
    end
  end
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 31
    Width = 792
    Height = 323
    Align = alClient
    DataSource = dmDiario.dsDiarioCons
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = JvDBGrid1DblClick
    OnGetCellParams = JvDBGrid1GetCellParams
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clTurno'
        Title.Caption = 'TURNO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPERADOR'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REVISADO_POR'
        Title.Caption = 'REVISOR'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REVISADO_HORA'
        Width = 64
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 31
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 14
      Width = 59
      Height = 13
      Caption = 'Consulta de:'
    end
    object Label4: TLabel
      Left = 192
      Top = 14
      Width = 19
      Height = 13
      Caption = 'At'#233':'
    end
    object BitBtn3: TBitBtn
      Left = 344
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Consulta'
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object JvDateEdit1: TJvDateEdit
      Left = 215
      Top = 6
      Width = 90
      Height = 21
      ButtonFlat = False
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 2
    end
    object JvDateEdit2: TJvDateEdit
      Left = 74
      Top = 6
      Width = 90
      Height = 21
      ButtonFlat = False
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 0
    end
  end
  object DBMemo1: TDBMemo
    Left = 0
    Top = 354
    Width = 792
    Height = 81
    Align = alBottom
    DataField = 'OBS'
    ReadOnly = True
    TabOrder = 3
  end
  object UCControls1: TUCControls
    GroupName = 'Diario'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 323
    Top = 428
  end
  object sdsPessoaServico: TSQLDataSet
    CommandText = 
      'SELECT P.ID, P.NOME, S.ALARME, S.AVULSO, S.CAMERA, S.PORTARIA, S' +
      '.RONDA'#13#10'FROM PESSOA P'#13#10'INNER JOIN PESSOA_SERVICO PS ON (P.ID = P' +
      'S.PESSOA_ID)'#13#10'INNER JOIN SERVICO S ON (PS.SERVICO_ID = S.ID)'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 582
    Top = 48
    object sdsPessoaServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPessoaServicoNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object sdsPessoaServicoALARME: TStringField
      FieldName = 'ALARME'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaServicoAVULSO: TStringField
      FieldName = 'AVULSO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaServicoCAMERA: TStringField
      FieldName = 'CAMERA'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaServicoPORTARIA: TStringField
      FieldName = 'PORTARIA'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaServicoRONDA: TStringField
      FieldName = 'RONDA'
      FixedChar = True
      Size = 1
    end
  end
  object dspPessoaServico: TDataSetProvider
    DataSet = sdsPessoaServico
    Left = 606
    Top = 48
  end
  object cdsPessoaServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoaServico'
    Left = 630
    Top = 48
    object cdsPessoaServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPessoaServicoNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object cdsPessoaServicoALARME: TStringField
      FieldName = 'ALARME'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaServicoAVULSO: TStringField
      FieldName = 'AVULSO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaServicoCAMERA: TStringField
      FieldName = 'CAMERA'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaServicoPORTARIA: TStringField
      FieldName = 'PORTARIA'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaServicoRONDA: TStringField
      FieldName = 'RONDA'
      FixedChar = True
      Size = 1
    end
  end
  object dsPessoaServico: TDataSource
    DataSet = cdsPessoaServico
    Left = 653
    Top = 48
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 352
    Top = 429
  end
end
