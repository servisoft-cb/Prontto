object fEscalaAlerta: TfEscalaAlerta
  Left = 134
  Top = 112
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fEscalaAlerta'
  ClientHeight = 328
  ClientWidth = 762
  Color = clRed
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
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
    Width = 550
    Height = 36
    AutoSize = False
    Caption = 'Agente'
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
    Width = 550
    Height = 36
    AutoSize = False
    Caption = 'Cliente'
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
    Top = 280
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
end