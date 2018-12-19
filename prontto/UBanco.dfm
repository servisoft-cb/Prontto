object fBanco: TfBanco
  Left = 358
  Top = 150
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Banco'
  ClientHeight = 451
  ClientWidth = 498
  Color = 10930928
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
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 498
    Height = 451
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Consulta'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 490
        Height = 423
        Align = alClient
        BevelOuter = bvLowered
        Color = 10930928
        TabOrder = 0
        object Label2: TLabel
          Left = 10
          Top = 17
          Width = 44
          Height = 13
          Caption = 'Consulta:'
        end
        object JvDBGrid1: TJvDBGrid
          Left = 1
          Top = 74
          Width = 488
          Height = 348
          Align = alBottom
          DataSource = DmCons.qsBanco
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = JvDBGrid1DblClick
          OnTitleClick = JvDBGrid1TitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Alignment = taCenter
              Title.Caption = 'Nome'
              Width = 220
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SALDO'
              Title.Alignment = taCenter
              Title.Caption = 'Saldo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPOBANCO'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo de Conta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AGENCIA'
              Title.Alignment = taCenter
              Title.Caption = 'Ag'#234'ncia'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMCONTA'
              Title.Caption = 'Conta'
              Visible = True
            end>
        end
        object JvComboBox1: TJvComboBox
          Left = 56
          Top = 8
          Width = 125
          Height = 21
          MaxPixel.Font.Charset = DEFAULT_CHARSET
          MaxPixel.Font.Color = clWindowText
          MaxPixel.Font.Height = -11
          MaxPixel.Font.Name = 'MS Sans Serif'
          MaxPixel.Font.Style = []
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 1
          OnEnter = JvComboBox1Enter
          Items.Strings = (
            'Nome'
            'Ag'#234'ncia')
        end
        object Edit1: TEdit
          Left = 183
          Top = 8
          Width = 244
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
          OnChange = Edit1Change
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados Gerais'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 490
        Height = 386
        Align = alClient
        BevelOuter = bvLowered
        Color = 10930928
        Enabled = False
        TabOrder = 0
        object Label4: TLabel
          Left = 58
          Top = 24
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 10
          Top = 46
          Width = 85
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'd. FEBRABAN:'
        end
        object Label5: TLabel
          Left = 53
          Top = 68
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ag'#234'ncia:'
        end
        object Label3: TLabel
          Left = 49
          Top = 90
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#186' Conta:'
        end
        object Label6: TLabel
          Left = 190
          Top = 90
          Width = 32
          Height = 13
          Alignment = taRightJustify
          Caption = 'D'#237'gito:'
        end
        object Label14: TLabel
          Left = 190
          Top = 68
          Width = 32
          Height = 13
          Alignment = taRightJustify
          Caption = 'D'#237'gito:'
        end
        object Label15: TLabel
          Left = 74
          Top = 112
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo:'
        end
        object DBEdit1: TDBEdit
          Left = 100
          Top = 16
          Width = 341
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = Dm1.dsBanco
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 100
          Top = 38
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COD_FEBRABAN'
          DataSource = Dm1.dsBanco
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 100
          Top = 60
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          DataField = 'AGENCIA'
          DataSource = Dm1.dsBanco
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 100
          Top = 82
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMCONTA'
          DataSource = Dm1.dsBanco
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 227
          Top = 82
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DIGCONTA'
          DataSource = Dm1.dsBanco
          TabOrder = 5
        end
        object PageControl2: TPageControl
          Left = 1
          Top = 129
          Width = 488
          Height = 256
          ActivePage = TabSheet4
          Align = alBottom
          TabOrder = 7
          object TabSheet4: TTabSheet
            Caption = 'Cobran'#231'a'
            ImageIndex = 1
            object Label10: TLabel
              Left = 28
              Top = 55
              Width = 67
              Height = 13
              Alignment = taRightJustify
              Caption = 'Juros (% m'#234's):'
            end
            object Label11: TLabel
              Left = 49
              Top = 77
              Width = 46
              Height = 13
              Alignment = taRightJustify
              Caption = 'Multa (%):'
            end
            object Label12: TLabel
              Left = 30
              Top = 99
              Width = 65
              Height = 13
              Alignment = taRightJustify
              Caption = 'Dias protesto:'
            end
            object Label13: TLabel
              Left = 21
              Top = 11
              Width = 74
              Height = 13
              Alignment = taRightJustify
              Caption = 'C'#243'd. Cendente:'
            end
            object Label16: TLabel
              Left = 56
              Top = 121
              Width = 39
              Height = 13
              Alignment = taRightJustify
              Caption = 'Carteira:'
            end
            object Label17: TLabel
              Left = 8
              Top = 33
              Width = 87
              Height = 13
              Alignment = taRightJustify
              Caption = 'C'#243'd. Transmiss'#227'o:'
            end
            object Label18: TLabel
              Left = 40
              Top = 143
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = 'Ocorr'#234'ncia:'
            end
            object Label19: TLabel
              Left = 39
              Top = 165
              Width = 56
              Height = 13
              Alignment = taRightJustify
              Caption = 'Instru'#231#227'o 1:'
            end
            object Label20: TLabel
              Left = 199
              Top = 165
              Width = 56
              Height = 13
              Alignment = taRightJustify
              Caption = 'Instru'#231#227'o 2:'
            end
            object Label21: TLabel
              Left = 214
              Top = 121
              Width = 41
              Height = 13
              Alignment = taRightJustify
              Caption = 'Esp'#233'cie:'
            end
            object Label24: TLabel
              Left = 214
              Top = 55
              Width = 41
              Height = 13
              Alignment = taRightJustify
              Caption = 'Formato:'
            end
            object Label25: TLabel
              Left = 66
              Top = 187
              Width = 29
              Height = 13
              Alignment = taRightJustify
              Caption = 'Local:'
            end
            object Label26: TLabel
              Left = 40
              Top = 209
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = 'Mensagem:'
            end
            object DBEdit6: TDBEdit
              Left = 100
              Top = 47
              Width = 73
              Height = 21
              CharCase = ecUpperCase
              DataField = 'JUROS_MES'
              DataSource = Dm1.dsBanco
              TabOrder = 2
            end
            object DBEdit7: TDBEdit
              Left = 100
              Top = 69
              Width = 73
              Height = 21
              CharCase = ecUpperCase
              DataField = 'MULTA'
              DataSource = Dm1.dsBanco
              TabOrder = 4
            end
            object DBEdit8: TDBEdit
              Left = 100
              Top = 91
              Width = 73
              Height = 21
              CharCase = ecUpperCase
              DataField = 'DIAS_PROTESTO'
              DataSource = Dm1.dsBanco
              TabOrder = 5
            end
            object DBEdit9: TDBEdit
              Left = 100
              Top = 3
              Width = 125
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CEDENTE'
              DataSource = Dm1.dsBanco
              TabOrder = 0
            end
            object DBEdit11: TDBEdit
              Left = 100
              Top = 113
              Width = 73
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CARTEIRA'
              DataSource = Dm1.dsBanco
              TabOrder = 6
            end
            object DBEdit12: TDBEdit
              Left = 100
              Top = 25
              Width = 125
              Height = 21
              CharCase = ecUpperCase
              DataField = 'COD_TRANSMISSAO'
              DataSource = Dm1.dsBanco
              TabOrder = 1
            end
            object DBEdit13: TDBEdit
              Left = 100
              Top = 135
              Width = 73
              Height = 21
              CharCase = ecUpperCase
              DataField = 'OCORRENCIA'
              DataSource = Dm1.dsBanco
              TabOrder = 8
            end
            object DBEdit14: TDBEdit
              Left = 100
              Top = 157
              Width = 73
              Height = 21
              CharCase = ecUpperCase
              DataField = 'INSTRUCAO1'
              DataSource = Dm1.dsBanco
              TabOrder = 9
            end
            object DBEdit15: TDBEdit
              Left = 260
              Top = 157
              Width = 73
              Height = 21
              CharCase = ecUpperCase
              DataField = 'INSTRUCAO2'
              DataSource = Dm1.dsBanco
              TabOrder = 10
            end
            object DBEdit16: TDBEdit
              Left = 260
              Top = 113
              Width = 73
              Height = 21
              CharCase = ecUpperCase
              DataField = 'ESPECIE'
              DataSource = Dm1.dsBanco
              TabOrder = 7
            end
            object JvDBComboBox4: TJvDBComboBox
              Left = 260
              Top = 47
              Width = 157
              Height = 21
              Style = csDropDownList
              DataField = 'TIPO_IMPRESSAO'
              DataSource = Dm1.dsBanco
              DropDownCount = 15
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'BOLETO'
                'CARN'#202)
              TabOrder = 3
              Values.Strings = (
                'B'
                'C')
            end
            object DBEdit18: TDBEdit
              Left = 100
              Top = 179
              Width = 349
              Height = 21
              CharCase = ecUpperCase
              DataField = 'LOCAL_PAGAMENTO'
              DataSource = Dm1.dsBanco
              TabOrder = 11
            end
            object DBEdit19: TDBEdit
              Left = 100
              Top = 201
              Width = 349
              Height = 21
              CharCase = ecUpperCase
              DataField = 'MENSAGEM'
              DataSource = Dm1.dsBanco
              TabOrder = 12
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'ACBR'
            object Label7: TLabel
              Left = 20
              Top = 16
              Width = 34
              Height = 13
              Alignment = taRightJustify
              Caption = 'Banco:'
            end
            object Label8: TLabel
              Left = 19
              Top = 38
              Width = 35
              Height = 13
              Alignment = taRightJustify
              Caption = 'Layout:'
            end
            object Label9: TLabel
              Left = 27
              Top = 60
              Width = 27
              Height = 13
              Alignment = taRightJustify
              Caption = 'Logo:'
            end
            object Label22: TLabel
              Left = 7
              Top = 82
              Width = 47
              Height = 13
              Alignment = taRightJustify
              Caption = 'Remessa:'
            end
            object Label23: TLabel
              Left = 7
              Top = 104
              Width = 47
              Height = 13
              Alignment = taRightJustify
              Caption = 'Extens'#227'o:'
            end
            object JvDBComboBox1: TJvDBComboBox
              Left = 56
              Top = 8
              Width = 233
              Height = 21
              Style = csDropDownList
              DataField = 'ACBR_BANCO'
              DataSource = Dm1.dsBanco
              DropDownCount = 15
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'BancoDoBrasil'
                'BancoDoNordeste'
                'BancoMercantil'
                'Bancoob'
                'Banestes'
                'Banrisul'
                'BicBanco'
                'Bradesco'
                'BradescoSICOOB'
                'BRB'
                'CaixaEconomica'
                'CaixaSicob'
                'HSBC'
                'Itau'
                'Nenhum'
                'Santander'
                'Sicredi')
              TabOrder = 0
              Values.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10'
                '11'
                '12'
                '13'
                '14'
                '15'
                '16'
                '17')
            end
            object JvDBComboBox2: TJvDBComboBox
              Left = 56
              Top = 30
              Width = 81
              Height = 21
              Style = csDropDownList
              DataField = 'ACBR_LAYOUT'
              DataSource = Dm1.dsBanco
              DropDownCount = 15
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'C240'
                'C400')
              TabOrder = 1
              Values.Strings = (
                'C240'
                'C400')
            end
            object DBEdit17: TDBEdit
              Left = 56
              Top = 96
              Width = 81
              Height = 21
              CharCase = ecUpperCase
              DataField = 'EXT_ARQ_REMESSA'
              DataSource = Dm1.dsBanco
              TabOrder = 4
            end
            object JvDirectoryEdit1: TJvDirectoryEdit
              Left = 56
              Top = 52
              Width = 361
              Height = 21
              ButtonFlat = False
              NumGlyphs = 1
              TabOrder = 2
              Text = 'c:\'
            end
            object JvDirectoryEdit2: TJvDirectoryEdit
              Left = 56
              Top = 74
              Width = 361
              Height = 21
              ButtonFlat = False
              NumGlyphs = 1
              TabOrder = 3
              Text = 'c:\'
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Nosso N'#250'mero'
            ImageIndex = 2
            object SMDBGrid2: TSMDBGrid
              Left = 0
              Top = 0
              Width = 480
              Height = 228
              Align = alClient
              DataSource = Dm1.dsContas_calculo
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
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
              ColCount = 4
              RowCount = 2
              Columns = <
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'ANO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Ano'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ITEM'
                  Title.Alignment = taCenter
                  Title.Caption = 'Item'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SEQ_NOSSONUMERO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Seq. Nosso N'#250'mero'
                  Width = 138
                  Visible = True
                end>
            end
          end
        end
        object DBEdit10: TDBEdit
          Left = 227
          Top = 60
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DIG_AGENCIA'
          DataSource = Dm1.dsBanco
          TabOrder = 3
        end
        object JvDBComboBox3: TJvDBComboBox
          Left = 100
          Top = 104
          Width = 201
          Height = 21
          Style = csDropDownList
          DataField = 'TIPOBANCO'
          DataSource = Dm1.dsBanco
          DropDownCount = 15
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CAIXA'
            'BANCO')
          TabOrder = 6
          Values.Strings = (
            'C'
            'B')
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 386
        Width = 490
        Height = 37
        Align = alBottom
        Color = 10930928
        TabOrder = 1
        object BitBtn4: TBitBtn
          Left = 346
          Top = 5
          Width = 85
          Height = 27
          Hint = 'Exclui o registro selecionado'
          Caption = 'E&xcluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = BitBtn4Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
            3333333888888888F3333330F888888033333338F3F3F3F8F3333330F0707080
            33333338F8F8F8F8F3333330F070808033333338F8F8F8F8F3333330F0707080
            33333338F8F8F8F8F3333330F070808033333338F8F8F8F8F3333330F0707080
            333333F8F8F8F8F8F3F33030F070808030333838F8F8F8F8F8333300F0707080
            03333388F8F8F8F883333330F070808033333338F8F8F8F8F333333080808080
            33333338F8F8F8F8FF3333000000000003333388888888888F33330F77788888
            0333338FFFFFFFFF8F3333000000000003333388888888888333333330888033
            3333333338FFF8F3333333333000003333333333388888333333}
          NumGlyphs = 2
        end
        object BitBtn3: TBitBtn
          Left = 176
          Top = 5
          Width = 85
          Height = 27
          Hint = 'Cancela a altera'#231#227'o ou inser'#231#227'o do registro'
          Caption = 'Ca&ncelar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = BitBtn3Click
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
        object BitBtn2: TBitBtn
          Left = 91
          Top = 5
          Width = 85
          Height = 27
          Hint = 'Edita o registro selecionado'
          Caption = '&Editar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BitBtn2Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333388888888883333330FFFFFFFF03FF3FF8FF33F3FF800300000FF0F
            00F088F888883F838838E00BFBFB0FFFFFF08883333F8F3333F8E0BFBF000FFF
            F0F088F3338883F3F838E0FBFBFBF0F00FF088F3333FF8F88F38E0BFBF00000B
            0FF088F3338888838338E0FBFBFBFBF0FFF088F33FFFFFF83338E0BF0000000F
            FFF088FF888888833FF8000BFB00B0FF00F08883FF88383388383330000B0FFF
            FFF03338888383333FF8333330B0FFFF00003333383833FF888833330B0FF00F
            0FF03333838F38838F383330B00FFFFF0F033338F88F33338F833309030FFFFF
            00333388838FFFFF883333303300000003333338338888888333}
          NumGlyphs = 2
        end
        object BitBtn1: TBitBtn
          Left = 6
          Top = 5
          Width = 85
          Height = 27
          Hint = 'Insere um novo registro'
          Caption = '&Incluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BitBtn1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333FF33333333FF333993333333300033388F3333333888333993333333
            300033F88FFF3333388839999993333333333888888F3333333F399999933333
            33003888888333333388333993333333330033388F3333333388333993333333
            3333333883333333333F333333333333330033333333F33333883333333C3333
            330033333338FF3333883333333CC333333333FFFFF88FFF3FF33CCCCCCCCCC3
            993338888888888F88F33CCCCCCCCCC3993338888888888388333333333CC333
            333333333338833333FF3333333C333330003333333833333888333333333333
            3000333333333333388833333333333333333333333333333333}
          NumGlyphs = 2
        end
        object BitBtn5: TBitBtn
          Left = 261
          Top = 5
          Width = 85
          Height = 27
          Hint = 'Confirma a altera'#231#227'o ou a inser'#231#227'o do registro'
          Caption = '&Confirmar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
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
      end
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Bancos'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 372
    Top = 80
  end
end
