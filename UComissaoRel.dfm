object fComissaoRel: TfComissaoRel
  Left = 18
  Top = 106
  Width = 753
  Height = 375
  HorzScrollBar.Position = 67
  BorderIcons = [biSystemMenu]
  Caption = 'fComissaoRel'
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
  object RLReport1: TRLReport
    Left = -65
    Top = 2
    Width = 794
    Height = 1123
    DataSource = fConsComissaoVend.dsExtComissao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 38
      Width = 718
      Height = 403
      DataSource = fConsComissaoVend.dsExtComissao
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 77
        BandType = btHeader
        object RLDraw9: TRLDraw
          Left = 684
          Top = 56
          Width = 34
          Height = 20
        end
        object RLDraw3: TRLDraw
          Left = 130
          Top = 56
          Width = 59
          Height = 20
        end
        object RLDBText1: TRLDBText
          Left = 4
          Top = 5
          Width = 34
          Height = 14
          DataField = 'NOME'
          DataSource = Dm1.dsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLSystemInfo1: TRLSystemInfo
          Left = 634
          Top = 5
          Width = 82
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = itPageNumber
          ParentFont = False
        end
        object RLSystemInfo2: TRLSystemInfo
          Left = 634
          Top = 21
          Width = 35
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 604
          Top = 5
          Width = 29
          Height = 14
          Caption = 'Pag.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 604
          Top = 21
          Width = 29
          Height = 14
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 299
          Top = 29
          Width = 121
          Height = 19
          Caption = 'Contas a Pagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 56
          Width = 59
          Height = 20
        end
        object RLLabel4: TRLLabel
          Left = 9
          Top = 59
          Width = 45
          Height = 15
          Caption = 'N'#176' Mov.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 575
          Top = 56
          Width = 51
          Height = 20
        end
        object RLLabel5: TRLLabel
          Left = 578
          Top = 59
          Width = 44
          Height = 15
          Caption = '% Com.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 137
          Top = 59
          Width = 45
          Height = 15
          Caption = 'N'#176' Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw4: TRLDraw
          Left = 223
          Top = 56
          Width = 51
          Height = 20
        end
        object RLLabel7: TRLLabel
          Left = 227
          Top = 59
          Width = 44
          Height = 15
          Caption = 'Fun'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw5: TRLDraw
          Left = 273
          Top = 56
          Width = 229
          Height = 20
        end
        object RLLabel8: TRLLabel
          Left = 366
          Top = 59
          Width = 42
          Height = 15
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw6: TRLDraw
          Left = 188
          Top = 56
          Width = 36
          Height = 20
        end
        object RLLabel9: TRLLabel
          Left = 190
          Top = 59
          Width = 33
          Height = 15
          Caption = 'Parc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw7: TRLDraw
          Left = 501
          Top = 56
          Width = 75
          Height = 20
        end
        object RLLabel10: TRLLabel
          Left = 511
          Top = 59
          Width = 54
          Height = 15
          Caption = 'Vlr. Base'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw8: TRLDraw
          Left = 625
          Top = 56
          Width = 60
          Height = 20
        end
        object RLLabel11: TRLLabel
          Left = 628
          Top = 59
          Width = 54
          Height = 15
          Caption = 'Vlr. Com.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw23: TRLDraw
          Left = 58
          Top = 56
          Width = 73
          Height = 20
        end
        object RLLabel34: TRLLabel
          Left = 71
          Top = 59
          Width = 47
          Height = 15
          Caption = 'Dt. Mov.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 688
          Top = 59
          Width = 27
          Height = 15
          Caption = 'Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 77
        Width = 718
        Height = 20
        DataSource = fConsComissaoVend.dsExtComissao
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 18
          BeforePrint = RLBand2BeforePrint
          object RLDBText2: TRLDBText
            Left = 8
            Top = 2
            Width = 49
            Height = 14
            Alignment = taRightJustify
            DataField = 'NUMMOV'
            DataSource = fConsComissaoVend.dsExtComissao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 59
            Top = 2
            Width = 70
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'DTREFERENCIA'
            DataSource = fConsComissaoVend.dsExtComissao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 133
            Top = 2
            Width = 55
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'NUMNOTA'
            DataSource = fConsComissaoVend.dsExtComissao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 192
            Top = 2
            Width = 32
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PARCELA'
            DataSource = fConsComissaoVend.dsExtComissao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 228
            Top = 2
            Width = 39
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'FUNCAO'
            DataSource = fConsComissaoVend.dsExtComissao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 275
            Top = 2
            Width = 226
            Height = 14
            AutoSize = False
            DataField = 'NOMECLIENTE'
            DataSource = fConsComissaoVend.dsExtComissao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 504
            Top = 2
            Width = 70
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRBASE'
            DataSource = fConsComissaoVend.dsExtComissao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 578
            Top = 2
            Width = 47
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PERCENTUAL'
            DataSource = fConsComissaoVend.dsExtComissao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 628
            Top = 2
            Width = 55
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRCOMISSAO'
            DataSource = fConsComissaoVend.dsExtComissao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 687
            Top = 2
            Width = 27
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TIPO'
            DataSource = fConsComissaoVend.dsExtComissao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLSubDetail3: TRLSubDetail
        Left = 0
        Top = 97
        Width = 718
        Height = 27
        DataSource = fConsComissaoVend.dsExtComissao
        Positioning = btSummary
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 26
          BandType = btSummary
          BeforePrint = RLBand3BeforePrint
          object RLLabel13: TRLLabel
            Left = 517
            Top = 5
            Width = 71
            Height = 18
            Caption = 'Vlr. Total:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = 594
            Top = 7
            Width = 87
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw10: TRLDraw
            Left = 495
            Top = 2
            Width = 194
            Height = 2
          end
        end
      end
    end
  end
end
