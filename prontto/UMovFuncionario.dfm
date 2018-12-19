object fMovFuncionario: TfMovFuncionario
  Left = 342
  Top = 153
  BorderStyle = bsSingle
  Caption = 'Mov. Funcionario'
  ClientHeight = 544
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 35
    Top = 24
    Width = 47
    Height = 13
    Caption = 'Dt. Inicial:'
  end
  object Label2: TLabel
    Left = 24
    Top = 52
    Width = 58
    Height = 13
    Caption = 'Funcionario:'
  end
  object Label3: TLabel
    Left = 232
    Top = 24
    Width = 42
    Height = 13
    Caption = 'Dt. Final:'
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 88
    Top = 44
    Width = 321
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = qsFuncionario
    TabOrder = 0
  end
  object JvDateEdit1: TJvDateEdit
    Left = 88
    Top = 16
    Width = 121
    Height = 21
    ButtonFlat = False
    NumGlyphs = 2
    TabOrder = 1
  end
  object JvDateEdit2: TJvDateEdit
    Left = 288
    Top = 16
    Width = 121
    Height = 21
    ButtonFlat = False
    NumGlyphs = 2
    TabOrder = 2
  end
  object SMDBGrid1: TSMDBGrid
    Left = 1
    Top = 71
    Width = 765
    Height = 470
    DataSource = dsMovFuncionario
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 9
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NomeFuncionario'
        Title.Alignment = taCenter
        Title.Caption = 'Funcionario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeEvento'
        Title.Alignment = taCenter
        Title.Caption = 'Evento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ano'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Mes'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Horas'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodFuncionario'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodEvento'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 413
    Top = 15
    Width = 141
    Height = 50
    Caption = 'Imprimir'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object MovFuncionario: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodFuncionario'
        DataType = ftInteger
      end
      item
        Name = 'Ano'
        DataType = ftInteger
      end
      item
        Name = 'Mes'
        DataType = ftInteger
      end
      item
        Name = 'Horas'
        DataType = ftFloat
      end
      item
        Name = 'Valor'
        DataType = ftFloat
      end
      item
        Name = 'CodEvento'
        DataType = ftInteger
      end
      item
        Name = 'NomeFuncionario'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NomeEvento'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 160
    Top = 200
    Data = {
      BA0000009619E0BD010000001800000008000000000003000000BA000E436F64
      46756E63696F6E6172696F040001000000000003416E6F040001000000000003
      4D6573040001000000000005486F72617308000400000000000556616C6F7208
      0004000000000009436F644576656E746F04000100000000000F4E6F6D654675
      6E63696F6E6172696F01004900000001000557494454480200020028000A4E6F
      6D654576656E746F01004900000001000557494454480200020028000000}
    object MovFuncionarioCodFuncionario: TIntegerField
      FieldName = 'CodFuncionario'
    end
    object MovFuncionarioAno: TIntegerField
      FieldName = 'Ano'
    end
    object MovFuncionarioMes: TIntegerField
      FieldName = 'Mes'
    end
    object MovFuncionarioHoras: TFloatField
      FieldName = 'Horas'
    end
    object MovFuncionarioValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '0.00'
    end
    object MovFuncionarioCodEvento: TIntegerField
      FieldName = 'CodEvento'
    end
    object MovFuncionarioNomeFuncionario: TStringField
      FieldName = 'NomeFuncionario'
      Size = 40
    end
    object MovFuncionarioNomeEvento: TStringField
      FieldName = 'NomeEvento'
      Size = 40
    end
  end
  object dsMovFuncionario: TDataSource
    DataSet = MovFuncionario
    Left = 192
    Top = 192
  end
  object FuncionarioP: TDataSetProvider
    DataSet = Funcionario
    Left = 152
    Top = 320
  end
  object Funcionario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID, NOME, FUNCIONARIO, TIPOSALARIO, VALORSALARIO'
      'FROM PESSOA'
      'WHERE FUNCIONARIO = '#39'1'#39
      'ORDER BY NOME')
    SQLConnection = Dm1.Conexao
    Left = 120
    Top = 320
  end
  object qFuncionario: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'FuncionarioP'
    Left = 184
    Top = 320
    object qFuncionarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qFuncionarioFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      FixedChar = True
      Size = 1
    end
    object qFuncionarioTIPOSALARIO: TStringField
      FieldName = 'TIPOSALARIO'
      FixedChar = True
      Size = 1
    end
    object qFuncionarioVALORSALARIO: TFloatField
      FieldName = 'VALORSALARIO'
      DisplayFormat = '0.00'
    end
  end
  object qsFuncionario: TDataSource
    DataSet = qFuncionario
    Left = 224
    Top = 320
  end
  object Gera: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT distinct(A.FUNCIONARIO), SUM(A.VALOR) VALOR,  B.ID, B.nom' +
        'e, SUM(A.hora) HORA'
      'FROM VALORES A, EVENTOS B'
      
        'WHERE (A.idevento = B.id) AND (A.dtmov between '#39'10/01/2007'#39' AND ' +
        #39'10/30/2007'#39')'
      'GROUP BY A.FUNCIONARIO, B.nome, B.ID')
    SQLConnection = Dm1.Conexao
    Left = 120
    Top = 448
  end
  object GeraP: TDataSetProvider
    DataSet = Gera
    Left = 152
    Top = 448
  end
  object qGera: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'GeraP'
    Left = 184
    Top = 448
    object qGeraFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
    end
    object qGeraVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qGeraNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object qGeraHORA: TFloatField
      FieldName = 'HORA'
    end
    object qGeraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dsGera: TDataSource
    DataSet = qGera
    Left = 224
    Top = 456
  end
end
