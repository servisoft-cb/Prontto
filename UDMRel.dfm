object DmRel: TDmRel
  OldCreateOrder = False
  Left = 335
  Top = 223
  Height = 359
  Width = 574
  object RLPreviewSetup1: TRLPreviewSetup
    BorderIcons = [biSystemMenu, biMaximize]
    OnSend = RLPreviewSetup1Send
    Left = 148
    Top = 16
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 196
    Top = 16
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 232
    Top = 16
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport v0.3.04a \251 Copyright '#169' 1999-2003 Fortes Inform'#225't' +
      'ica'
    DisplayName = 'Documento PDF'
    Left = 268
    Top = 16
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 312
    Top = 16
  end
end
