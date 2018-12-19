object fCobSicred: TfCobSicred
  Left = 109
  Top = 35
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cobran'#231'a Eletr'#244'nica Sicredi - Layout CNAB 400'
  ClientHeight = 542
  ClientWidth = 762
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 762
    Height = 542
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 759
      Height = 125
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 123
        Top = 32
        Width = 56
        Height = 13
        Caption = 'Data Inicial:'
      end
      object Label2: TLabel
        Left = 357
        Top = 32
        Width = 51
        Height = 13
        Caption = 'Data Final:'
      end
      object Label5: TLabel
        Left = 144
        Top = 55
        Width = 35
        Height = 13
        Caption = 'Cliente:'
      end
      object Bevel1: TBevel
        Left = 0
        Top = 70
        Width = 757
        Height = 2
        Shape = bsTopLine
        Style = bsRaised
      end
      object Bevel2: TBevel
        Left = 2
        Top = 102
        Width = 757
        Height = 2
        Shape = bsTopLine
        Style = bsRaised
      end
      object Label3: TLabel
        Left = 370
        Top = 109
        Width = 138
        Height = 13
        Caption = 'Parcela j'#225' gerada em arquivo'
      end
      object ALed1: TALed
        Left = 350
        Top = 106
        Width = 16
        Height = 16
        FalseColor = clGreen
      end
      object Label4: TLabel
        Left = 570
        Top = 109
        Width = 148
        Height = 13
        Caption = 'Parcela n'#227'o gerada em arquivo'
      end
      object ALed2: TALed
        Left = 550
        Top = 106
        Width = 16
        Height = 16
        FalseColor = clWhite
      end
      object ALed3: TALed
        Left = 38
        Top = 106
        Width = 16
        Height = 16
        FalseColor = clRed
      end
      object Label6: TLabel
        Left = 58
        Top = 109
        Width = 52
        Height = 13
        Caption = 'Sem Pra'#231'a'
      end
      object ALed4: TALed
        Left = 126
        Top = 107
        Width = 16
        Height = 16
        FalseColor = clAqua
      end
      object Label7: TLabel
        Left = 146
        Top = 110
        Width = 62
        Height = 13
        Caption = 'Pra'#231'a inativa'
      end
      object Label8: TLabel
        Left = 547
        Top = 3
        Width = 83
        Height = 39
        Caption = '   Imp.Boleto '#13#10'A = Pelo Sicredi'#13#10'B = Pelo Cedente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object BitBtn1: TBitBtn
        Left = 507
        Top = 44
        Width = 132
        Height = 25
        Hint = 'Gera rela'#231#227'o de t'#237'tulos cfe. sele'#231#227'o de datas'
        Caption = '&Filtrar as duplicatas'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtn1Click
        Glyph.Data = {
          46050000424D460500000000000036040000280000000D000000110000000100
          08000000000010010000C30E0000C30E00000001000000000000000000008080
          8000000080000080800000800000808000008000000080008000408080004040
          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
          1D007666280000450000013E450013286A006A39850085324A00040404000808
          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
          0000000039009B00000000250000000049003B111100002F000000005D004517
          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
          0F0F0F0F0F0F0F000000}
      end
      object BitBtn2: TBitBtn
        Left = 3
        Top = 74
        Width = 103
        Height = 25
        Hint = 'Gera arquivo cfe. rela'#231#227'o de t'#237'tulos abaixo'
        Caption = 'Gerar &Arquivo'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
          07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
          0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
      end
      object BitBtn3: TBitBtn
        Left = 364
        Top = 74
        Width = 105
        Height = 25
        Hint = 'Desfaz a rela'#231#227'o de t'#237'tulos abaixo'
        Caption = 'Desfaz Rela'#231#227'o'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitBtn3Click
        Glyph.Data = {
          B2050000424DB205000000000000360400002800000012000000130000000100
          0800000000007C010000C30E0000C30E00000001000000000000000000007B00
          0000BD000000FF0000007B7B000000FF0000FFFF000000315A0008427300084A
          730000007B007B007B00084A7B0008527B0021527B00007B7B007B7B7B00004A
          840008528400105284002963840008528C00085A8C00185A8C0018638C002963
          8C0008529400185A9400296B9400316B94002973940031739400085A9C001863
          9C0018739C0029739C0031739C0031849C00005AA5002173A5003973A500297B
          A500186BAD00106BB500317BB5002984B5004A8CB500086BBD000073BD001073
          BD001873BD00217BBD004284BD00318CBD004A8CBD005294BD005A9CBD00BDBD
          BD001073C600007BC600217BC600428CC6004A8CC6005A9CC6000084CE000884
          CE00398CCE005A9CCE00639CCE001884D6002184D600088CD600108CD6004294
          D600399CD6004A9CD600529CD6005A9CD6005AA5D60063ADD6001884DE002184
          DE00188CDE001094DE001894DE003194DE00299CDE004AA5DE005AA5DE004AB5
          DE00189CE700219CE700429CE7005AA5E7005AADE70063ADE7006BB5E70021A5
          EF0029A5EF0031A5EF0063B5EF006BBDEF0029ADF70031ADF7006BBDF7000000
          FF00FF00FF0031B5FF0039B5FF0042B5FF0039BDFF0042BDFF0042C6FF004AC6
          FF006BC6FF004ACEFF0052CEFF0052D6FF005ADEFF0063E7FF0000FFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00393939393939
          3939393939393939393939690000396939393939393939393939393939396939
          0000396969393910101010101010101010693939000039696969000000000000
          0000000069693939000039396969007879797978797979696939393900003939
          3969697903030303030379691039393900003939396969697978797979786969
          1039393900003939393969696903030369696900103939390000393939390069
          6969797869697900103939390000393939390079036969696903790010393939
          0000393939390079796969696978790010393939000039393939007903696969
          6900000010393939000039393939007869697900696979001039393900003939
          3939006969697900696969693939393900003939396969697978790079003969
          6939393900003969696969000000000000393939696939390000396969693939
          3939393939393939393969390000393939393939393939393939393939393969
          00003939393939393939393939393939393939390000}
      end
      object BitBtn4: TBitBtn
        Left = 469
        Top = 74
        Width = 105
        Height = 25
        Hint = 'Exclui a parcela selecionada abaixo da rela'#231#227'o de t'#237'tulos'
        Caption = 'Exclui Parcela'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BitBtn4Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
          3333333777777777F3333330F77777703333333733F3F3F73F33330FF0808077
          0333337F37F7F7F37F33330FF0807077033333733737F73F73F330FF77808707
          703337F37F37F37F37F330FF08807807703037F37F37F37F37F700FF08808707
          700377F37337F37F377330FF778078077033373F73F7F3733733330FF0808077
          0333337F37F7F7F37F33330FF08070770333337FF7F7F7FF7F33330000000000
          03333377777777777F33330F888777770333337FFFFFFFFF7F33330000000000
          033333777777777773333333307770333333333337FFF7F33333333330000033
          3333333337777733333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object BitBtn5: TBitBtn
        Left = 677
        Top = 74
        Width = 79
        Height = 25
        Hint = 'Fecha a janela atual'
        Caption = '&Fechar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = BitBtn5Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000CE0E0000D80E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0038383838380E
          038383838383830E603800000000380E660033333330830E660333333330000E
          660333330030330E660333330E00330E660300000EE0330E06030EEEEEE6030E
          660300000E60330E660333330600330E660333330030330E6603333333303330
          E6033333333033330E0333333330000000033333333333333333}
      end
      object BitBtn6: TBitBtn
        Left = 574
        Top = 74
        Width = 103
        Height = 25
        Hint = 'Exclui a parcela selecionada abaixo da rela'#231#227'o de t'#237'tulos'
        Caption = 'Arq.Retorno'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BitBtn6Click
        Glyph.Data = {
          06020000424D0602000000000000760000002800000028000000140000000100
          0400000000009001000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFFFFF333FFFFF3330000000033300000333377777777F337777
          7FF330EFEFEF03307333703337F3FFFF7F37733377F330F4444E033333333033
          37F777737F333333F7F33099999903333330703337F333337F33333777FF309F
          FFF903333330000337F333337F33333777733099999903333330003337F3FF3F
          7F333337773330F44E0003333330033337F7737773333337733330EFEF003333
          3330333337FFFF7733333337333330000003333333333333377777733333FFFF
          FFFF3333333333300000000333333F3333377777777F333303333330EFEFEF03
          33337F333337F3FFFF7F333003333330F4444E0333377F333337F777737F3300
          03333330EFEFEF0333777F333337F3FFFF7F300003333330F4444E0337777F33
          3337F777737F330703333330EFEFEF03337773333337F3FF3F7F330333333330
          F44E0003337FF333FF37F7737773330733370330EFEF00333377FFF77337FFFF
          7733333000003330000003333337777733377777733333333333333333333333
          33333333333333333333}
        NumGlyphs = 2
      end
      object BitBtn7: TBitBtn
        Left = 258
        Top = 74
        Width = 105
        Height = 25
        Caption = 'Imp. Boleto'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = BitBtn7Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777700000000000777707777777770707700000000000007070777777BBB77
          0007077777788877070700000000000007700777777777707070700000000007
          0700770FFFFFFFF070707770F00000F000077770FFFFFFFF077777770F00000F
          077777770FFFFFFFF07777777000000000777777777777777777}
      end
      object BitBtn8: TBitBtn
        Left = 107
        Top = 74
        Width = 103
        Height = 25
        Hint = 'Gera arquivo cfe. rela'#231#227'o de t'#237'tulos abaixo'
        Caption = 'Gerar Nosso N'#186
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = BitBtn8Click
        NumGlyphs = 2
      end
      object ComboBox1: TComboBox
        Left = 632
        Top = 12
        Width = 121
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 8
        Text = 'Pelo Sicredi'
        Items.Strings = (
          'Pelo Sicredi'
          'Pelo Cedente'
          'Buscar Arquivo')
      end
      object JvDBLookupCombo1: TJvDBLookupCombo
        Left = 181
        Top = 47
        Width = 324
        Height = 21
        DropDownCount = 8
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = dsPessoa
        TabOrder = 9
        OnEnter = JvDBLookupCombo1Enter
        OnExit = JvDBLookupCombo1Exit
      end
      object DateEdit1: TDateTimePicker
        Left = 181
        Top = 24
        Width = 94
        Height = 21
        Date = 40394.424338460650000000
        Time = 40394.424338460650000000
        TabOrder = 10
      end
      object DateEdit2: TDateTimePicker
        Left = 410
        Top = 24
        Width = 95
        Height = 21
        Date = 40394.424338460650000000
        Time = 40394.424338460650000000
        TabOrder = 11
      end
    end
    object StaticText1: TStaticText
      Left = 1
      Top = 524
      Width = 760
      Height = 17
      Align = alBottom
      BorderStyle = sbsSunken
      Caption = 'Duplo clique para Alterar/Consultar parcela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object SMDBGrid1: TSMDBGrid
      Left = 1
      Top = 128
      Width = 759
      Height = 396
      DataSource = msBoletos
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = SMDBGrid1DblClick
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
      ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      OnGetCellParams = SMDBGrid1GetCellParams
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 11
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'Selecionado'
          Width = 26
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DtGerado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NumNota'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Parcela'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DtVencto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrParcela'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NossoNumero'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ImpBoleto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NumCReceber'
          Visible = True
        end>
    end
  end
  object msBoletos: TDataSource
    DataSet = mBoletos
    Left = 216
    Top = 232
  end
  object qBoletos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'D1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'D2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CodConta'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT Dbcreceberparc.NumCReceber, Dbcreceberparc.PARCELA ParcCR' +
        'eceber,'
      
        ' Dbcreceberparc.VLRVENCIMENTO VlrParcCReceber, Dbcreceberparc.DT' +
        'VENCIMENTO DtVencCReceber,'
      
        ' Dbcreceberparc.CodCliente CodCli, Dbcreceberparc.NumNota, Dbcre' +
        'ceberparc.DTMOVIMENTO DtGerado,'
      
        ' Dbcliente.Nome, Dbcliente.Endereco, Dbcliente.Bairro, Dbcliente' +
        '.Estado Uf,'
      
        ' Dbcliente.Cep, Dbcliente.Pessoa, Dbcliente.DOCUMENTO CgcCpf, Db' +
        'cliente.INSCESTADUAL InscrEst, Dbcliente.COBENDERECO EndPgto, Db' +
        'cliente.COBBAIRRO BairroPgto,'
      
        ' Dbcliente.COBCEP CepPgto, Dbcliente.COBUF UfPgto, Dbcliente.CID' +
        'ADE CodCidade, Dbcliente.COBCIDADE CodCidadeP, Dbcreceberparc.Ar' +
        'qGerado,'
      
        ' Dbcreceberparc.NossoNumero, cidade.CodPracaSicredi, dbCReceberP' +
        'arc.NumSeqNossoNum, Dbcreceberparc.VLRRESTANTE RestParcela,  cid' +
        'ade.Nome as Cidade,'
      
        ' Dbcreceberparc.ImpBoletoSicrediCedente, dbCliente.ENDNUMERO Num' +
        'End, '#39' '#39' Serie /*dbCReceberParc.serie*/'
      'FROM CRECEBERPARC Dbcreceberparc'
      
        '   INNER JOIN PESSOA Dbcliente ON  (Dbcreceberparc.CODCLIENTE = ' +
        'Dbcliente.ID)'
      '   INNER JOIN CIDADE ON (Dbcliente.CIDADE = cidade.ID)'
      
        'WHERE ((Dbcreceberparc.cancelado is null) OR (Dbcreceberparc.Can' +
        'celado IS NULL))'
      '  AND (Dbcreceberparc.DTMOVIMENTO BETWEEN :D1 AND :D2)'
      
        '  AND (Dbcreceberparc.CodBanco = :CodConta)  AND (Dbcreceberparc' +
        '.VLRRESTANTE > 0)'
      ' ')
    SQLConnection = Dm1.Conexao
    Left = 96
    Top = 200
    object qBoletosNUMCRECEBER: TIntegerField
      FieldName = 'NUMCRECEBER'
      Required = True
    end
    object qBoletosPARCCRECEBER: TStringField
      FieldName = 'PARCCRECEBER'
      Required = True
      Size = 3
    end
    object qBoletosVLRPARCCRECEBER: TFloatField
      FieldName = 'VLRPARCCRECEBER'
    end
    object qBoletosDTVENCCRECEBER: TDateField
      FieldName = 'DTVENCCRECEBER'
    end
    object qBoletosCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object qBoletosNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object qBoletosDTGERADO: TDateField
      FieldName = 'DTGERADO'
    end
    object qBoletosNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qBoletosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object qBoletosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object qBoletosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qBoletosCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qBoletosPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qBoletosCGCCPF: TStringField
      FieldName = 'CGCCPF'
      Size = 18
    end
    object qBoletosINSCREST: TStringField
      FieldName = 'INSCREST'
      Size = 15
    end
    object qBoletosENDPGTO: TStringField
      FieldName = 'ENDPGTO'
      Size = 40
    end
    object qBoletosBAIRROPGTO: TStringField
      FieldName = 'BAIRROPGTO'
      Size = 30
    end
    object qBoletosCEPPGTO: TStringField
      FieldName = 'CEPPGTO'
      Size = 10
    end
    object qBoletosUFPGTO: TStringField
      FieldName = 'UFPGTO'
      Size = 2
    end
    object qBoletosCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object qBoletosCODCIDADEP: TIntegerField
      FieldName = 'CODCIDADEP'
    end
    object qBoletosARQGERADO: TStringField
      FieldName = 'ARQGERADO'
      Size = 5
    end
    object qBoletosRESTPARCELA: TFloatField
      FieldName = 'RESTPARCELA'
    end
    object qBoletosNUMEND: TIntegerField
      FieldName = 'NUMEND'
    end
    object qBoletosSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qBoletoslkCidadePgto: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCidadePgto'
      LookupDataSet = tCidade
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'CODCIDADEP'
      Size = 100
      Lookup = True
    end
    object qBoletoslkCidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCidade'
      LookupDataSet = tCidade
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'CODCIDADE'
      Size = 100
      Lookup = True
    end
    object qBoletosCODPRACASICREDI: TIntegerField
      FieldName = 'CODPRACASICREDI'
    end
    object qBoletosNUMSEQNOSSONUM: TIntegerField
      FieldName = 'NUMSEQNOSSONUM'
    end
    object qBoletosNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 15
    end
    object qBoletosIMPBOLETOSICREDICEDENTE: TStringField
      FieldName = 'IMPBOLETOSICREDICEDENTE'
      FixedChar = True
      Size = 1
    end
    object qBoletosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
  end
  object mBoletos: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NumCReceber'
        DataType = ftInteger
      end
      item
        Name = 'Parcela'
        DataType = ftInteger
      end
      item
        Name = 'NumNota'
        DataType = ftInteger
      end
      item
        Name = 'VlrParcela'
        DataType = ftFloat
      end
      item
        Name = 'Pessoa'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CNPJCPF'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'Endereco'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Bairro'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cep'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Cidade'
        DataType = ftString
        Size = 26
      end
      item
        Name = 'Uf'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ArqGerado'
        DataType = ftBoolean
      end
      item
        Name = 'Cliente'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NossoNumero'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'Instrucao'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CampoAlterado'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TipoDesconto'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TipoJuro'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VlrDescontoDiaAntecipacao'
        DataType = ftFloat
      end
      item
        Name = 'TaxaMulta'
        DataType = ftFloat
      end
      item
        Name = 'EspecieDoc'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Aceite'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DiasProtesto'
        DataType = ftInteger
      end
      item
        Name = 'VlrJurosPorDia'
        DataType = ftFloat
      end
      item
        Name = 'VlrDesconto'
        DataType = ftFloat
      end
      item
        Name = 'VlrAbatimento'
        DataType = ftFloat
      end
      item
        Name = 'CpfCnpjAvalista'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'NomeAvalista'
        DataType = ftString
        Size = 41
      end
      item
        Name = 'EndAvalista'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'CidAvalista'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CepAvalista'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'UFAvalista'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'InstProtesto'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DtGerado'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DtVencto'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DtLimiteDesc'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CodPraca'
        DataType = ftInteger
      end
      item
        Name = 'SituacaoPraca'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ImpBoleto'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CnpjCpfEditado'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Serie'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Selecionado'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 200
    Top = 232
    Data = {
      8C0400009619E0BD01000000180000002A0000000000030000008C040B4E756D
      435265636562657204000100000000000750617263656C610400010000000000
      074E756D4E6F746104000100000000000A566C7250617263656C610800040000
      00000006506573736F6101004900000001000557494454480200020002000743
      4E504A4350460100490000000100055749445448020002000E0008456E646572
      65636F01004900000001000557494454480200020028000642616972726F0100
      4900000001000557494454480200020014000343657001004900000001000557
      4944544802000200080006436964616465010049000000010005574944544802
      0002001A00025566010049000000010005574944544802000200020009417271
      47657261646F020003000000000007436C69656E746501004900000001000557
      494454480200020028000B4E6F73736F4E756D65726F01004900000001000557
      4944544802000200090009496E7374727563616F010049000000010005574944
      54480200020002000D43616D706F416C74657261646F01004900000001000557
      494454480200020001000C5469706F446573636F6E746F010049000000010005
      5749445448020002000100085469706F4A75726F010049000000010005574944
      544802000200010019566C72446573636F6E746F446961416E74656369706163
      616F080004000000000009546178614D756C746108000400000000000A457370
      65636965446F6301004900000001000557494454480200020001000641636569
      746501004900000001000557494454480200020001000C4469617350726F7465
      73746F04000100000000000E566C724A75726F73506F72446961080004000000
      00000B566C72446573636F6E746F08000400000000000D566C7241626174696D
      656E746F08000400000000000F437066436E706A4176616C6973746101004900
      00000100055749445448020002000E000C4E6F6D654176616C69737461010049
      00000001000557494454480200020029000B456E644176616C69737461010049
      0000000100055749445448020002002D000B4369644176616C69737461010049
      00000001000557494454480200020014000B4365704176616C69737461010049
      00000001000557494454480200020008000A55464176616C6973746101004900
      000001000557494454480200020002000C496E737450726F746573746F010049
      000000010005574944544802000200020008447447657261646F010049000000
      0100055749445448020002000A0008447456656E63746F010049000000010005
      5749445448020002000A000C44744C696D697465446573630100490000000100
      055749445448020002000A0008436F64507261636104000100000000000D5369
      74756163616F5072616361010049000000010005574944544802000200010009
      496D70426F6C65746F01004900000001000557494454480200020001000E436E
      706A4370664564697461646F0100490000000100055749445448020002001200
      05536572696501004900000001000557494454480200020003000B53656C6563
      696F6E61646F02000300000000000000}
    object mBoletosNumCReceber: TIntegerField
      FieldName = 'NumCReceber'
    end
    object mBoletosParcela: TIntegerField
      FieldName = 'Parcela'
    end
    object mBoletosNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object mBoletosVlrParcela: TFloatField
      FieldName = 'VlrParcela'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mBoletosPessoa: TStringField
      FieldName = 'Pessoa'
      Size = 2
    end
    object mBoletosCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      Size = 14
    end
    object mBoletosEndereco: TStringField
      FieldName = 'Endereco'
      Size = 40
    end
    object mBoletosBairro: TStringField
      FieldName = 'Bairro'
    end
    object mBoletosCep: TStringField
      FieldName = 'Cep'
      Size = 8
    end
    object mBoletosCidade: TStringField
      FieldName = 'Cidade'
      Size = 26
    end
    object mBoletosUf: TStringField
      FieldName = 'Uf'
      Size = 2
    end
    object mBoletosArqGerado: TBooleanField
      FieldName = 'ArqGerado'
    end
    object mBoletosCliente: TStringField
      FieldName = 'Cliente'
      Size = 40
    end
    object mBoletosNossoNumero: TStringField
      DisplayWidth = 10
      FieldName = 'NossoNumero'
      Size = 10
    end
    object mBoletosInstrucao: TStringField
      FieldName = 'Instrucao'
      Size = 2
    end
    object mBoletosCampoAlterado: TStringField
      FieldName = 'CampoAlterado'
      Size = 1
    end
    object mBoletosTipoDesconto: TStringField
      FieldName = 'TipoDesconto'
      Size = 1
    end
    object mBoletosTipoJuro: TStringField
      FieldName = 'TipoJuro'
      Size = 1
    end
    object mBoletosVlrDescontoDiaAntecipacao: TFloatField
      FieldName = 'VlrDescontoDiaAntecipacao'
    end
    object mBoletosTaxaMulta: TFloatField
      FieldName = 'TaxaMulta'
    end
    object mBoletosEspecieDoc: TStringField
      FieldName = 'EspecieDoc'
      Size = 1
    end
    object mBoletosAceite: TStringField
      FieldName = 'Aceite'
      Size = 1
    end
    object mBoletosDiasProtesto: TIntegerField
      FieldName = 'DiasProtesto'
    end
    object mBoletosVlrJurosPorDia: TFloatField
      FieldName = 'VlrJurosPorDia'
    end
    object mBoletosVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
    end
    object mBoletosVlrAbatimento: TFloatField
      FieldName = 'VlrAbatimento'
    end
    object mBoletosCpfCnpjAvalista: TStringField
      FieldName = 'CpfCnpjAvalista'
      Size = 14
    end
    object mBoletosNomeAvalista: TStringField
      FieldName = 'NomeAvalista'
      Size = 41
    end
    object mBoletosEndAvalista: TStringField
      FieldName = 'EndAvalista'
      Size = 45
    end
    object mBoletosCidAvalista: TStringField
      FieldName = 'CidAvalista'
    end
    object mBoletosCepAvalista: TStringField
      FieldName = 'CepAvalista'
      Size = 8
    end
    object mBoletosUFAvalista: TStringField
      FieldName = 'UFAvalista'
      Size = 2
    end
    object mBoletosInstProtesto: TStringField
      FieldName = 'InstProtesto'
      Size = 2
    end
    object mBoletosDtGerado: TStringField
      FieldName = 'DtGerado'
      Size = 10
    end
    object mBoletosDtVencto: TStringField
      FieldName = 'DtVencto'
      Size = 10
    end
    object mBoletosDtLimiteDesc: TStringField
      FieldName = 'DtLimiteDesc'
      EditMask = '99/99/9999'
      Size = 10
    end
    object mBoletosCodPraca: TIntegerField
      FieldName = 'CodPraca'
    end
    object mBoletosSituacaoPraca: TStringField
      FieldName = 'SituacaoPraca'
      Size = 1
    end
    object mBoletosImpBoleto: TStringField
      FieldName = 'ImpBoleto'
      Size = 1
    end
    object mBoletosCnpjCpfEditado: TStringField
      FieldName = 'CnpjCpfEditado'
      Size = 18
    end
    object mBoletosSerie: TStringField
      FieldName = 'Serie'
      Size = 3
    end
    object mBoletosSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
  end
  object dsPessoa: TDataSource
    DataSet = tPessoa
    Left = 411
    Top = 328
  end
  object tPessoa: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'FANTASIA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PESSOA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DOCUMENTO'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'ESTADO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FONE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FAX'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'INSCESTADUAL'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'IDENTIDADE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ESTCIVIL'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'PROFISSAO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'NACIONALIDADE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DTCADASTRO'
        DataType = ftDate
      end
      item
        Name = 'OBSERVACAO'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'FORNECEDOR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CLIENTE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VENDEDOR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REFPESSOAL1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REFPESSOAL2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REFPESSOALEND1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REFPESSOALEND2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REFPESSOALFONE1'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'REFPESSOALFONE2'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'REFCOMERCIAL1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REFCOMERCIAL2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REFCOMERCIALEND1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REFCOMERCIALEND2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REFCOMERCIALFONE1'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'REFCOMERCIALFONE2'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CIDADE'
        DataType = ftInteger
      end
      item
        Name = 'TRANSPORTADORA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PERCCOMISSAO'
        DataType = ftFloat
      end
      item
        Name = 'TIPOCOMISSAO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'STATUS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DTCONTRATOINI'
        DataType = ftDate
      end
      item
        Name = 'DTCONTRATOFIM'
        DataType = ftDate
      end
      item
        Name = 'CONTRATODEVOLVIDO'
        DataType = ftDate
      end
      item
        Name = 'COBENDERECO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'COBNUMERO'
        DataType = ftInteger
      end
      item
        Name = 'COBCOMPLEMENTO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'COBBAIRRO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'COBCIDADE'
        DataType = ftInteger
      end
      item
        Name = 'COBUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'COBCONTATO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ENDNUMERO'
        DataType = ftInteger
      end
      item
        Name = 'ENDCOMPLEMENTO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'IDUSUARIO'
        DataType = ftInteger
      end
      item
        Name = 'CODBANCO'
        DataType = ftInteger
      end
      item
        Name = 'AGENCIA'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'NUMCONTACORRENTE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'LOGIN'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DIAPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'CODVENDEDOR'
        DataType = ftInteger
      end
      item
        Name = 'FORMAPGTO'
        DataType = ftInteger
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'HOMEPAGE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SELECIONADO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CONJUGE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DTNASCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'CEL'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'PLANOSAUDE_ID'
        DataType = ftInteger
      end
      item
        Name = 'COBCEP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VLRPGTO'
        DataType = ftFloat
      end
      item
        Name = 'NUMCARTEIRA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FUNCIONARIO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODCENTROCUSTO'
        DataType = ftInteger
      end
      item
        Name = 'CODTIPOCOBRANCA'
        DataType = ftInteger
      end
      item
        Name = 'TIPOSALARIO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VALORSALARIO'
        DataType = ftFloat
      end
      item
        Name = 'RG'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NOMEPAI'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMEMAE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CODCLAUSULA'
        DataType = ftInteger
      end
      item
        Name = 'DESCCLAUSULA'
        DataType = ftBlob
        Size = 1
      end
      item
        Name = 'ALUNO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NATURALIDADE_CID'
        DataType = ftInteger
      end
      item
        Name = 'NATURALIDADE_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'EMPREGOS_ANT'
        DataType = ftBlob
        Size = 1
      end
      item
        Name = 'CURSOS_ANT'
        DataType = ftBlob
        Size = 1
      end
      item
        Name = 'INFO_ADICIONAIS'
        DataType = ftBlob
        Size = 1
      end
      item
        Name = 'FOTO_CAMINHO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'FOTO'
        DataType = ftBlob
        Size = 1
      end
      item
        Name = 'SEXO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REGISTRO_DPF'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'EXP_REGISTRO_DPF'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'DT_FORMACAO'
        DataType = ftDate
      end
      item
        Name = 'CIDADENOME'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CONTRASENHA'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'SENHA'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CHAVE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CONTROLE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'tPessoaIndex2'
        Fields = 'NOME'
      end>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'PessoaP'
    StoreDefs = True
    Left = 392
    Top = 328
    object tPessoaID: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID'
      Required = True
    end
    object tPessoaNOME: TStringField
      DisplayWidth = 48
      FieldName = 'NOME'
      Size = 40
    end
    object tPessoaFANTASIA: TStringField
      DisplayWidth = 48
      FieldName = 'FANTASIA'
      Size = 40
    end
    object tPessoaPESSOA: TStringField
      DisplayWidth = 9
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object tPessoaDOCUMENTO: TStringField
      DisplayWidth = 22
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object tPessoaENDERECO: TStringField
      DisplayWidth = 48
      FieldName = 'ENDERECO'
      Size = 40
    end
    object tPessoaBAIRRO: TStringField
      DisplayWidth = 30
      FieldName = 'BAIRRO'
      Size = 25
    end
    object tPessoaCEP: TStringField
      DisplayWidth = 11
      FieldName = 'CEP'
      EditMask = '99999-999'
      Size = 9
    end
    object tPessoaESTADO: TStringField
      DisplayWidth = 9
      FieldName = 'ESTADO'
      Size = 2
    end
    object tPessoaFONE: TStringField
      DisplayWidth = 18
      FieldName = 'FONE'
      Size = 15
    end
    object tPessoaFAX: TStringField
      DisplayWidth = 18
      FieldName = 'FAX'
      Size = 15
    end
    object tPessoaINSCESTADUAL: TStringField
      DisplayWidth = 18
      FieldName = 'INSCESTADUAL'
      Size = 15
    end
    object tPessoaIDENTIDADE: TStringField
      DisplayWidth = 13
      FieldName = 'IDENTIDADE'
      Size = 10
    end
    object tPessoaESTCIVIL: TStringField
      DisplayWidth = 15
      FieldName = 'ESTCIVIL'
      Size = 12
    end
    object tPessoaPROFISSAO: TStringField
      DisplayWidth = 30
      FieldName = 'PROFISSAO'
      Size = 25
    end
    object tPessoaNACIONALIDADE: TStringField
      DisplayWidth = 24
      FieldName = 'NACIONALIDADE'
    end
    object tPessoaDTCADASTRO: TDateField
      DisplayWidth = 15
      FieldName = 'DTCADASTRO'
    end
    object tPessoaOBSERVACAO: TBlobField
      DisplayWidth = 15
      FieldName = 'OBSERVACAO'
      Size = 1
    end
    object tPessoaFORNECEDOR: TStringField
      DisplayWidth = 15
      FieldName = 'FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object tPessoaCLIENTE: TStringField
      DisplayWidth = 9
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 1
    end
    object tPessoaVENDEDOR: TStringField
      DisplayWidth = 12
      FieldName = 'VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object tPessoaREFPESSOAL1: TStringField
      DisplayWidth = 48
      FieldName = 'REFPESSOAL1'
      Size = 40
    end
    object tPessoaREFPESSOAL2: TStringField
      DisplayWidth = 48
      FieldName = 'REFPESSOAL2'
      Size = 40
    end
    object tPessoaREFPESSOALEND1: TStringField
      DisplayWidth = 48
      FieldName = 'REFPESSOALEND1'
      Size = 40
    end
    object tPessoaREFPESSOALEND2: TStringField
      DisplayWidth = 48
      FieldName = 'REFPESSOALEND2'
      Size = 40
    end
    object tPessoaREFPESSOALFONE1: TStringField
      DisplayWidth = 21
      FieldName = 'REFPESSOALFONE1'
      Size = 15
    end
    object tPessoaREFPESSOALFONE2: TStringField
      DisplayWidth = 21
      FieldName = 'REFPESSOALFONE2'
      Size = 15
    end
    object tPessoaREFCOMERCIAL1: TStringField
      DisplayWidth = 48
      FieldName = 'REFCOMERCIAL1'
      Size = 40
    end
    object tPessoaREFCOMERCIAL2: TStringField
      DisplayWidth = 48
      FieldName = 'REFCOMERCIAL2'
      Size = 40
    end
    object tPessoaREFCOMERCIALEND1: TStringField
      DisplayWidth = 48
      FieldName = 'REFCOMERCIALEND1'
      Size = 40
    end
    object tPessoaREFCOMERCIALEND2: TStringField
      DisplayWidth = 48
      FieldName = 'REFCOMERCIALEND2'
      Size = 40
    end
    object tPessoaREFCOMERCIALFONE1: TStringField
      DisplayWidth = 24
      FieldName = 'REFCOMERCIALFONE1'
      Size = 15
    end
    object tPessoaREFCOMERCIALFONE2: TStringField
      DisplayWidth = 24
      FieldName = 'REFCOMERCIALFONE2'
      Size = 15
    end
    object tPessoaCIDADE: TIntegerField
      DisplayWidth = 12
      FieldName = 'CIDADE'
    end
    object tPessoaTRANSPORTADORA: TStringField
      DisplayWidth = 21
      FieldName = 'TRANSPORTADORA'
      FixedChar = True
      Size = 1
    end
    object tPessoaPERCCOMISSAO: TFloatField
      DisplayWidth = 17
      FieldName = 'PERCCOMISSAO'
      DisplayFormat = '0.00'
    end
    object tPessoaTIPOCOMISSAO: TStringField
      DisplayWidth = 16
      FieldName = 'TIPOCOMISSAO'
      FixedChar = True
      Size = 1
    end
    object tPessoaSTATUS: TStringField
      DisplayWidth = 9
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object tPessoaDTCONTRATOINI: TDateField
      DisplayWidth = 18
      FieldName = 'DTCONTRATOINI'
    end
    object tPessoaDTCONTRATOFIM: TDateField
      DisplayWidth = 19
      FieldName = 'DTCONTRATOFIM'
    end
    object tPessoaCONTRATODEVOLVIDO: TDateField
      DisplayWidth = 25
      FieldName = 'CONTRATODEVOLVIDO'
    end
    object tPessoaCOBENDERECO: TStringField
      DisplayWidth = 48
      FieldName = 'COBENDERECO'
      Size = 40
    end
    object tPessoaCOBNUMERO: TIntegerField
      DisplayWidth = 14
      FieldName = 'COBNUMERO'
    end
    object tPessoaCOBCOMPLEMENTO: TStringField
      DisplayWidth = 21
      FieldName = 'COBCOMPLEMENTO'
      Size = 10
    end
    object tPessoaCOBBAIRRO: TStringField
      DisplayWidth = 36
      FieldName = 'COBBAIRRO'
      Size = 30
    end
    object tPessoaCOBCIDADE: TIntegerField
      DisplayWidth = 13
      FieldName = 'COBCIDADE'
    end
    object tPessoaCOBUF: TStringField
      DisplayWidth = 7
      FieldName = 'COBUF'
      Size = 2
    end
    object tPessoaCOBCONTATO: TStringField
      DisplayWidth = 36
      FieldName = 'COBCONTATO'
      Size = 30
    end
    object tPessoaENDNUMERO: TIntegerField
      DisplayWidth = 14
      FieldName = 'ENDNUMERO'
    end
    object tPessoaENDCOMPLEMENTO: TStringField
      DisplayWidth = 21
      FieldName = 'ENDCOMPLEMENTO'
      Size = 15
    end
    object tPessoaIDUSUARIO: TIntegerField
      DisplayWidth = 12
      FieldName = 'IDUSUARIO'
    end
    object tPessoaCODBANCO: TIntegerField
      DisplayWidth = 12
      FieldName = 'CODBANCO'
    end
    object tPessoaAGENCIA: TStringField
      DisplayWidth = 10
      FieldName = 'AGENCIA'
      Size = 5
    end
    object tPessoaNUMCONTACORRENTE: TStringField
      DisplayWidth = 25
      FieldName = 'NUMCONTACORRENTE'
      Size = 15
    end
    object tPessoaDIAPAGAMENTO: TIntegerField
      DisplayWidth = 17
      FieldName = 'DIAPAGAMENTO'
    end
    object tPessoaLOGIN: TStringField
      DisplayWidth = 12
      FieldName = 'LOGIN'
      Size = 10
    end
    object tPessoaCODVENDEDOR: TIntegerField
      DisplayWidth = 17
      FieldName = 'CODVENDEDOR'
    end
    object tPessoaFORMAPGTO: TIntegerField
      DisplayWidth = 14
      FieldName = 'FORMAPGTO'
    end
    object tPessoaEMAIL: TStringField
      DisplayWidth = 60
      FieldName = 'EMAIL'
      Size = 50
    end
    object tPessoaHOMEPAGE: TStringField
      DisplayWidth = 60
      FieldName = 'HOMEPAGE'
      Size = 50
    end
    object tPessoaSELECIONADO: TStringField
      DisplayWidth = 15
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object tPessoaCONJUGE: TStringField
      DisplayWidth = 48
      FieldName = 'CONJUGE'
      Size = 40
    end
    object tPessoaDTNASCIMENTO: TDateField
      DisplayWidth = 17
      FieldName = 'DTNASCIMENTO'
    end
    object tPessoaCEL: TStringField
      DisplayWidth = 18
      FieldName = 'CEL'
      Size = 15
    end
    object tPessoaPLANOSAUDE_ID: TIntegerField
      DisplayWidth = 18
      FieldName = 'PLANOSAUDE_ID'
    end
    object tPessoaCOBCEP: TStringField
      DisplayWidth = 12
      FieldName = 'COBCEP'
      Size = 10
    end
    object tPessoaVLRPGTO: TFloatField
      DisplayWidth = 12
      FieldName = 'VLRPGTO'
      DisplayFormat = '0.00'
    end
    object tPessoaNUMCARTEIRA: TStringField
      FieldName = 'NUMCARTEIRA'
      Size = 3
    end
    object tPessoaFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      FixedChar = True
      Size = 1
    end
    object tPessoaCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
    object tPessoaCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object tPessoaTIPOSALARIO: TStringField
      FieldName = 'TIPOSALARIO'
      FixedChar = True
      Size = 1
    end
    object tPessoaVALORSALARIO: TFloatField
      FieldName = 'VALORSALARIO'
      DisplayFormat = '0.00'
    end
    object tPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object tPessoaNOMEPAI: TStringField
      FieldName = 'NOMEPAI'
      Size = 50
    end
    object tPessoaNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 50
    end
    object tPessoaCODCLAUSULA: TIntegerField
      FieldName = 'CODCLAUSULA'
    end
    object tPessoaDESCCLAUSULA: TBlobField
      FieldName = 'DESCCLAUSULA'
      Size = 1
    end
    object tPessoaALUNO: TStringField
      FieldName = 'ALUNO'
      FixedChar = True
      Size = 1
    end
    object tPessoaNATURALIDADE_CID: TIntegerField
      FieldName = 'NATURALIDADE_CID'
    end
    object tPessoaNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object tPessoaEMPREGOS_ANT: TBlobField
      FieldName = 'EMPREGOS_ANT'
      Size = 1
    end
    object tPessoaCURSOS_ANT: TBlobField
      FieldName = 'CURSOS_ANT'
      Size = 1
    end
    object tPessoaINFO_ADICIONAIS: TBlobField
      FieldName = 'INFO_ADICIONAIS'
      Size = 1
    end
    object tPessoaFOTO_CAMINHO: TStringField
      FieldName = 'FOTO_CAMINHO'
      Size = 100
    end
    object tPessoaFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object tPessoaSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object tPessoaREGISTRO_DPF: TStringField
      FieldName = 'REGISTRO_DPF'
      Size = 15
    end
    object tPessoaEXP_REGISTRO_DPF: TStringField
      FieldName = 'EXP_REGISTRO_DPF'
      Size = 11
    end
    object tPessoaDT_FORMACAO: TDateField
      FieldName = 'DT_FORMACAO'
    end
    object tPessoaCIDADENOME: TStringField
      FieldName = 'CIDADENOME'
      ProviderFlags = []
      Size = 30
    end
    object tPessoaCONTRASENHA: TStringField
      FieldName = 'CONTRASENHA'
      Size = 100
    end
    object tPessoaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 100
    end
    object tPessoaCHAVE: TStringField
      FieldName = 'CHAVE'
      FixedChar = True
      Size = 1
    end
    object tPessoaCONTROLE: TStringField
      FieldName = 'CONTROLE'
      FixedChar = True
      Size = 1
    end
  end
  object PessoaP: TDataSetProvider
    DataSet = Pessoa
    Left = 380
    Top = 328
  end
  object Pessoa: TSQLDataSet
    CommandText = 
      'SELECT P.*, C.NOME CIDADENOME'#13#10'FROM PESSOA P'#13#10'INNER JOIN CIDADE ' +
      'C ON (P.CIDADE = C.ID)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 364
    Top = 328
    object PessoaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object PessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object PessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 40
    end
    object PessoaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object PessoaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object PessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object PessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object PessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object PessoaESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object PessoaFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object PessoaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object PessoaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 15
    end
    object PessoaIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 10
    end
    object PessoaESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 12
    end
    object PessoaPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 25
    end
    object PessoaNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
    end
    object PessoaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object PessoaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object PessoaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object PessoaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 1
    end
    object PessoaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object PessoaREFPESSOAL1: TStringField
      FieldName = 'REFPESSOAL1'
      Size = 40
    end
    object PessoaREFPESSOAL2: TStringField
      FieldName = 'REFPESSOAL2'
      Size = 40
    end
    object PessoaREFPESSOALEND1: TStringField
      FieldName = 'REFPESSOALEND1'
      Size = 40
    end
    object PessoaREFPESSOALEND2: TStringField
      FieldName = 'REFPESSOALEND2'
      Size = 40
    end
    object PessoaREFPESSOALFONE1: TStringField
      FieldName = 'REFPESSOALFONE1'
      Size = 15
    end
    object PessoaREFPESSOALFONE2: TStringField
      FieldName = 'REFPESSOALFONE2'
      Size = 15
    end
    object PessoaREFCOMERCIAL1: TStringField
      FieldName = 'REFCOMERCIAL1'
      Size = 40
    end
    object PessoaREFCOMERCIAL2: TStringField
      FieldName = 'REFCOMERCIAL2'
      Size = 40
    end
    object PessoaREFCOMERCIALEND1: TStringField
      FieldName = 'REFCOMERCIALEND1'
      Size = 40
    end
    object PessoaREFCOMERCIALEND2: TStringField
      FieldName = 'REFCOMERCIALEND2'
      Size = 40
    end
    object PessoaREFCOMERCIALFONE1: TStringField
      FieldName = 'REFCOMERCIALFONE1'
      Size = 15
    end
    object PessoaREFCOMERCIALFONE2: TStringField
      FieldName = 'REFCOMERCIALFONE2'
      Size = 15
    end
    object PessoaCIDADE: TIntegerField
      FieldName = 'CIDADE'
    end
    object PessoaTRANSPORTADORA: TStringField
      FieldName = 'TRANSPORTADORA'
      FixedChar = True
      Size = 1
    end
    object PessoaPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object PessoaTIPOCOMISSAO: TStringField
      FieldName = 'TIPOCOMISSAO'
      FixedChar = True
      Size = 1
    end
    object PessoaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object PessoaDTCONTRATOINI: TDateField
      FieldName = 'DTCONTRATOINI'
    end
    object PessoaDTCONTRATOFIM: TDateField
      FieldName = 'DTCONTRATOFIM'
    end
    object PessoaCONTRATODEVOLVIDO: TDateField
      FieldName = 'CONTRATODEVOLVIDO'
    end
    object PessoaCOBENDERECO: TStringField
      FieldName = 'COBENDERECO'
      Size = 40
    end
    object PessoaCOBNUMERO: TIntegerField
      FieldName = 'COBNUMERO'
    end
    object PessoaCOBCOMPLEMENTO: TStringField
      FieldName = 'COBCOMPLEMENTO'
      Size = 10
    end
    object PessoaCOBBAIRRO: TStringField
      FieldName = 'COBBAIRRO'
      Size = 30
    end
    object PessoaCOBCIDADE: TIntegerField
      FieldName = 'COBCIDADE'
    end
    object PessoaCOBUF: TStringField
      FieldName = 'COBUF'
      Size = 2
    end
    object PessoaCOBCONTATO: TStringField
      FieldName = 'COBCONTATO'
      Size = 30
    end
    object PessoaENDNUMERO: TIntegerField
      FieldName = 'ENDNUMERO'
    end
    object PessoaENDCOMPLEMENTO: TStringField
      FieldName = 'ENDCOMPLEMENTO'
      Size = 15
    end
    object PessoaIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
    end
    object PessoaCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object PessoaAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object PessoaNUMCONTACORRENTE: TStringField
      FieldName = 'NUMCONTACORRENTE'
      Size = 15
    end
    object PessoaLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
    object PessoaDIAPAGAMENTO: TIntegerField
      FieldName = 'DIAPAGAMENTO'
    end
    object PessoaCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object PessoaFORMAPGTO: TIntegerField
      FieldName = 'FORMAPGTO'
    end
    object PessoaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object PessoaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 50
    end
    object PessoaSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object PessoaCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 40
    end
    object PessoaDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object PessoaCEL: TStringField
      FieldName = 'CEL'
      Size = 15
    end
    object PessoaPLANOSAUDE_ID: TIntegerField
      FieldName = 'PLANOSAUDE_ID'
    end
    object PessoaCOBCEP: TStringField
      FieldName = 'COBCEP'
      Size = 10
    end
    object PessoaVLRPGTO: TFloatField
      FieldName = 'VLRPGTO'
    end
    object PessoaNUMCARTEIRA: TStringField
      FieldName = 'NUMCARTEIRA'
      Size = 3
    end
    object PessoaFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      FixedChar = True
      Size = 1
    end
    object PessoaCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
    object PessoaCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object PessoaTIPOSALARIO: TStringField
      FieldName = 'TIPOSALARIO'
      FixedChar = True
      Size = 1
    end
    object PessoaVALORSALARIO: TFloatField
      FieldName = 'VALORSALARIO'
      DisplayFormat = '0.00'
    end
    object PessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object PessoaNOMEPAI: TStringField
      FieldName = 'NOMEPAI'
      Size = 50
    end
    object PessoaNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 50
    end
    object PessoaCODCLAUSULA: TIntegerField
      FieldName = 'CODCLAUSULA'
    end
    object PessoaDESCCLAUSULA: TBlobField
      FieldName = 'DESCCLAUSULA'
      Size = 1
    end
    object PessoaALUNO: TStringField
      FieldName = 'ALUNO'
      FixedChar = True
      Size = 1
    end
    object PessoaNATURALIDADE_CID: TIntegerField
      FieldName = 'NATURALIDADE_CID'
    end
    object PessoaNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object PessoaEMPREGOS_ANT: TBlobField
      FieldName = 'EMPREGOS_ANT'
      Size = 1
    end
    object PessoaCURSOS_ANT: TBlobField
      FieldName = 'CURSOS_ANT'
      Size = 1
    end
    object PessoaINFO_ADICIONAIS: TBlobField
      FieldName = 'INFO_ADICIONAIS'
      Size = 1
    end
    object PessoaFOTO_CAMINHO: TStringField
      FieldName = 'FOTO_CAMINHO'
      Size = 100
    end
    object PessoaFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object PessoaSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object PessoaREGISTRO_DPF: TStringField
      FieldName = 'REGISTRO_DPF'
      Size = 15
    end
    object PessoaEXP_REGISTRO_DPF: TStringField
      FieldName = 'EXP_REGISTRO_DPF'
      Size = 11
    end
    object PessoaDT_FORMACAO: TDateField
      FieldName = 'DT_FORMACAO'
    end
    object PessoaCIDADENOME: TStringField
      FieldName = 'CIDADENOME'
      ProviderFlags = []
      Size = 30
    end
    object PessoaCONTRASENHA: TStringField
      FieldName = 'CONTRASENHA'
      Size = 100
    end
    object PessoaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 100
    end
    object PessoaCHAVE: TStringField
      FieldName = 'CHAVE'
      FixedChar = True
      Size = 1
    end
    object PessoaCONTROLE: TStringField
      FieldName = 'CONTROLE'
      FixedChar = True
      Size = 1
    end
  end
  object dsCidade: TDataSource
    DataSet = tCidade
    Left = 254
    Top = 8
  end
  object tCidade: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'CidadeP'
    Left = 239
    Top = 8
    object tCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object tCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object tCidadeCODPAIS: TIntegerField
      FieldName = 'CODPAIS'
    end
    object tCidadePERISSQN: TFloatField
      FieldName = 'PERISSQN'
      DisplayFormat = '0.00'
    end
    object tCidadeCODPRACASICREDI: TIntegerField
      FieldName = 'CODPRACASICREDI'
    end
    object tCidadeSITSICREDI: TStringField
      FieldName = 'SITSICREDI'
      FixedChar = True
      Size = 1
    end
    object tCidadeTIPOCOBSICREDI: TStringField
      FieldName = 'TIPOCOBSICREDI'
      FixedChar = True
      Size = 1
    end
    object tCidadeCOOPERATIVASICREDI: TStringField
      FieldName = 'COOPERATIVASICREDI'
      FixedChar = True
      Size = 4
    end
    object tCidadePOSTOSICREDI: TStringField
      FieldName = 'POSTOSICREDI'
      Size = 2
    end
    object tCidadeDTALTSICREDI: TDateField
      FieldName = 'DTALTSICREDI'
    end
  end
  object CidadeP: TDataSetProvider
    DataSet = Cidade
    Left = 223
    Top = 8
  end
  object Cidade: TSQLDataSet
    CommandText = 'SELECT * FROM CIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 199
    Top = 8
  end
  object VerificaCGC1: TVerificaCGC
    Resultado = False
    Left = 468
    Top = 96
  end
  object VerificaCPF1: TVerificaCPF
    Resultado = False
    Left = 436
    Top = 96
  end
end
