object fBcoSicredi: TfBcoSicredi
  Left = 253
  Top = 80
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Par'#226'metros do arquivo'
  ClientHeight = 394
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 480
    Height = 394
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 4
      Top = 4
      Width = 469
      Height = 31
      BevelOuter = bvLowered
      TabOrder = 0
      object BitBtn2: TBitBtn
        Left = 21
        Top = 3
        Width = 85
        Height = 25
        Hint = 'Altera os dados abaixo'
        Caption = '&Alterar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtn2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
      end
      object BitBtn3: TBitBtn
        Left = 361
        Top = 3
        Width = 85
        Height = 25
        Hint = 'Fecha a janela atual'
        Caption = '&Fechar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitBtn3Click
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F0000000CE0E0000D80E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777777000077777777777777777777000077778787878780E0787700007778
          7878787870E60787000077700000000780E66007000077777777770870E66077
          000077777777770000E66077000077777770070770E66077000077777770E007
          70E06077000077700000EE0770E6607700007770EEEEEE6070E6607700007770
          0000E60770E66077000077777770600770E66077000077777770070770E66077
          0000777777777707770E607700007777777777077770E0770000777777777700
          0000007700007777777777777777777700007777777777777777777700007777
          77777777777777770000}
      end
      object BitBtn5: TBitBtn
        Left = 276
        Top = 3
        Width = 85
        Height = 25
        Hint = 'Confirma as altera'#231#245'es abaixo'
        Cancel = True
        Caption = '&Confirmar'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BitBtn5Click
        Glyph.Data = {
          CE070000424DCE07000000000000360000002800000024000000120000000100
          18000000000098070000CE0E0000D80E00000000000000000000008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080FFFFFF008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8080000080000000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080808080808080FFFFFF
          FFFFFF0080800080800080800080800080800080800080800080800080800080
          8000808000808000808080000000800000800080000000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          808080808080808080808080FFFFFFFFFFFF0080800080800080800080800080
          8000808000808000808000808000808000808080000000800000800000800000
          8000800000008080008080008080008080008080008080008080008080008080
          008080008080008080808080808080808080808080808080808080FFFFFFFFFF
          FF00808000808000808000808000808000808000808000808000808080000000
          8000008000008000008000008000008000800000008080008080008080008080
          0080800080800080800080800080800080808080808080808080808080808080
          80808080808080808080808080FFFFFF00808000808000808000808000808000
          808000808080000000800000800000800000FF00008000008000008000008000
          8000000080800080800080800080800080800080800080800080808080808080
          80808080808080FFFFFF808080808080808080808080808080FFFFFF00808000
          808000808000808000808000808000808000800000800000800000FF00008080
          00FF000080000080000080008000000080800080800080800080800080800080
          80008080008080808080808080808080FFFFFF008080FFFFFF80808080808080
          8080808080FFFFFFFFFFFF00808000808000808000808000808000808000FF00
          00800000FF0000808000808000808000FF000080000080000080008000000080
          80008080008080008080008080008080008080808080808080FFFFFF00808000
          8080008080FFFFFF808080808080808080808080FFFFFFFFFFFF008080008080
          00808000808000808000808000FF0000808000808000808000808000808000FF
          0000800000800000800080000000808000808000808000808000808000808000
          8080FFFFFF008080008080008080008080008080FFFFFF808080808080808080
          808080FFFFFFFFFFFF0080800080800080800080800080800080800080800080
          8000808000808000808000808000FF0000800000800000800080000000808000
          8080008080008080008080008080008080008080008080008080008080008080
          008080FFFFFF808080808080808080808080FFFFFFFFFFFF0080800080800080
          8000808000808000808000808000808000808000808000808000808000FF0000
          8000008000008000800000008080008080008080008080008080008080008080
          008080008080008080008080008080008080FFFFFF8080808080808080808080
          80FFFFFF00808000808000808000808000808000808000808000808000808000
          808000808000808000808000FF00008000008000008000800000008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          80FFFFFF808080808080808080808080FFFFFF00808000808000808000808000
          808000808000808000808000808000808000808000808000808000FF00008000
          0080000080008000000080800080800080800080800080800080800080800080
          80008080008080008080008080008080FFFFFF808080808080808080808080FF
          FFFF008080008080008080008080008080008080008080008080008080008080
          00808000808000808000FF000080000080008000000080800080800080800080
          80008080008080008080008080008080008080008080008080008080008080FF
          FFFF808080808080808080008080008080008080008080008080008080008080
          00808000808000808000808000808000808000808000808000FF000080000080
          0000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080FFFFFF808080808080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000FF0000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080FFFFFF
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          008080008080008080008080008080008080}
        NumGlyphs = 2
      end
      object BitBtn4: TBitBtn
        Left = 191
        Top = 3
        Width = 85
        Height = 25
        Hint = 'Abre a tela de boletos'
        Caption = '&Boletos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn4Click
        Glyph.Data = {
          76030000424D7603000000000000360000002800000011000000100000000100
          18000000000040030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000000000000000000000
          00000000000000BFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBF7F0000BFBFBF
          BFBFBFBFBFBF000000000000000000000000000000000000000000000000BFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBF7F00007F0000BFBFBFBFBFBF000000007F7F
          007F7F007F7F007F7F007F7F00000000000000000000BFBFBF7F00007F00007F
          00007F00007F00007F0000BFBFBF000000000000000000000000000000000000
          000000007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBF7F00007F0000BFBFBFBF
          BFBF000000FFFFFFBFBFBFFFFFFFBFBFBFFFFFFFBFBFBF00000000000000BFBF
          BFBFBFBFBFBFBFBFBFBF7F0000BFBFBFBFBFBFBFBFBF00000000000000000000
          0000000000000000BFBFBF7F7F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
          0000BFBFBF00BFBFBFBFBFBFBFBFBF000000000000000000000000000000BFBF
          BF000000FFFFFF7F7F7F7F7F7FFFFFFF000000BFBFBFBFBFBF00BFBFBFBFBFBF
          BFBFBF000000FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF000000FFFFFFFFFF
          FFFFFFFFFFFFFF000000BFBFBF00BFBFBF000000000000000000000000000000
          FFFFFF000000BFBFBFBFBFBFBFBFBF000000000000000000000000000000BFBF
          BF00BFBFBF000000FFFFFFFFFFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF000000FFFFFF7F
          7F7FFFFFFF000000000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF00BFBFBF000000FFFFFF7F7F7FFFFFFF000000000000BF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBF
          BF000000FFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF0000000000000000000000
          00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00}
      end
      object BitBtn1: TBitBtn
        Left = 106
        Top = 3
        Width = 85
        Height = 25
        Hint = 'Cancela as altera'#231#245'es abaixo'
        Cancel = True
        Caption = 'Ca&ncelar'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = BitBtn1Click
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
    object Panel3: TPanel
      Left = 4
      Top = 38
      Width = 468
      Height = 355
      BevelOuter = bvLowered
      Enabled = False
      TabOrder = 1
      object Label1: TLabel
        Left = 50
        Top = 33
        Width = 83
        Height = 13
        Caption = 'C'#243'd. do Cedente:'
      end
      object Label3: TLabel
        Left = 55
        Top = 56
        Width = 78
        Height = 13
        Caption = 'Tipo de Carteira:'
      end
      object Label5: TLabel
        Left = 36
        Top = 125
        Width = 97
        Height = 13
        Caption = 'Esp'#233'cie documento:'
      end
      object Label6: TLabel
        Left = 60
        Top = 147
        Width = 73
        Height = 13
        Caption = 'C'#243'd. do Aceite:'
      end
      object Label10: TLabel
        Left = 248
        Top = 215
        Width = 138
        Height = 13
        Caption = 'Vlr/% Juros por dia de atraso:'
      end
      object Label13: TLabel
        Left = 53
        Top = 192
        Width = 80
        Height = 13
        Alignment = taRightJustify
        Caption = 'Dias p/ Protesto:'
      end
      object Label15: TLabel
        Left = 49
        Top = 315
        Width = 85
        Height = 13
        Caption = 'Nome do Arquivo:'
      end
      object Label16: TLabel
        Left = 273
        Top = 315
        Width = 101
        Height = 13
        Caption = 'Extens'#227'o do Arquivo:'
      end
      object Label2: TLabel
        Left = 86
        Top = 78
        Width = 47
        Height = 13
        Alignment = taRightJustify
        Caption = 'Instru'#231#227'o:'
      end
      object Label17: TLabel
        Left = 55
        Top = 169
        Width = 76
        Height = 13
        Caption = 'Inst.de protesto:'
      end
      object Label19: TLabel
        Left = 231
        Top = 261
        Width = 155
        Height = 13
        Caption = 'Vlr.Desc.por dia de antecipa'#231#227'o:'
      end
      object Label4: TLabel
        Left = 73
        Top = 337
        Width = 62
        Height = 13
        Caption = 'N'#186' Remessa:'
      end
      object Bevel1: TBevel
        Left = 0
        Top = 275
        Width = 468
        Height = 2
        Shape = bsTopLine
        Style = bsRaised
      end
      object Label8: TLabel
        Left = 99
        Top = 8
        Width = 34
        Height = 13
        Caption = 'Banco:'
      end
      object Label11: TLabel
        Left = 66
        Top = 213
        Width = 67
        Height = 13
        Caption = 'Tipo de Juros:'
      end
      object Label14: TLabel
        Left = 55
        Top = 103
        Width = 78
        Height = 13
        Caption = 'Campo Alterado:'
      end
      object Label18: TLabel
        Left = 36
        Top = 286
        Width = 98
        Height = 13
        Caption = 'Caminho do Arquivo:'
      end
      object Label9: TLabel
        Left = 330
        Top = 191
        Width = 56
        Height = 13
        Caption = 'Taxa Multa:'
      end
      object Label12: TLabel
        Left = 45
        Top = 237
        Width = 88
        Height = 13
        Caption = 'Tipo de Desconto:'
      end
      object Label7: TLabel
        Left = 296
        Top = 238
        Width = 90
        Height = 13
        Caption = 'Vlr/% do desconto:'
      end
      object DBEdit1: TDBEdit
        Left = 136
        Top = 27
        Width = 112
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CODCEDENTE'
        DataSource = Dm1.dsBcoSicredi
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 390
        Top = 207
        Width = 69
        Height = 21
        CharCase = ecUpperCase
        DataField = 'VLRJUROSPORDIA'
        DataSource = Dm1.dsBcoSicredi
        TabOrder = 11
      end
      object DBEdit6: TDBEdit
        Left = 136
        Top = 184
        Width = 36
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DIASPROTESTO'
        DataSource = Dm1.dsBcoSicredi
        TabOrder = 8
      end
      object DBEdit7: TDBEdit
        Left = 137
        Top = 307
        Width = 119
        Height = 21
        DataField = 'NOME'
        DataSource = Dm1.dsBcoSicredi
        TabOrder = 15
        OnKeyDown = DBEdit7KeyDown
      end
      object DBEdit8: TDBEdit
        Left = 377
        Top = 307
        Width = 56
        Height = 21
        CharCase = ecUpperCase
        DataField = 'EXTENSAO'
        DataSource = Dm1.dsBcoSicredi
        TabOrder = 16
      end
      object DBEdit2: TDBEdit
        Left = 390
        Top = 253
        Width = 69
        Height = 21
        CharCase = ecUpperCase
        DataField = 'VLRDESCONTO'
        DataSource = Dm1.dsBcoSicredi
        TabOrder = 14
      end
      object DBEdit5: TDBEdit
        Left = 137
        Top = 330
        Width = 76
        Height = 21
        Color = clInfoBk
        DataField = 'NUMREMESSA'
        DataSource = Dm1.dsBcoSicredi
        ReadOnly = True
        TabOrder = 17
        OnKeyDown = DBEdit5KeyDown
      end
      object JvDBLookupCombo1: TJvDBLookupCombo
        Left = 136
        Top = 4
        Width = 326
        Height = 21
        DropDownCount = 8
        DataField = 'CodConta'
        DataSource = Dm1.dsBcoSicredi
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DmCons.qsBanco
        TabOrder = 0
      end
      object JvDBComboBox1: TJvDBComboBox
        Left = 136
        Top = 49
        Width = 325
        Height = 21
        Style = csDropDownList
        DataField = 'CARTEIRA'
        DataSource = Dm1.dsBcoSicredi
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'COBRAN'#199'A SIMPLES')
        TabOrder = 2
        Values.Strings = (
          'A')
      end
      object JvDBComboBox2: TJvDBComboBox
        Left = 136
        Top = 71
        Width = 325
        Height = 21
        Style = csDropDownList
        DataField = 'INSTRUCAO'
        DataSource = Dm1.dsBcoSicredi
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Cadastro de t'#237'tulo'
          'Pedido de baixa'
          'Concess'#227'o de abatimento'
          'Cancelamento de abatimento concedido'
          'Altera'#231#227'o de vencimento'
          'Pedido de protesto'
          'Sustar protesto e baixar t'#237'tulo'
          'Sustar protesto e manter em carteira'
          'Altera'#231#227'o de outros dados')
        TabOrder = 3
        Values.Strings = (
          '01'
          '02'
          '04'
          '05'
          '06'
          '09'
          '18'
          '19'
          '31')
      end
      object JvDBComboBox3: TJvDBComboBox
        Left = 136
        Top = 162
        Width = 325
        Height = 21
        Style = csDropDownList
        DataField = 'INSTPROTESTO'
        DataSource = Dm1.dsBcoSicredi
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          '00 - N'#227'o protestar automaticamente'
          '06 - Protestar automaticamente')
        TabOrder = 7
        Values.Strings = (
          '00'
          '06')
      end
      object JvDBComboBox4: TJvDBComboBox
        Left = 136
        Top = 118
        Width = 325
        Height = 21
        Style = csDropDownList
        DataField = 'ESPECIEDOC'
        DataSource = Dm1.dsBcoSicredi
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Duplicata mercantil por indica'#231#227'o'
          'Duplicata rural'
          'Nota promiss'#243'ria'
          'Nota promiss'#243'ria rural'
          'Nota de seguros'
          'Cobran'#231'a seriada - carn'#234
          'Recibo'
          'Letra de c'#226'mbio'
          'Nota de d'#233'bito'
          'Duplicata de servi'#231'o por indica'#231#227'o'
          'Outros')
        TabOrder = 5
        Values.Strings = (
          'A'
          'B'
          'C'
          'D'
          'E'
          'F'
          'G'
          'H'
          'I'
          'J'
          'K')
      end
      object JvDBComboBox5: TJvDBComboBox
        Left = 136
        Top = 140
        Width = 96
        Height = 21
        Style = csDropDownList
        DataField = 'ACEITE'
        DataSource = Dm1.dsBcoSicredi
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 6
        Values.Strings = (
          'S'
          'N')
      end
      object JvDBComboBox6: TJvDBComboBox
        Left = 136
        Top = 206
        Width = 96
        Height = 21
        Style = csDropDownList
        DataField = 'TIPOJURO'
        DataSource = Dm1.dsBcoSicredi
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Valor'
          'Percentual')
        TabOrder = 10
        Values.Strings = (
          'A'
          'B')
      end
      object JvDBComboBox7: TJvDBComboBox
        Left = 136
        Top = 94
        Width = 325
        Height = 21
        Style = csDropDownList
        DataField = 'CAMPOALTERADO'
        DataSource = Dm1.dsBcoSicredi
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Desconto'
          'Juros por dia'
          'Desconto por dia de antecipa'#231#227'o'
          'Data limite para concess'#227'o de desconto'
          'Cancelamento de protesto autom'#225'tico'
          'Carteira de cobran'#231'a')
        TabOrder = 4
        Values.Strings = (
          'A'
          'B'
          'C'
          'D'
          'E'
          'F')
      end
      object DBEdit9: TDBEdit
        Left = 390
        Top = 183
        Width = 69
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TaxaMulta'
        DataSource = Dm1.dsBcoSicredi
        TabOrder = 9
      end
      object JvDBComboBox8: TJvDBComboBox
        Left = 136
        Top = 230
        Width = 96
        Height = 21
        Style = csDropDownList
        DataField = 'TIPODESCONTO'
        DataSource = Dm1.dsBcoSicredi
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Valor'
          'Percentual')
        TabOrder = 12
        Values.Strings = (
          'A'
          'B')
      end
      object DBEdit4: TDBEdit
        Left = 390
        Top = 230
        Width = 69
        Height = 21
        CharCase = ecUpperCase
        DataField = 'VLRDESCONTO'
        DataSource = Dm1.dsBcoSicredi
        TabOrder = 13
      end
      object DBEdit10: TDBEdit
        Left = 137
        Top = 283
        Width = 296
        Height = 21
        DataField = 'CAMINHO'
        DataSource = Dm1.dsBcoSicredi
        TabOrder = 18
        OnKeyDown = DBEdit7KeyDown
      end
    end
  end
end
