object fRelBoletoSicred: TfRelBoletoSicred
  Left = 20
  Top = 16
  Width = 808
  Height = 728
  Caption = 'fRelBoletoSicred'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    AllowedBands = [btDetail]
    DataSource = fCobSicred.msBoletos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.RightMargin = 3.000000000000000000
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 38
      Width = 757
      Height = 1027
      DataSource = fCobSicred.msBoletos
      BeforePrint = RLSubDetail1BeforePrint
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 757
        Height = 921
        BeforePrint = RLBand2BeforePrint
        object RLDraw44: TRLDraw
          Left = 0
          Top = 432
          Width = 755
          Height = 2
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLBarcode2: TRLBarcode
          Left = 14
          Top = 818
          Width = 432
          Height = 55
          Caption = '74893103210005770801807006430099822340000001000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Margins.LeftMargin = 1.000000000000000000
          Margins.RightMargin = 1.000000000000000000
          ParentFont = False
          Ratio = 3.000000000000000000
        end
        object RLDraw45: TRLDraw
          Left = 0
          Top = 478
          Width = 539
          Height = 34
        end
        object RLLabel48: TRLLabel
          Left = 1
          Top = 479
          Width = 87
          Height = 12
          Caption = 'Local de pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw46: TRLDraw
          Left = 538
          Top = 478
          Width = 215
          Height = 34
          Brush.Color = 14408667
          Color = 14408667
          ParentColor = False
          Transparent = False
        end
        object RLLabel49: TRLLabel
          Left = 539
          Top = 479
          Width = 52
          Height = 12
          Caption = 'Vencimento'
          Color = 14408667
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDraw47: TRLDraw
          Left = 0
          Top = 511
          Width = 539
          Height = 68
        end
        object RLLabel50: TRLLabel
          Left = 1
          Top = 512
          Width = 38
          Height = 12
          Caption = 'Cedente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw48: TRLDraw
          Left = 538
          Top = 511
          Width = 215
          Height = 68
        end
        object RLLabel51: TRLLabel
          Left = 539
          Top = 512
          Width = 110
          Height = 12
          Caption = 'Ag'#234'ncia / C'#243'digo cedente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw49: TRLDraw
          Left = 0
          Top = 578
          Width = 113
          Height = 31
        end
        object RLLabel52: TRLLabel
          Left = 1
          Top = 579
          Width = 72
          Height = 12
          Caption = 'Data documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw50: TRLDraw
          Left = 538
          Top = 578
          Width = 215
          Height = 31
        end
        object RLLabel53: TRLLabel
          Left = 539
          Top = 579
          Width = 64
          Height = 12
          Caption = 'Nosso n'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw51: TRLDraw
          Left = 112
          Top = 578
          Width = 129
          Height = 31
        end
        object RLLabel54: TRLLabel
          Left = 113
          Top = 579
          Width = 85
          Height = 12
          Caption = 'N'#250'mero documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw52: TRLDraw
          Left = 240
          Top = 578
          Width = 121
          Height = 31
        end
        object RLLabel55: TRLLabel
          Left = 241
          Top = 579
          Width = 85
          Height = 12
          Caption = 'Esp'#233'cie documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw53: TRLDraw
          Left = 360
          Top = 578
          Width = 66
          Height = 31
        end
        object RLLabel56: TRLLabel
          Left = 361
          Top = 579
          Width = 29
          Height = 12
          Caption = 'Aceite'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw54: TRLDraw
          Left = 425
          Top = 578
          Width = 114
          Height = 31
        end
        object RLLabel57: TRLLabel
          Left = 426
          Top = 579
          Width = 90
          Height = 12
          Caption = 'Data processamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw55: TRLDraw
          Left = 0
          Top = 608
          Width = 113
          Height = 31
        end
        object RLDraw56: TRLDraw
          Left = 538
          Top = 608
          Width = 215
          Height = 31
        end
        object RLLabel59: TRLLabel
          Left = 539
          Top = 611
          Width = 100
          Height = 12
          Caption = '(=) Valor do documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw58: TRLDraw
          Left = 112
          Top = 608
          Width = 177
          Height = 31
        end
        object RLLabel61: TRLLabel
          Left = 118
          Top = 612
          Width = 66
          Height = 12
          Caption = 'Esp'#233'cie Moeda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw59: TRLDraw
          Left = 288
          Top = 608
          Width = 138
          Height = 31
        end
        object RLLabel62: TRLLabel
          Left = 289
          Top = 612
          Width = 80
          Height = 12
          Caption = 'Quantidade Moeda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw60: TRLDraw
          Left = 425
          Top = 608
          Width = 114
          Height = 31
        end
        object RLLabel63: TRLLabel
          Left = 426
          Top = 612
          Width = 54
          Height = 12
          Caption = 'Valor Moeda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw61: TRLDraw
          Left = 0
          Top = 638
          Width = 539
          Height = 105
        end
        object RLDraw62: TRLDraw
          Left = 0
          Top = 742
          Width = 753
          Height = 62
        end
        object RLDraw63: TRLDraw
          Left = 538
          Top = 638
          Width = 215
          Height = 27
        end
        object RLDraw64: TRLDraw
          Left = 538
          Top = 664
          Width = 215
          Height = 27
        end
        object RLDraw65: TRLDraw
          Left = 538
          Top = 690
          Width = 215
          Height = 27
        end
        object RLDraw66: TRLDraw
          Left = 538
          Top = 716
          Width = 215
          Height = 27
        end
        object RLLabel64: TRLLabel
          Left = 514
          Top = 807
          Width = 238
          Height = 14
          Alignment = taRightJustify
          Caption = 'Autentica'#231#227'o Mec'#226'nica / Ficha de Compensa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText30: TRLDBText
          Left = 660
          Top = 494
          Width = 61
          Height = 16
          Alignment = taRightJustify
          Color = 14408667
          DataField = 'DtVencto'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText31: TRLDBText
          Left = 8
          Top = 593
          Width = 97
          Height = 14
          AutoSize = False
          DataField = 'DtGerado'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel65: TRLLabel
          Left = 4
          Top = 494
          Width = 412
          Height = 14
          Caption = 'PAG'#193'VEL PREFERENCIALMENTE NAS COOPERATIVAS DE CR'#201'DITO DO SICREDI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel66: TRLLabel
          Left = 118
          Top = 623
          Width = 30
          Height = 14
          Caption = 'REAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText34: TRLDBText
          Left = 428
          Top = 593
          Width = 102
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'DtGerado'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText35: TRLDBText
          Left = 243
          Top = 593
          Width = 62
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'EspecieDoc'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText36: TRLDBText
          Left = 141
          Top = 593
          Width = 46
          Height = 14
          Alignment = taRightJustify
          DataField = 'NumNota'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw67: TRLDraw
          Left = 169
          Top = 449
          Width = 2
          Height = 30
          DrawData.Strings = (
            '0 0'
            '0 1')
          DrawKind = dkCustom
          Pen.Width = 2
        end
        object RLDraw68: TRLDraw
          Left = 233
          Top = 449
          Width = 2
          Height = 30
          DrawData.Strings = (
            '0 0'
            '0 1')
          DrawKind = dkCustom
          Pen.Width = 2
        end
        object RLLabel69: TRLLabel
          Left = 174
          Top = 454
          Width = 57
          Height = 22
          Caption = '748-X'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel70: TRLLabel
          Left = 270
          Top = 454
          Width = 456
          Height = 19
          Alignment = taCenter
          Caption = '00000.00000 00000.000000 00000.000000 0 00000000000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel71: TRLLabel
          Left = 1
          Top = 641
          Width = 50
          Height = 12
          Caption = 'Instru'#231#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel72: TRLLabel
          Left = 539
          Top = 639
          Width = 121
          Height = 12
          Caption = '(-) Descontos / Abatimentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel73: TRLLabel
          Left = 539
          Top = 665
          Width = 68
          Height = 12
          Caption = '(+) Mora / Multa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel74: TRLLabel
          Left = 539
          Top = 691
          Width = 97
          Height = 12
          Caption = '(+) Outros Acr'#233'scimos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel75: TRLLabel
          Left = 539
          Top = 717
          Width = 74
          Height = 12
          Caption = '(=) Valor cobrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText37: TRLDBText
          Left = 662
          Top = 623
          Width = 59
          Height = 14
          Alignment = taRightJustify
          DataField = 'VlrParcela'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText38: TRLDBText
          Left = 80
          Top = 746
          Width = 505
          Height = 14
          AutoSize = False
          DataField = 'Cliente'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText39: TRLDBText
          Left = 80
          Top = 760
          Width = 505
          Height = 14
          AutoSize = False
          DataField = 'Endereco'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText40: TRLDBText
          Left = 80
          Top = 774
          Width = 89
          Height = 14
          AutoSize = False
          DataField = 'Cep'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel76: TRLLabel
          Left = 1
          Top = 729
          Width = 37
          Height = 12
          Caption = 'Sacado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText41: TRLDBText
          Left = 176
          Top = 774
          Width = 249
          Height = 14
          AutoSize = False
          DataField = 'Cidade'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText42: TRLDBText
          Left = 448
          Top = 774
          Width = 43
          Height = 14
          AutoSize = False
          DataField = 'Uf'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 713
          Top = 543
          Width = 8
          Height = 16
          Alignment = taRightJustify
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 161
          Top = 8
          Width = 2
          Height = 30
          DrawData.Strings = (
            '0 0'
            '0 1')
          DrawKind = dkCustom
          Pen.Width = 2
        end
        object RLDraw2: TRLDraw
          Left = 225
          Top = 8
          Width = 2
          Height = 30
          DrawData.Strings = (
            '0 0'
            '0 1')
          DrawKind = dkCustom
          Pen.Width = 2
        end
        object RLLabel6: TRLLabel
          Left = 166
          Top = 16
          Width = 57
          Height = 22
          Caption = '748-X'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 607
          Top = 19
          Width = 144
          Height = 19
          Caption = 'Recibo do Sacado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLImage2: TRLImage
          Left = 5
          Top = 5
          Width = 151
          Height = 33
          Picture.Data = {
            0A544A504547496D6167657B0C0000FFD8FFE000104A46494600010100000100
            010000FFDB0043000B08080A08070B0A090A0D0C0B0D111C12110F0F1122191A
            141C29242B2A282427272D3240372D303D302727384C393D43454849482B364F
            554E465440474845FFDB0043010C0D0D110F1121121221452E272E4545454545
            4545454545454545454545454545454545454545454545454545454545454545
            45454545454545454545454545FFC0001108004100DC03012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F5CA
            28A2800A28AE6FC6FE206D03426FB302F7F767C8B645FBC58F703DBF9E2803A4
            AE0F4BB9B9BAF883AD68DAADDDCCB0AC5E65B22CCD1A84241230A467860327D2
            BA1D22D6F348D32D9B51BA7BA9CA28BA91CF438C6E1EC3807D7A9EF9E6BC55FF
            00127F891E1ED54711DD036B21FD3FF671F9500763676F1DAEA13C508658C431
            1C162DCE5C679FA0AAD0789AC2E757BCD3623234D64479EDB7E54040E73E9938
            F6C1EC33525F5F47A649A95ECDFEAEDED12423D706438AE77E1A59B0D0EEB59B
            C03ED1AACEF33B37F701207E19DC7F1A00EDA8AAB600884E33E496FDC86EA131
            FF00EBC7B62AD500145145001451450014514500145145001451450014514500
            1451450014514500145145001451450015CE7897C3126A97969AAE9F7022D52C
            39804C3744DD7861DBAF51FE15D1D1401CEE93E288EEEE7FB2F58B73A76AB8C1
            B797EE4DEA636E8C3DBAD6578F744BBD4F438ED2C6332DDDB4EB35A804659470
            5724F51907DC0FAD74FAC68961AF59FD9B50804880EE46070D1B7F794F634CD3
            B4AB8B386DE2BAD425BE1064ABCCA3793D012475C0247BE73401C47C41D46EA5
            D1E0B330C96F36A86081BCD1B402A58B0CFB165E7EB5DBDA59C70DAC1A6403FD
            16D2358DFD1B03017FA9FA81DCD5BBDB7B6B8B7CDDDBC73A447CD0AEA1B0CBC8
            233DEB91D0750D43C6366D3E9F32E8FA4472188242A1AE24C609F98F09D7B027
            DE803ACB8D4EC6D2610DC5E4114A50B88DE401B68EA7156AB1ED3C39A76976B7
            3F63B50D3CC8C249A425E59323BB1E4D69DA3F996703EEDDBA353BBD78EB400B
            35C456E0195B05B8550325BE80726A0FB6C84656C6E4AFAE107E85B3595E13D4
            7FB6AD6EF53690B3497324688C0030A29C2AFE5F31F73546F2EFC546F5C4371A
            4D9C3B8845B88A53919E32FF00772463A50074B15F472CC2131CB1C8C0B28910
            8C81D79E9DC559AE7D2F6FAC9AD9B58FB2FF0068DD486DADA2B60C53FBC49279
            E8B93D3A62B424BC9ED258CDE35B2C277176048DAA075E7DF03F1A00D0A2AA19
            6F25F9A18A38D3B1949DC7F0038FCFF2A86EAEEEEC2DA4B9B816E618C65B6B30
            38A00D1A2B32C6FAEB52B38AF2D4402DE71BE2DE1B250FDD27D323071563FE26
            3FF4EBFF008F5005BA2B2DF57DF7B0D84013ED8E1DDD5F25515782723DC8C74E
            FE98AB3FF131FF00A75FFC7A802DD158DA96B3268C8B2DFF0092626C8C4418B1
            390A001EECCA3F1ABA3FB47033F6507BFDEA00B94553325EC4A5E44824451921
            090D8F6CF07E9C5411EADF6EBE9ED74F28ED6CA8666901C02C32A07BE39A00D3
            A2ABDA4D2CBE72CDB37C526CCA6707E507BFD6AC500145145001451450015E77
            E02B7806BBE26D36E228E616D7598C320608A4B0C0279EC38F6AF44AE62D3444
            B1F136A3ABDBEAB101A800AF1103E4C018239E4F0793EBD0D006C4D67A65BA83
            2DADB26785C44324FB60649FA51636E63B89258E1686074036BB64B104F38EDD
            7EBEBD29AF75A6E996F2DDCD731011A169267903311F5FE82B95D06E751D6BED
            DE23BE9E6B6B3B8C436168642A98CE1646F7248E7EBDB1401D8EA9A85B695A6D
            C5EDEB6DB7850B3F19C8F4C7BF4ACFD346897B6F0C96BA7C114770BE645BED95
            3CC1EA38FD3AF7E95CF697AEDC78A175EB4D496D9B4FB49D6D99553978C92A58
            B678C637703B547E14BE3A4EA72F83F57912E2300BD84ECC184B1E785F623048
            FA63B0A00ED7FB2EC3FE7CADBFEFD2FF00854ECD15AC05999218635E49215540
            FE42AA3CADA7B461E50F048E10798D86427DCF51D7AF3F5ACFF15472EA9E1FB8
            B3D3E6B7324C555BCC9428D99058679EA063F1A00C2934ABED2755B8D4BC337E
            B1C378DE6CD677D04821663CE5580E09ADEF0EEA9AAEA5F6A8B57D2D6D4C242A
            4D1B968E7047254100E3FC6B30EBFE278CEC4D074F655E015D497047B6456859
            5EEAF7847F681D3AC2223E610DC19643D3807002F7E79A00A16A46A1F101E25C
            9B6D1A0629E81E5C0C7E01587B74A5D6EE85CF8DF45D31D80849691C11C3320D
            E17F3D8DF80ACEB3975DD1F55D525B3D22CEE23BCB8DCB249A82A9D8A36A8C73
            DB9FA935A1E21D006B1610CF06A16F6FACDACC6E209D1C6D0DFDD3DF180A3F0F
            C28035F5B81AE9A2864D46E34EB7FBCD2DBB042C7FBA588381DFDEB90D774E16
            BA4CF6C9E23BFD4A6BED96D0C33CBB97733A8DC318CE013EB5A967E26F12C6AB
            0DF787629651C19E1BE8D636E3AF278AABADAEB97B7DA36A22CACA692D1DA56B
            5178A151B185F98F53CE781FC22803A7D4E1B583458B4D79D608E709671E491B
            B231B411C8240201AC4D16C53C1B79269D0C7A8DF3EA0C6689546E8A0038C162
            78EA324FB75A75DD94FE2CD1A5875C5B6D3E65CF90B15C090A3F0564DC3D3046
            3DCD5AF0DEAB36B7A634577B63D634E93CB9D7B6F1D1BFDD61FCCD0037C3D034
            FE25D6EFDD83F96CB68840E01037BE3DB7301FF01AC1F116A7E1ABBD6A7FB66A
            FAEC13447CA68ED0CAB182BC71B5707EB56343B8F16E9D60D147E1FB7B8679A5
            92495AF954BBB3927231DBA7E15A916ADE2F79515FC37691A1600B9BF0768F5E
            050063C1616C751D134EB69EE2E924BB7BD792E25F35C4712FCAA4F38CB10715
            B1E36537160608B529AC658637B9436EF8791D461100EA4124F03D0552B8B4F1
            15878A26D42CB4882FD4DBAC2B23DCAC7C9259C81C9E4903E8A2ADFF006BF8C7
            FE858B5FFC182FF85006A69F25E5A7856D9F5172D7A96ABE6963C9936FF3CD67
            781622BA0CB7F29E6FA779C1E9841F2A7FE3AA2A5BE835FBDF0FDF79B15BA5F4
            9194B7B7B793842463733B6324649E8071DCF4ABA2A788459C3A55D68F6D6367
            1C022F3C5D076C00070A07522803A3D341FB0C6EC30D2E6520F62C7763F5C55A
            A0000000600E80514005145140051451400570363E13D62D75BB4BD668CDBC3B
            375B0DA55B1088C9CE3AE7F4F7AEFA8A00F38BF53E3BF11AE8F05BAC3A469CFB
            EFA58C8FDEBF64047E3FCFB0AED2EE3C4D6B6B6F6AB24302EF310202A8036A8C
            1FC7FEF9AC597C3F7DE1FD61B50F0DAA3DA5D48BF6BD39DB6AE49C1910F623B8
            FF00EB0AE8ECD1CBCF3CA8C8D23602B6321470071EF93F8D00705F0EE017373E
            2F81D42896ECA15EA064B8C56A7887419BC4BA2C0F6D6496DA940565B7B95755
            28E3A8381D38FCC0ACEF877710DBEA9E2A69A548D4DF7058E33CBD773A71CC73
            6D5611F9ACD19652320FCC4E0F3D49FCA80285B2EA52A40FA9D8C724D1C41582
            C8BB4B9FBCC01FA0C7A734D92CA7935386E4E9B1795146CA137AE771C73D318C
            56E514019DB5FF00E8151FFDF4946D7FFA0547FF007D2568D14019DB5FFE8151
            FF00DF4946D7FF00A0547FF7D2568D14019DB5FF00E8151FFDF4946D7FFA0547
            FF007D2568D14019DB5FFE8151FF00DF495CFDEE87AC41AD2EB1A0C16B0DC6CF
            26586E243B258CF23EEF4DA471EC71D0576345006568B16A9B649F5616D14D27
            DE86DB25723A36E27AE300F1D856AD1450014514500145145001451450014514
            500145145001451450014514500721E1DFF90EC9FF006D3FF46495D7D1450014
            5145001451450014514500145145001451450014514500145145001451450014
            514500145145007FFFD9}
          Stretch = True
        end
        object RLImage1: TRLImage
          Left = 4
          Top = 445
          Width = 156
          Height = 31
          Picture.Data = {
            0A544A504547496D6167657B0C0000FFD8FFE000104A46494600010100000100
            010000FFDB0043000B08080A08070B0A090A0D0C0B0D111C12110F0F1122191A
            141C29242B2A282427272D3240372D303D302727384C393D43454849482B364F
            554E465440474845FFDB0043010C0D0D110F1121121221452E272E4545454545
            4545454545454545454545454545454545454545454545454545454545454545
            45454545454545454545454545FFC0001108004100DC03012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F5CA
            28A2800A28AE6FC6FE206D03426FB302F7F767C8B645FBC58F703DBF9E2803A4
            AE0F4BB9B9BAF883AD68DAADDDCCB0AC5E65B22CCD1A84241230A467860327D2
            BA1D22D6F348D32D9B51BA7BA9CA28BA91CF438C6E1EC3807D7A9EF9E6BC55FF
            00127F891E1ED54711DD036B21FD3FF671F9500763676F1DAEA13C508658C431
            1C162DCE5C679FA0AAD0789AC2E757BCD3623234D64479EDB7E54040E73E9938
            F6C1EC33525F5F47A649A95ECDFEAEDED12423D706438AE77E1A59B0D0EEB59B
            C03ED1AACEF33B37F701207E19DC7F1A00EDA8AAB600884E33E496FDC86EA131
            FF00EBC7B62AD500145145001451450014514500145145001451450014514500
            1451450014514500145145001451450015CE7897C3126A97969AAE9F7022D52C
            39804C3744DD7861DBAF51FE15D1D1401CEE93E288EEEE7FB2F58B73A76AB8C1
            B797EE4DEA636E8C3DBAD6578F744BBD4F438ED2C6332DDDB4EB35A804659470
            5724F51907DC0FAD74FAC68961AF59FD9B50804880EE46070D1B7F794F634CD3
            B4AB8B386DE2BAD425BE1064ABCCA3793D012475C0247BE73401C47C41D46EA5
            D1E0B330C96F36A86081BCD1B402A58B0CFB165E7EB5DBDA59C70DAC1A6403FD
            16D2358DFD1B03017FA9FA81DCD5BBDB7B6B8B7CDDDBC73A447CD0AEA1B0CBC8
            233DEB91D0750D43C6366D3E9F32E8FA4472188242A1AE24C609F98F09D7B027
            DE803ACB8D4EC6D2610DC5E4114A50B88DE401B68EA7156AB1ED3C39A76976B7
            3F63B50D3CC8C249A425E59323BB1E4D69DA3F996703EEDDBA353BBD78EB400B
            35C456E0195B05B8550325BE80726A0FB6C84656C6E4AFAE107E85B3595E13D4
            7FB6AD6EF53690B3497324688C0030A29C2AFE5F31F73546F2EFC546F5C4371A
            4D9C3B8845B88A53919E32FF00772463A50074B15F472CC2131CB1C8C0B28910
            8C81D79E9DC559AE7D2F6FAC9AD9B58FB2FF0068DD486DADA2B60C53FBC49279
            E8B93D3A62B424BC9ED258CDE35B2C277176048DAA075E7DF03F1A00D0A2AA19
            6F25F9A18A38D3B1949DC7F0038FCFF2A86EAEEEEC2DA4B9B816E618C65B6B30
            38A00D1A2B32C6FAEB52B38AF2D4402DE71BE2DE1B250FDD27D323071563FE26
            3FF4EBFF008F5005BA2B2DF57DF7B0D84013ED8E1DDD5F25515782723DC8C74E
            FE98AB3FF131FF00A75FFC7A802DD158DA96B3268C8B2DFF0092626C8C4418B1
            390A001EECCA3F1ABA3FB47033F6507BFDEA00B94553325EC4A5E44824451921
            090D8F6CF07E9C5411EADF6EBE9ED74F28ED6CA8666901C02C32A07BE39A00D3
            A2ABDA4D2CBE72CDB37C526CCA6707E507BFD6AC500145145001451450015E77
            E02B7806BBE26D36E228E616D7598C320608A4B0C0279EC38F6AF44AE62D3444
            B1F136A3ABDBEAB101A800AF1103E4C018239E4F0793EBD0D006C4D67A65BA83
            2DADB26785C44324FB60649FA51636E63B89258E1686074036BB64B104F38EDD
            7EBEBD29AF75A6E996F2DDCD731011A169267903311F5FE82B95D06E751D6BED
            DE23BE9E6B6B3B8C436168642A98CE1646F7248E7EBDB1401D8EA9A85B695A6D
            C5EDEB6DB7850B3F19C8F4C7BF4ACFD346897B6F0C96BA7C114770BE645BED95
            3CC1EA38FD3AF7E95CF697AEDC78A175EB4D496D9B4FB49D6D99553978C92A58
            B678C637703B547E14BE3A4EA72F83F57912E2300BD84ECC184B1E785F623048
            FA63B0A00ED7FB2EC3FE7CADBFEFD2FF00854ECD15AC05999218635E49215540
            FE42AA3CADA7B461E50F048E10798D86427DCF51D7AF3F5ACFF15472EA9E1FB8
            B3D3E6B7324C555BCC9428D99058679EA063F1A00C2934ABED2755B8D4BC337E
            B1C378DE6CD677D04821663CE5580E09ADEF0EEA9AAEA5F6A8B57D2D6D4C242A
            4D1B968E7047254100E3FC6B30EBFE278CEC4D074F655E015D497047B6456859
            5EEAF7847F681D3AC2223E610DC19643D3807002F7E79A00A16A46A1F101E25C
            9B6D1A0629E81E5C0C7E01587B74A5D6EE85CF8DF45D31D80849691C11C3320D
            E17F3D8DF80ACEB3975DD1F55D525B3D22CEE23BCB8DCB249A82A9D8A36A8C73
            DB9FA935A1E21D006B1610CF06A16F6FACDACC6E209D1C6D0DFDD3DF180A3F0F
            C28035F5B81AE9A2864D46E34EB7FBCD2DBB042C7FBA588381DFDEB90D774E16
            BA4CF6C9E23BFD4A6BED96D0C33CBB97733A8DC318CE013EB5A967E26F12C6AB
            0DF787629651C19E1BE8D636E3AF278AABADAEB97B7DA36A22CACA692D1DA56B
            5178A151B185F98F53CE781FC22803A7D4E1B583458B4D79D608E709671E491B
            B231B411C8240201AC4D16C53C1B79269D0C7A8DF3EA0C6689546E8A0038C162
            78EA324FB75A75DD94FE2CD1A5875C5B6D3E65CF90B15C090A3F0564DC3D3046
            3DCD5AF0DEAB36B7A634577B63D634E93CB9D7B6F1D1BFDD61FCCD0037C3D034
            FE25D6EFDD83F96CB68840E01037BE3DB7301FF01AC1F116A7E1ABBD6A7FB66A
            FAEC13447CA68ED0CAB182BC71B5707EB56343B8F16E9D60D147E1FB7B8679A5
            92495AF954BBB3927231DBA7E15A916ADE2F79515FC37691A1600B9BF0768F5E
            050063C1616C751D134EB69EE2E924BB7BD792E25F35C4712FCAA4F38CB10715
            B1E36537160608B529AC658637B9436EF8791D461100EA4124F03D0552B8B4F1
            15878A26D42CB4882FD4DBAC2B23DCAC7C9259C81C9E4903E8A2ADFF006BF8C7
            FE858B5FFC182FF85006A69F25E5A7856D9F5172D7A96ABE6963C9936FF3CD67
            781622BA0CB7F29E6FA779C1E9841F2A7FE3AA2A5BE835FBDF0FDF79B15BA5F4
            9194B7B7B793842463733B6324649E8071DCF4ABA2A788459C3A55D68F6D6367
            1C022F3C5D076C00070A07522803A3D341FB0C6EC30D2E6520F62C7763F5C55A
            A0000000600E80514005145140051451400570363E13D62D75BB4BD668CDBC3B
            375B0DA55B1088C9CE3AE7F4F7AEFA8A00F38BF53E3BF11AE8F05BAC3A469CFB
            EFA58C8FDEBF64047E3FCFB0AED2EE3C4D6B6B6F6AB24302EF310202A8036A8C
            1FC7FEF9AC597C3F7DE1FD61B50F0DAA3DA5D48BF6BD39DB6AE49C1910F623B8
            FF00EB0AE8ECD1CBCF3CA8C8D23602B6321470071EF93F8D00705F0EE017373E
            2F81D42896ECA15EA064B8C56A7887419BC4BA2C0F6D6496DA940565B7B95755
            28E3A8381D38FCC0ACEF877710DBEA9E2A69A548D4DF7058E33CBD773A71CC73
            6D5611F9ACD19652320FCC4E0F3D49FCA80285B2EA52A40FA9D8C724D1C41582
            C8BB4B9FBCC01FA0C7A734D92CA7935386E4E9B1795146CA137AE771C73D318C
            56E514019DB5FF00E8151FFDF4946D7FFA0547FF007D2568D14019DB5FFE8151
            FF00DF4946D7FF00A0547FF7D2568D14019DB5FF00E8151FFDF4946D7FFA0547
            FF007D2568D14019DB5FFE8151FF00DF495CFDEE87AC41AD2EB1A0C16B0DC6CF
            26586E243B258CF23EEF4DA471EC71D0576345006568B16A9B649F5616D14D27
            DE86DB25723A36E27AE300F1D856AD1450014514500145145001451450014514
            500145145001451450014514500721E1DFF90EC9FF006D3FF46495D7D1450014
            5145001451450014514500145145001451450014514500145145001451450014
            514500145145007FFFD9}
          Stretch = True
        end
        object RLLabel2: TRLLabel
          Left = 189
          Top = 593
          Width = 6
          Height = 14
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 198
          Top = 593
          Width = 36
          Height = 14
          AutoSize = False
          DataField = 'Parcela'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 363
          Top = 593
          Width = 32
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'Aceite'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 42
          Width = 539
          Height = 34
        end
        object RLLabel1: TRLLabel
          Left = 1
          Top = 43
          Width = 87
          Height = 12
          Caption = 'Local de pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw4: TRLDraw
          Left = 538
          Top = 42
          Width = 215
          Height = 34
          Brush.Color = 14408667
          Color = 14408667
          ParentColor = False
          Transparent = False
        end
        object RLLabel4: TRLLabel
          Left = 543
          Top = 43
          Width = 52
          Height = 12
          Caption = 'Vencimento'
          Color = 14408667
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDraw5: TRLDraw
          Left = 0
          Top = 75
          Width = 539
          Height = 68
        end
        object RLLabel5: TRLLabel
          Left = 1
          Top = 76
          Width = 38
          Height = 12
          Caption = 'Cedente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw6: TRLDraw
          Left = 538
          Top = 75
          Width = 215
          Height = 68
        end
        object RLLabel8: TRLLabel
          Left = 543
          Top = 76
          Width = 110
          Height = 12
          Caption = 'Ag'#234'ncia / C'#243'digo cedente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw7: TRLDraw
          Left = 0
          Top = 142
          Width = 113
          Height = 30
        end
        object RLLabel9: TRLLabel
          Left = 1
          Top = 143
          Width = 72
          Height = 12
          Caption = 'Data documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw8: TRLDraw
          Left = 538
          Top = 142
          Width = 215
          Height = 30
        end
        object RLLabel10: TRLLabel
          Left = 543
          Top = 143
          Width = 64
          Height = 12
          Caption = 'Nosso n'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw9: TRLDraw
          Left = 112
          Top = 142
          Width = 129
          Height = 30
        end
        object RLLabel11: TRLLabel
          Left = 113
          Top = 143
          Width = 85
          Height = 12
          Caption = 'N'#250'mero documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw10: TRLDraw
          Left = 240
          Top = 142
          Width = 121
          Height = 30
        end
        object RLLabel12: TRLLabel
          Left = 241
          Top = 143
          Width = 85
          Height = 12
          Caption = 'Esp'#233'cie documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw11: TRLDraw
          Left = 360
          Top = 142
          Width = 66
          Height = 30
        end
        object RLLabel13: TRLLabel
          Left = 361
          Top = 143
          Width = 29
          Height = 12
          Caption = 'Aceite'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw12: TRLDraw
          Left = 425
          Top = 142
          Width = 114
          Height = 30
        end
        object RLLabel14: TRLLabel
          Left = 426
          Top = 143
          Width = 90
          Height = 12
          Caption = 'Data processamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw13: TRLDraw
          Left = 0
          Top = 171
          Width = 113
          Height = 31
        end
        object RLDraw14: TRLDraw
          Left = 538
          Top = 171
          Width = 215
          Height = 31
        end
        object RLLabel15: TRLLabel
          Left = 543
          Top = 174
          Width = 100
          Height = 12
          Caption = '(=) Valor do documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw15: TRLDraw
          Left = 112
          Top = 171
          Width = 177
          Height = 31
        end
        object RLLabel16: TRLLabel
          Left = 118
          Top = 172
          Width = 66
          Height = 12
          Caption = 'Esp'#233'cie Moeda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw16: TRLDraw
          Left = 288
          Top = 171
          Width = 138
          Height = 31
        end
        object RLLabel17: TRLLabel
          Left = 289
          Top = 172
          Width = 80
          Height = 12
          Caption = 'Quantidade Moeda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw17: TRLDraw
          Left = 425
          Top = 171
          Width = 114
          Height = 31
        end
        object RLLabel18: TRLLabel
          Left = 426
          Top = 172
          Width = 54
          Height = 12
          Caption = 'Valor Moeda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw18: TRLDraw
          Left = 0
          Top = 201
          Width = 539
          Height = 105
        end
        object RLDraw19: TRLDraw
          Left = 0
          Top = 305
          Width = 753
          Height = 65
        end
        object RLDraw20: TRLDraw
          Left = 538
          Top = 201
          Width = 215
          Height = 27
        end
        object RLDraw21: TRLDraw
          Left = 538
          Top = 227
          Width = 215
          Height = 27
        end
        object RLDraw22: TRLDraw
          Left = 538
          Top = 253
          Width = 215
          Height = 27
        end
        object RLDraw23: TRLDraw
          Left = 538
          Top = 279
          Width = 215
          Height = 27
        end
        object RLLabel19: TRLLabel
          Left = 515
          Top = 371
          Width = 238
          Height = 14
          Alignment = taRightJustify
          Caption = 'Autentica'#231#227'o Mec'#226'nica / Ficha de Compensa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 664
          Top = 58
          Width = 61
          Height = 16
          Alignment = taRightJustify
          Color = 14408667
          DataField = 'DtVencto'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText5: TRLDBText
          Left = 8
          Top = 156
          Width = 49
          Height = 14
          DataField = 'DtGerado'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 4
          Top = 58
          Width = 412
          Height = 14
          Caption = 'PAG'#193'VEL PREFERENCIALMENTE NAS COOPERATIVAS DE CR'#201'DITO DO SICREDI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 118
          Top = 186
          Width = 30
          Height = 14
          Caption = 'REAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 454
          Top = 156
          Width = 50
          Height = 14
          Alignment = taCenter
          DataField = 'DtGerado'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 245
          Top = 156
          Width = 60
          Height = 14
          Alignment = taRightJustify
          DataField = 'EspecieDoc'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 141
          Top = 156
          Width = 46
          Height = 14
          Alignment = taRightJustify
          DataField = 'NumNota'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 1
          Top = 202
          Width = 50
          Height = 12
          Caption = 'Instru'#231#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 543
          Top = 202
          Width = 121
          Height = 12
          Caption = '(-) Descontos / Abatimentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 543
          Top = 228
          Width = 68
          Height = 12
          Caption = '(+) Mora / Multa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 543
          Top = 254
          Width = 97
          Height = 12
          Caption = '(+) Outros Acr'#233'scimos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel26: TRLLabel
          Left = 543
          Top = 280
          Width = 74
          Height = 12
          Caption = '(=) Valor cobrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 666
          Top = 186
          Width = 59
          Height = 14
          Alignment = taRightJustify
          DataField = 'VlrParcela'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 84
          Top = 308
          Width = 505
          Height = 14
          AutoSize = False
          DataField = 'Cliente'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 84
          Top = 322
          Width = 505
          Height = 14
          AutoSize = False
          DataField = 'Endereco'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText13: TRLDBText
          Left = 84
          Top = 336
          Width = 89
          Height = 14
          AutoSize = False
          DataField = 'Cep'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel27: TRLLabel
          Left = 5
          Top = 307
          Width = 37
          Height = 12
          Caption = 'Sacado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 180
          Top = 336
          Width = 249
          Height = 14
          AutoSize = False
          DataField = 'Cidade'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText15: TRLDBText
          Left = 452
          Top = 336
          Width = 43
          Height = 14
          AutoSize = False
          DataField = 'Uf'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel28: TRLLabel
          Left = 719
          Top = 110
          Width = 6
          Height = 14
          Alignment = taRightJustify
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel29: TRLLabel
          Left = 189
          Top = 156
          Width = 6
          Height = 14
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 198
          Top = 156
          Width = 39
          Height = 14
          DataField = 'Parcela'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText17: TRLDBText
          Left = 362
          Top = 156
          Width = 34
          Height = 14
          Alignment = taCenter
          DataField = 'Aceite'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel30: TRLLabel
          Left = 593
          Top = 354
          Width = 84
          Height = 14
          Alignment = taRightJustify
          Caption = 'C'#243'digo da Baixa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel31: TRLLabel
          Left = 589
          Top = 785
          Width = 84
          Height = 14
          Alignment = taRightJustify
          Caption = 'C'#243'digo da Baixa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst1: TRLLabel
          Left = 6
          Top = 215
          Width = 530
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst2: TRLLabel
          Left = 6
          Top = 230
          Width = 530
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst3: TRLLabel
          Left = 6
          Top = 245
          Width = 530
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst4: TRLLabel
          Left = 6
          Top = 260
          Width = 530
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst5: TRLLabel
          Left = 6
          Top = 275
          Width = 530
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst1A: TRLLabel
          Left = 4
          Top = 654
          Width = 530
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst2A: TRLLabel
          Left = 4
          Top = 669
          Width = 530
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst3A: TRLLabel
          Left = 4
          Top = 684
          Width = 530
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst4A: TRLLabel
          Left = 4
          Top = 699
          Width = 530
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Inst5A: TRLLabel
          Left = 4
          Top = 714
          Width = 530
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText18: TRLDBText
          Left = 84
          Top = 350
          Width = 205
          Height = 14
          AutoSize = False
          DataField = 'CnpjCpfEditado'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText19: TRLDBText
          Left = 80
          Top = 788
          Width = 225
          Height = 14
          AutoSize = False
          DataField = 'CnpjCpfEditado'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel32: TRLLabel
          Left = 50
          Top = 351
          Width = 31
          Height = 14
          Alignment = taRightJustify
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel33: TRLLabel
          Left = 47
          Top = 789
          Width = 31
          Height = 14
          Alignment = taRightJustify
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel58: TRLLabel
          Left = 9
          Top = 102
          Width = 116
          Height = 12
          Caption = 'CNPJ: 11.400.178/0001-46'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel60: TRLLabel
          Left = 15
          Top = 115
          Width = 179
          Height = 12
          Caption = 'End.: Rua Sen. Salgado Filho, 55 - Centro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel35: TRLLabel
          Left = 9
          Top = 538
          Width = 116
          Height = 12
          Caption = 'CNPJ: 11.400.178/0001-46'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel36: TRLLabel
          Left = 15
          Top = 552
          Width = 179
          Height = 12
          Caption = 'End.: Rua Sen. Salgado Filho, 55 - Centro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel77: TRLLabel
          Left = 17
          Top = 128
          Width = 69
          Height = 12
          Caption = 'Cep: 93700-000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel38: TRLLabel
          Left = 17
          Top = 565
          Width = 69
          Height = 12
          Caption = 'Cep: 93700-000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel40: TRLLabel
          Left = 1
          Top = 90
          Width = 295
          Height = 12
          Caption = 'Empresa: PRONTTO SISTEMA DE VIGILANCIA PATRIMONIAL LTDA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel34: TRLLabel
          Left = 8
          Top = 524
          Width = 295
          Height = 12
          Caption = 'Empresa: PRONTTO SISTEMA DE VIGILANCIA PATRIMONIAL LTDA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 516
          Top = 336
          Width = 205
          Height = 14
          AutoSize = False
          DataField = 'Bairro'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText20: TRLDBText
          Left = 524
          Top = 774
          Width = 205
          Height = 14
          AutoSize = False
          DataField = 'Bairro'
          DataSource = fCobSicred.msBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel37: TRLLabel
          Left = 662
          Top = 592
          Width = 59
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel39: TRLLabel
          Left = 666
          Top = 156
          Width = 59
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
end
