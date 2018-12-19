object fAtendimento: TfAtendimento
  Left = 423
  Top = 114
  BorderStyle = bsSingle
  Caption = 'Atendimento'
  ClientHeight = 453
  ClientWidth = 579
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
  object PageControl2: TPageControl
    Left = 0
    Top = 0
    Width = 579
    Height = 453
    ActivePage = TabSheet11
    Align = alClient
    TabOrder = 0
    object TabSheet9: TTabSheet
      Caption = 'Anamnese'
      ImageIndex = 2
      TabVisible = False
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 571
        Height = 31
        Align = alTop
        TabOrder = 0
        object Edit4: TEdit
          Left = 62
          Top = 4
          Width = 227
          Height = 21
          TabOrder = 0
          Text = '[Digite o nome e pressione F3 para localizar]'
        end
      end
      object JvDBGrid4: TJvDBGrid
        Left = 0
        Top = 31
        Width = 571
        Height = 363
        Align = alClient
        DataSource = Dm1.dsPessoaAnamnese
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Visible = True
          end>
      end
      object Panel9: TPanel
        Left = 0
        Top = 394
        Width = 571
        Height = 31
        Align = alBottom
        TabOrder = 1
        object BitBtn9: TBitBtn
          Left = 3
          Top = 4
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
        end
        object BitBtn10: TBitBtn
          Left = 78
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
        end
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'Atendimentos'
      ImageIndex = 4
      object JvDBGrid2: TJvDBGrid
        Left = 0
        Top = 0
        Width = 571
        Height = 394
        Align = alClient
        DataSource = Dm1.dsPessoaAtendimento
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = JvDBGrid2DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MEDICACAO'
            Title.Caption = 'MEDICA'#199#195'O'
            Width = 155
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARECERMEDICO'
            Title.Caption = 'M'#201'DICO'
            Width = 155
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARECERENFERMEIRA'
            Title.Caption = 'ENFERMEIRA'
            Width = 155
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 394
        Width = 571
        Height = 31
        Align = alBottom
        TabOrder = 0
        object BitBtn5: TBitBtn
          Left = 3
          Top = 4
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn5Click
        end
        object BitBtn6: TBitBtn
          Left = 78
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
          OnClick = BitBtn6Click
        end
      end
    end
  end
end
