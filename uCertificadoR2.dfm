object fCertificadoR2: TfCertificadoR2
  Left = 179
  Top = 105
  Width = 1152
  Height = 695
  HorzScrollBar.Position = 11
  Caption = 'fCertificadoR2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 5
    Top = 16
    Width = 1123
    Height = 794
    DataSource = fCertificadoC.dsPessoaCurso
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 38
      Width = 1047
      Height = 287
      DataSource = fCertificadoC.dsPessoaCurso
      PageBreaking = pbAfterPrint
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 1047
        Height = 144
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        PageBreaking = pbBeforePrint
        BeforePrint = RLBand2BeforePrint
        object RLLabel16: TRLLabel
          Left = 33
          Top = 1
          Width = 116
          Height = 19
          Alignment = taCenter
          Caption = 'Certificado N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 178
          Top = 1
          Width = 96
          Height = 19
          DataField = 'PESSOA_ID'
          DataSource = fCertificadoC.dsPessoaCurso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 120
          Top = 27
          Width = 513
          Height = 16
          AutoSize = False
          DataField = 'ALUNO'
          DataSource = fCertificadoC.dsPessoaCurso
        end
        object RLLabel2: TRLLabel
          Left = 69
          Top = 27
          Width = 45
          Height = 16
          Alignment = taRightJustify
          Caption = 'Dados:'
        end
        object RLLabel9: TRLLabel
          Left = 61
          Top = 43
          Width = 53
          Height = 16
          Alignment = taRightJustify
          Caption = 'Filia'#231#227'o:'
        end
        object RLLabel10: TRLLabel
          Left = 34
          Top = 59
          Width = 80
          Height = 16
          Alignment = taRightJustify
          Caption = 'Naturalidade:'
        end
        object RLLabel11: TRLLabel
          Left = 65
          Top = 75
          Width = 49
          Height = 16
          Alignment = taRightJustify
          Caption = 'Estado:'
        end
        object RLLabel17: TRLLabel
          Left = 6
          Top = 91
          Width = 108
          Height = 16
          Alignment = taRightJustify
          Caption = 'Data Nascimento:'
        end
        object RLDBText3: TRLDBText
          Left = 120
          Top = 43
          Width = 313
          Height = 16
          AutoSize = False
          DataField = 'NOMEPAI'
          DataSource = fCertificadoC.dsPessoaCurso
        end
        object RLDBText4: TRLDBText
          Left = 120
          Top = 59
          Width = 513
          Height = 16
          AutoSize = False
          DataField = 'NATUR_CID'
          DataSource = fCertificadoC.dsPessoaCurso
        end
        object RLDBText5: TRLDBText
          Left = 120
          Top = 75
          Width = 513
          Height = 16
          AutoSize = False
          DataField = 'NATUR_UF'
          DataSource = fCertificadoC.dsPessoaCurso
        end
        object RLDBText19: TRLDBText
          Left = 120
          Top = 91
          Width = 513
          Height = 16
          AutoSize = False
          DataField = 'DTNASCIMENTO'
          DataSource = fCertificadoC.dsPessoaCurso
        end
        object RLDBText20: TRLDBText
          Left = 456
          Top = 43
          Width = 497
          Height = 16
          AutoSize = False
          DataField = 'NOMEMAE'
          DataSource = fCertificadoC.dsPessoaCurso
        end
        object RLLabel18: TRLLabel
          Left = 433
          Top = 43
          Width = 17
          Height = 16
          Alignment = taRightJustify
          Caption = 'E:'
        end
        object RLLabel4: TRLLabel
          Left = 8
          Top = 127
          Width = 67
          Height = 15
          Caption = 'DISCIPLINA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 584
          Top = 127
          Width = 37
          Height = 15
          Caption = 'SIGLA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 704
          Top = 127
          Width = 74
          Height = 15
          Caption = 'CARGA HOR.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 904
          Top = 127
          Width = 35
          Height = 15
          Caption = 'GRAU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLSubDetail3: TRLSubDetail
        Left = 0
        Top = 144
        Width = 1047
        Height = 83
        DataSource = fCertificadoC.dsPessoaNota
        object RLBand1: TRLBand
          Left = 0
          Top = 0
          Width = 1047
          Height = 18
          BeforePrint = RLBand1BeforePrint
          object RLDBText11: TRLDBText
            Left = 896
            Top = 1
            Width = 57
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'NOTA'
            DataSource = fCertificadoC.dsPessoaNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 704
            Top = 1
            Width = 98
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'CARGA_HORARIA'
            DataSource = fCertificadoC.dsPessoaNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText13: TRLDBText
            Left = 584
            Top = 1
            Width = 97
            Height = 16
            AutoSize = False
            DataField = 'SIGLA'
            DataSource = fCertificadoC.dsPessoaNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText14: TRLDBText
            Left = 8
            Top = 1
            Width = 577
            Height = 16
            AutoSize = False
            DataField = 'DISCIPLINA'
            DataSource = fCertificadoC.dsPessoaNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 18
          Width = 1047
          Height = 19
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = RLBand3BeforePrint
          object RLLabel8: TRLLabel
            Left = 704
            Top = 1
            Width = 97
            Height = 16
            Alignment = taCenter
            AutoSize = False
          end
          object RLLabel12: TRLLabel
            Left = 613
            Top = 2
            Width = 88
            Height = 15
            Alignment = taRightJustify
            Caption = 'Total de Horas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel13: TRLLabel
            Left = 896
            Top = 1
            Width = 57
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object RLLabel14: TRLLabel
            Left = 824
            Top = 2
            Width = 69
            Height = 15
            Alignment = taRightJustify
            Caption = 'M'#233'dia Final:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object RLProntto: TRLBand
      Left = 38
      Top = 368
      Width = 1047
      Height = 43
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel1: TRLLabel
        Left = 170
        Top = 1
        Width = 708
        Height = 22
        Alignment = taCenter
        Caption = 'PRONTTO CENTRO DE FORMA'#199#195'O E TREINAMENTO DE VIGILANTES LTDA.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 298
        Top = 24
        Width = 450
        Height = 17
        Alignment = taCenter
        Caption = 
          'Conforme previsto na portaria n'#186' 3233/2012 - DG/DPF e Lei 7.102/' +
          '83'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLAtac: TRLBand
      Left = 38
      Top = 325
      Width = 1047
      Height = 43
      BandType = btFooter
      BeforePrint = RLAtacBeforePrint
      object RLLabel15: TRLLabel
        Left = 358
        Top = 1
        Width = 332
        Height = 22
        Alignment = taCenter
        Caption = 'ATAC - ESCOLA DE AVIA'#199#195'O CIVIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 393
        Top = 24
        Width = 260
        Height = 17
        Alignment = taCenter
        Caption = 'Registrada na ANAC sob n'#250'mero 1046.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
end
