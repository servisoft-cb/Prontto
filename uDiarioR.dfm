object fDiarioR: TfDiarioR
  Left = 388
  Top = 116
  Width = 838
  Height = 657
  Caption = 'fDiarioR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    DataSource = dmDiario.dsDiario
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.TopMargin = 5.000000000000000000
    RecordRange = rrCurrentOnly
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 19
      Width = 718
      Height = 718
      DataSource = dmDiario.dsDiario
      RecordRange = rrCurrentOnly
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 62
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel1: TRLLabel
          Left = 284
          Top = 0
          Width = 157
          Height = 19
          Caption = 'RELAT'#211'RIO DI'#193'RIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 117
          Top = 24
          Width = 38
          Height = 16
          DataField = 'DATA'
          DataSource = dmDiario.dsDiarioCons
        end
        object RLDBText2: TRLDBText
          Left = 201
          Top = 24
          Width = 46
          Height = 16
          DataField = 'clTurno'
          DataSource = dmDiario.dsDiarioCons
        end
        object RLDBText3: TRLDBText
          Left = 117
          Top = 40
          Width = 78
          Height = 16
          DataField = 'OPERADOR'
          DataSource = dmDiario.dsDiarioCons
        end
        object RLDBText4: TRLDBText
          Left = 576
          Top = 24
          Width = 106
          Height = 16
          DataField = 'REVISADO_POR'
          DataSource = dmDiario.dsDiarioCons
        end
        object RLDBText5: TRLDBText
          Left = 576
          Top = 40
          Width = 115
          Height = 16
          DataField = 'REVISADO_HORA'
          DataSource = dmDiario.dsDiarioCons
        end
        object RLLabel2: TRLLabel
          Left = 81
          Top = 24
          Width = 35
          Height = 16
          Alignment = taRightJustify
          Caption = 'Data:'
        end
        object RLLabel3: TRLLabel
          Left = 0
          Top = 40
          Width = 116
          Height = 16
          Alignment = taRightJustify
          Caption = 'Operador de R'#225'dio:'
        end
        object RLLabel4: TRLLabel
          Left = 522
          Top = 24
          Width = 50
          Height = 16
          Alignment = taRightJustify
          Caption = 'Revisor:'
        end
        object RLLabel5: TRLLabel
          Left = 493
          Top = 40
          Width = 79
          Height = 16
          Alignment = taRightJustify
          Caption = 'Hora revis'#227'o:'
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 62
        Width = 718
        Height = 507
        DataSource = dmDiario.dsDiario
        RecordRange = rrCurrentOnly
        BeforePrint = RLSubDetail2BeforePrint
        object RLSubDetail3: TRLSubDetail
          Left = 0
          Top = 0
          Width = 718
          Height = 49
          DataSource = dmDiario.dsDiarioViatura
          object RLBand3: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 32
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel6: TRLLabel
              Left = 79
              Top = 15
              Width = 38
              Height = 16
              Alignment = taCenter
              Caption = 'Placa'
            end
            object RLLabel7: TRLLabel
              Left = 163
              Top = 15
              Width = 62
              Height = 16
              Alignment = taCenter
              Caption = 'Km Inicial'
            end
            object RLLabel8: TRLLabel
              Left = 229
              Top = 15
              Width = 56
              Height = 16
              Alignment = taCenter
              Caption = 'Km Final'
            end
            object RLLabel41: TRLLabel
              Left = 0
              Top = 0
              Width = 70
              Height = 16
              Caption = 'VIATURAS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel42: TRLLabel
              Left = 294
              Top = 15
              Width = 56
              Height = 16
              Alignment = taCenter
              Caption = 'Km Total'
            end
            object RLLabel43: TRLLabel
              Left = 358
              Top = 16
              Width = 45
              Height = 16
              Caption = 'Agente'
            end
            object RLLabel44: TRLLabel
              Left = 502
              Top = 16
              Width = 72
              Height = 16
              Caption = 'Observa'#231#227'o'
            end
          end
          object RLBand2: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            object RLDBText6: TRLDBText
              Left = 77
              Top = 0
              Width = 59
              Height = 16
              DataField = 'VIATURA'
              DataSource = dmDiario.dsDiarioViatura
            end
            object RLDBText7: TRLDBText
              Left = 165
              Top = 0
              Width = 60
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'KM_INICIAL'
              DataSource = dmDiario.dsDiarioViatura
            end
            object RLDBText8: TRLDBText
              Left = 229
              Top = 0
              Width = 60
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'KM_FINAL'
              DataSource = dmDiario.dsDiarioViatura
            end
            object RLDBText25: TRLDBText
              Left = 293
              Top = 0
              Width = 60
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'clKmTotal'
              DataSource = dmDiario.dsDiarioViatura
            end
            object RLDBText26: TRLDBText
              Left = 357
              Top = 0
              Width = 140
              Height = 16
              AutoSize = False
              DataField = 'AGENTE'
              DataSource = dmDiario.dsDiarioViatura
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText27: TRLDBText
              Left = 501
              Top = 0
              Width = 212
              Height = 16
              AutoSize = False
              DataField = 'OBS'
              DataSource = dmDiario.dsDiarioViatura
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object RLSubDetail4: TRLSubDetail
          Left = 0
          Top = 111
          Width = 718
          Height = 63
          DataSource = dmDiario.dsDiarioAlarme
          object RLBand4: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 32
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel9: TRLLabel
              Left = 1
              Top = 15
              Width = 44
              Height = 16
              Alignment = taCenter
              Caption = 'Cliente'
            end
            object RLLabel10: TRLLabel
              Left = 205
              Top = 15
              Width = 32
              Height = 16
              Alignment = taCenter
              Caption = 'Hora'
            end
            object RLLabel13: TRLLabel
              Left = 0
              Top = 0
              Width = 58
              Height = 16
              Caption = 'ALARME'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel45: TRLLabel
              Left = 240
              Top = 15
              Width = 46
              Height = 16
              Alignment = taCenter
              Caption = 'Agente'
            end
            object RLLabel46: TRLLabel
              Left = 356
              Top = 15
              Width = 84
              Height = 16
              Alignment = taCenter
              Caption = 'Procedimento'
            end
            object RLLabel47: TRLLabel
              Left = 670
              Top = 15
              Width = 42
              Height = 16
              Alignment = taCenter
              Caption = 'APBM'
            end
          end
          object RLBand5: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            object RLDBText9: TRLDBText
              Left = 0
              Top = 0
              Width = 201
              Height = 16
              AutoSize = False
              DataField = 'CLIENTE'
              DataSource = dmDiario.dsDiarioAlarme
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText10: TRLDBText
              Left = 205
              Top = 0
              Width = 30
              Height = 16
              AutoSize = False
              DataField = 'HORA'
              DataSource = dmDiario.dsDiarioAlarme
              DisplayMask = 'HH:MM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText28: TRLDBText
              Left = 239
              Top = 0
              Width = 116
              Height = 16
              AutoSize = False
              DataField = 'AGENTE'
              DataSource = dmDiario.dsDiarioAlarme
              DisplayMask = 'HH:MM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText29: TRLDBText
              Left = 357
              Top = 0
              Width = 308
              Height = 16
              AutoSize = False
              DataField = 'CA'
              DataSource = dmDiario.dsDiarioAlarme
              DisplayMask = 'HH:MM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText30: TRLDBText
              Left = 669
              Top = 0
              Width = 44
              Height = 16
              AutoSize = False
              DataField = 'APBM'
              DataSource = dmDiario.dsDiarioAlarme
              DisplayMask = 'HH:MM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object RLSubDetail5: TRLSubDetail
          Left = 0
          Top = 174
          Width = 718
          Height = 55
          DataSource = dmDiario.dsDiarioEspecial
          object RLBand6: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 32
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel11: TRLLabel
              Left = 1
              Top = 15
              Width = 44
              Height = 16
              Alignment = taCenter
              Caption = 'Cliente'
            end
            object RLLabel12: TRLLabel
              Left = 180
              Top = 15
              Width = 41
              Height = 16
              Caption = 'Motivo'
            end
            object RLLabel14: TRLLabel
              Left = 0
              Top = 0
              Width = 179
              Height = 16
              Caption = 'ATENDIMENTOS ESPECIAIS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel33: TRLLabel
              Left = 324
              Top = 15
              Width = 45
              Height = 16
              Caption = 'Agente'
            end
            object RLLabel34: TRLLabel
              Left = 477
              Top = 15
              Width = 84
              Height = 16
              Caption = 'Procedimento'
            end
            object RLLabel35: TRLLabel
              Left = 428
              Top = 15
              Width = 22
              Height = 16
              Caption = 'SA'
            end
          end
          object RLBand7: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            object RLDBText11: TRLDBText
              Left = 0
              Top = 0
              Width = 178
              Height = 16
              AutoSize = False
              DataField = 'CLIENTE'
              DataSource = dmDiario.dsDiarioEspecial
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText12: TRLDBText
              Left = 181
              Top = 0
              Width = 140
              Height = 16
              AutoSize = False
              DataField = 'MOTIVO'
              DataSource = dmDiario.dsDiarioEspecial
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText19: TRLDBText
              Left = 324
              Top = 0
              Width = 101
              Height = 16
              AutoSize = False
              DataField = 'AGENTE'
              DataSource = dmDiario.dsDiarioEspecial
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText20: TRLDBText
              Left = 477
              Top = 0
              Width = 236
              Height = 16
              AutoSize = False
              DataField = 'PROCEDIMENTO'
              DataSource = dmDiario.dsDiarioEspecial
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText21: TRLDBText
              Left = 428
              Top = 0
              Width = 45
              Height = 16
              AutoSize = False
              DataField = 'SA'
              DataSource = dmDiario.dsDiarioEspecial
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object RLSubDetail6: TRLSubDetail
          Left = 0
          Top = 229
          Width = 718
          Height = 62
          DataSource = dmDiario.dsDiarioBairro
          object RLBand8: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 32
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel15: TRLLabel
              Left = 0
              Top = 15
              Width = 38
              Height = 16
              Caption = 'Bairro'
            end
            object RLLabel17: TRLLabel
              Left = 0
              Top = 0
              Width = 136
              Height = 16
              Caption = 'RONDA EM BAIRROS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel16: TRLLabel
              Left = 239
              Top = 15
              Width = 38
              Height = 16
              Caption = 'Bairro'
            end
            object RLLabel24: TRLLabel
              Left = 477
              Top = 15
              Width = 38
              Height = 16
              Caption = 'Bairro'
            end
            object RLLabel31: TRLLabel
              Left = 206
              Top = 15
              Width = 31
              Height = 16
              Caption = 'Hora'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel30: TRLLabel
              Left = 446
              Top = 15
              Width = 31
              Height = 16
              Caption = 'Hora'
            end
            object RLLabel32: TRLLabel
              Left = 686
              Top = 15
              Width = 31
              Height = 16
              Caption = 'Hora'
            end
          end
          object RLDetailGrid1: TRLDetailGrid
            Left = 0
            Top = 32
            Width = 718
            Height = 17
            ColCount = 3
            object RLDBText13: TRLDBText
              Left = 0
              Top = 0
              Width = 205
              Height = 16
              AutoSize = False
              DataField = 'BAIRRO'
              DataSource = dmDiario.dsDiarioBairro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText18: TRLDBText
              Left = 209
              Top = 0
              Width = 30
              Height = 16
              AutoSize = False
              DataField = 'HORA'
              DataSource = dmDiario.dsDiarioBairro
              DisplayMask = '00:00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object RLSubDetail7: TRLSubDetail
          Left = 0
          Top = 291
          Width = 718
          Height = 62
          DataSource = dmDiario.dsDiarioRonda
          object RLBand10: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 32
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel20: TRLLabel
              Left = 0
              Top = 0
              Width = 102
              Height = 16
              Caption = 'RONDAS E PBS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel18: TRLLabel
              Left = 0
              Top = 15
              Width = 44
              Height = 16
              Caption = 'Cliente'
            end
            object RLLabel25: TRLLabel
              Left = 207
              Top = 15
              Width = 31
              Height = 16
              Caption = 'Hora'
            end
            object RLLabel26: TRLLabel
              Left = 446
              Top = 15
              Width = 31
              Height = 16
              Caption = 'Hora'
            end
            object RLLabel27: TRLLabel
              Left = 238
              Top = 15
              Width = 44
              Height = 16
              Caption = 'Cliente'
            end
            object RLLabel28: TRLLabel
              Left = 686
              Top = 15
              Width = 31
              Height = 16
              Caption = 'Hora'
            end
            object RLLabel29: TRLLabel
              Left = 478
              Top = 15
              Width = 44
              Height = 16
              Caption = 'Cliente'
            end
          end
          object RLDetailGrid2: TRLDetailGrid
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            ColCount = 3
            object RLDBText14: TRLDBText
              Left = 0
              Top = 0
              Width = 205
              Height = 16
              AutoSize = False
              DataField = 'CLIENTE'
              DataSource = dmDiario.dsDiarioRonda
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText15: TRLDBText
              Left = 208
              Top = 0
              Width = 30
              Height = 16
              AutoSize = False
              DataField = 'HORA'
              DataSource = dmDiario.dsDiarioRonda
              DisplayMask = '00:00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object RLSubDetail8: TRLSubDetail
          Left = 0
          Top = 353
          Width = 718
          Height = 62
          DataSource = dmDiario.dsDiarioCamera
          object RLBand12: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 32
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel19: TRLLabel
              Left = 0
              Top = 15
              Width = 44
              Height = 16
              Caption = 'Cliente'
            end
            object RLLabel21: TRLLabel
              Left = 0
              Top = 0
              Width = 68
              Height = 16
              Caption = 'C'#194'MERAS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel48: TRLLabel
              Left = 208
              Top = 15
              Width = 54
              Height = 16
              Caption = 'Qtr. Qda'
            end
            object RLLabel49: TRLLabel
              Left = 264
              Top = 15
              Width = 50
              Height = 16
              Caption = 'Qtr Ret.'
            end
            object RLLabel50: TRLLabel
              Left = 320
              Top = 15
              Width = 68
              Height = 16
              Caption = 'Mensagem'
            end
            object RLLabel51: TRLLabel
              Left = 488
              Top = 15
              Width = 72
              Height = 16
              Caption = 'Observa'#231#227'o'
            end
          end
          object RLBand13: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            object RLDBText16: TRLDBText
              Left = 0
              Top = 0
              Width = 206
              Height = 16
              AutoSize = False
              DataField = 'CLIENTE'
              DataSource = dmDiario.dsDiarioCamera
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText31: TRLDBText
              Left = 224
              Top = 0
              Width = 30
              Height = 16
              AutoSize = False
              DataField = 'HORA_QUEDA'
              DataSource = dmDiario.dsDiarioCamera
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText32: TRLDBText
              Left = 274
              Top = 0
              Width = 30
              Height = 16
              AutoSize = False
              DataField = 'HORA_RETORNO'
              DataSource = dmDiario.dsDiarioCamera
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText33: TRLDBText
              Left = 320
              Top = 0
              Width = 161
              Height = 16
              AutoSize = False
              DataField = 'MENSAGEM'
              DataSource = dmDiario.dsDiarioCamera
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText34: TRLDBText
              Left = 488
              Top = 0
              Width = 233
              Height = 16
              AutoSize = False
              DataField = 'OBS'
              DataSource = dmDiario.dsDiarioCamera
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object RLSubDetail9: TRLSubDetail
          Left = 0
          Top = 415
          Width = 718
          Height = 62
          DataSource = dmDiario.dsDiarioPortaria
          object RLBand14: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 32
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel22: TRLLabel
              Left = 0
              Top = 15
              Width = 44
              Height = 16
              Caption = 'Cliente'
            end
            object RLLabel23: TRLLabel
              Left = 0
              Top = 0
              Width = 80
              Height = 16
              Caption = 'PORTARIAS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand15: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            object RLDBText17: TRLDBText
              Left = 0
              Top = 0
              Width = 197
              Height = 16
              AutoSize = False
              DataField = 'CLIENTE'
              DataSource = dmDiario.dsDiarioPortaria
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object RLSubDetail10: TRLSubDetail
          Left = 0
          Top = 49
          Width = 718
          Height = 62
          DataSource = dmDiario.dsDiarioCelular
          object RLBand11: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 32
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel37: TRLLabel
              Left = 0
              Top = 15
              Width = 64
              Height = 16
              Caption = 'Operadora'
            end
            object RLLabel38: TRLLabel
              Left = 0
              Top = 0
              Width = 81
              Height = 16
              Caption = 'CELULARES'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel39: TRLLabel
              Left = 177
              Top = 15
              Width = 49
              Height = 16
              Caption = 'N'#250'mero'
            end
            object RLLabel40: TRLLabel
              Left = 289
              Top = 15
              Width = 45
              Height = 16
              Caption = 'Cr'#233'dito'
            end
          end
          object RLBand16: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            object RLDBText22: TRLDBText
              Left = 0
              Top = 0
              Width = 175
              Height = 16
              AutoSize = False
              DataField = 'OPERADORA'
              DataSource = dmDiario.dsDiarioCelular
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText23: TRLDBText
              Left = 177
              Top = 0
              Width = 104
              Height = 16
              AutoSize = False
              DataField = 'NUMERO'
              DataSource = dmDiario.dsDiarioCelular
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText24: TRLDBText
              Left = 289
              Top = 0
              Width = 47
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CREDITO'
              DataSource = dmDiario.dsDiarioCelular
              DisplayMask = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
        end
      end
      object RLBand9: TRLBand
        Left = 0
        Top = 569
        Width = 718
        Height = 33
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        BeforePrint = RLBand9BeforePrint
        object RLLabel36: TRLLabel
          Left = 0
          Top = 0
          Width = 156
          Height = 16
          Caption = 'OBSERVA'#199#213'ES GERAIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLMemo1: TRLMemo
          Left = 0
          Top = 16
          Width = 713
          Height = 14
          Behavior = [beSiteExpander]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
end
