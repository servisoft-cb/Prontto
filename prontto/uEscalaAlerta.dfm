object fEscalaAlerta: TfEscalaAlerta
  Left = 134
  Top = 112
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fEscalaAlerta'
  ClientHeight = 566
  ClientWidth = 985
  Color = clRed
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    985
    566)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 71
    Top = 56
    Width = 108
    Height = 36
    Alignment = taRightJustify
    Caption = 'Agente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 72
    Top = 96
    Width = 107
    Height = 36
    Alignment = taRightJustify
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 12
    Top = 160
    Width = 167
    Height = 36
    Alignment = taRightJustify
    Caption = 'Hora Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 24
    Top = 200
    Width = 155
    Height = 36
    Alignment = taRightJustify
    Caption = 'Hora Final:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblAgente: TLabel
    Left = 191
    Top = 56
    Width = 773
    Height = 36
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'Agente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblCliente: TLabel
    Left = 191
    Top = 96
    Width = 773
    Height = 36
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblHrIni: TLabel
    Left = 191
    Top = 160
    Width = 126
    Height = 36
    Caption = '00:00:00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblHrFim: TLabel
    Left = 191
    Top = 200
    Width = 126
    Height = 36
    Caption = '00:00:00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 343
    Top = 510
    Width = 298
    Height = 50
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
end
