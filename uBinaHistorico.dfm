object fBinaHistorico: TfBinaHistorico
  Left = 177
  Top = 113
  Width = 669
  Height = 480
  Caption = 'Bina - Hist'#243'rico'
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
  PixelsPerInch = 96
  TextHeight = 13
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 0
    Width = 653
    Height = 444
    Align = alClient
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = JvDBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'N'#218'MERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'QUANT.'
        Visible = True
      end>
  end
  object BinaHistorico: TSQLDataSet
    CommandText = 'select * from BINAHISTORICO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 168
    Top = 104
  end
  object BinaHistoricoP: TDataSetProvider
    DataSet = BinaHistorico
    Left = 216
    Top = 112
  end
  object tBinaHistorico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BinaHistoricoP'
    Left = 288
    Top = 128
    object tBinaHistoricoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tBinaHistoricoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object tBinaHistoricoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object tBinaHistoricoDATA: TDateField
      FieldName = 'DATA'
    end
    object tBinaHistoricoHORA: TTimeField
      FieldName = 'HORA'
    end
    object tBinaHistoricoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object tBinaHistoricoCONT: TIntegerField
      FieldName = 'CONT'
    end
    object tBinaHistoricoPROCEDIMENTO: TMemoField
      FieldName = 'PROCEDIMENTO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsBinaHistorico: TDataSource
    DataSet = tBinaHistorico
    Left = 336
    Top = 152
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 120
    Top = 192
  end
  object BinaHistorico2: TSQLDataSet
    CommandText = 'select * from BINAHISTORICO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 168
    Top = 320
  end
  object BinaHistorico2P: TDataSetProvider
    DataSet = BinaHistorico2
    Left = 216
    Top = 328
  end
  object tBinaHistorico2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BinaHistorico2P'
    Left = 288
    Top = 344
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object StringField2: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object DateField1: TDateField
      FieldName = 'DATA'
    end
    object TimeField1: TTimeField
      FieldName = 'HORA'
    end
    object StringField3: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object IntegerField2: TIntegerField
      FieldName = 'CONT'
    end
    object MemoField1: TMemoField
      FieldName = 'PROCEDIMENTO'
      BlobType = ftMemo
      Size = 1
    end
  end
end
