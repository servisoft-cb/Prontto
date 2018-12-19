object fPessoa: TfPessoa
  Left = 208
  Top = 117
  Width = 1000
  Height = 550
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Cadastro de Pessoas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 480
    Width = 984
    Height = 31
    Align = alBottom
    Color = clSilver
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 3
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 78
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn13: TBitBtn
      Left = 153
      Top = 3
      Width = 136
      Height = 25
      Caption = 'Clonar dados para &alarme'
      TabOrder = 2
      OnClick = BitBtn13Click
    end
    object BitBtn29: TBitBtn
      Left = 293
      Top = 3
      Width = 99
      Height = 25
      Caption = 'Contas a Receber'
      TabOrder = 3
      OnClick = BitBtn29Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 984
    Height = 480
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Dados gerais'
      object Shape1: TShape
        Left = 423
        Top = 71
        Width = 185
        Height = 142
      end
      object Label3: TLabel
        Left = 61
        Top = 16
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome:'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 78
        Top = 232
        Width = 20
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fax:'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 27
        Top = 64
        Width = 71
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome fantasia:'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 25
        Top = 88
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = 'CNPJ / CPF:'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 7
        Top = 112
        Width = 91
        Height = 13
        Alignment = taRightJustify
        Caption = 'End. / N'#186' / Compl.:'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 68
        Top = 136
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = 'Bairro:'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 74
        Top = 184
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'CEP:'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 71
        Top = 208
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fone:'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 54
        Top = 160
        Width = 44
        Height = 13
        Cursor = crHandPoint
        Alignment = taRightJustify
        Caption = 'Cidade:'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Label9Click
      end
      object Label10: TLabel
        Left = 60
        Top = 40
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pessoa:'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 80
        Top = 256
        Width = 18
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cel:'
        FocusControl = DBEdit9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 302
        Top = 184
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Estado:'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 66
        Top = 280
        Width = 32
        Height = 13
        Alignment = taRightJustify
        Caption = 'E-Mail:'
        FocusControl = DBEdit14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 39
        Top = 304
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = 'Home Page:'
        FocusControl = DBEdit15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 433
        Top = 16
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Status:'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label40: TLabel
        Left = 454
        Top = 48
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'digo:'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label41: TLabel
        Left = 34
        Top = 328
        Width = 64
        Height = 13
        Cursor = crHandPoint
        Alignment = taRightJustify
        Caption = 'Centro Custo:'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = Label41Click
      end
      object Label50: TLabel
        Left = 422
        Top = 328
        Width = 59
        Height = 13
        Caption = 'Dt.Cadastro:'
      end
      object Label55: TLabel
        Left = 252
        Top = 84
        Width = 19
        Height = 13
        Alignment = taRightJustify
        Caption = 'RG:'
        FocusControl = DBEdit41
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Image1: TImage
        Left = 424
        Top = 72
        Width = 185
        Height = 140
        Stretch = True
        OnDblClick = Image1DblClick
      end
      object Label61: TLabel
        Left = 254
        Top = 208
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'Foto:'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label62: TLabel
        Left = 285
        Top = 40
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Sexo:'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label66: TLabel
        Left = 64
        Top = 360
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = 'Senha:'
        FocusControl = DBEdit47
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label67: TLabel
        Left = 32
        Top = 384
        Width = 66
        Height = 13
        Alignment = taRightJustify
        Caption = 'Contra-senha:'
        FocusControl = DBEdit48
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 102
        Top = 8
        Width = 313
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = Dm1.dsPessoa
        TabOrder = 0
        OnExit = DBEdit1Exit
      end
      object DBEdit2: TDBEdit
        Left = 102
        Top = 224
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FAX'
        DataSource = Dm1.dsPessoa
        TabOrder = 16
      end
      object DBEdit3: TDBEdit
        Left = 102
        Top = 56
        Width = 313
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FANTASIA'
        DataSource = Dm1.dsPessoa
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 102
        Top = 80
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DOCUMENTO'
        DataSource = Dm1.dsPessoa
        TabOrder = 5
        OnExit = DBEdit4Exit
      end
      object DBEdit5: TDBEdit
        Left = 102
        Top = 104
        Width = 214
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDERECO'
        DataSource = Dm1.dsPessoa
        TabOrder = 7
      end
      object DBEdit6: TDBEdit
        Left = 102
        Top = 128
        Width = 313
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BAIRRO'
        DataSource = Dm1.dsPessoa
        TabOrder = 10
      end
      object DBEdit7: TDBEdit
        Left = 102
        Top = 176
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CEP'
        DataSource = Dm1.dsPessoa
        TabOrder = 12
      end
      object DBEdit8: TDBEdit
        Left = 102
        Top = 200
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FONE'
        DataSource = Dm1.dsPessoa
        TabOrder = 14
      end
      object JvDBLookupCombo1: TJvDBLookupCombo
        Left = 102
        Top = 152
        Width = 313
        Height = 21
        DropDownCount = 15
        DataField = 'CIDADE'
        DataSource = Dm1.dsPessoa
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = Dm1.dsCidade
        TabOrder = 11
        OnExit = JvDBLookupCombo1Exit
      end
      object JvDBComboBox1: TJvDBComboBox
        Left = 102
        Top = 32
        Width = 145
        Height = 21
        Style = csDropDownList
        DataField = 'PESSOA'
        DataSource = Dm1.dsPessoa
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'F'#205'SICA'
          'JUR'#205'DICA')
        TabOrder = 2
        Values.Strings = (
          'F'
          'J')
        OnChange = JvDBComboBox1Change
        OnExit = JvDBComboBox1Exit
      end
      object DBEdit9: TDBEdit
        Left = 102
        Top = 248
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CEL'
        DataSource = Dm1.dsPessoa
        TabOrder = 17
      end
      object JvDBLookupCombo2: TJvDBLookupCombo
        Left = 344
        Top = 176
        Width = 71
        Height = 21
        DropDownCount = 20
        DataField = 'ESTADO'
        DataSource = Dm1.dsPessoa
        LookupField = 'UF'
        LookupDisplay = 'UF'
        LookupSource = Dm1.dsUF
        TabOrder = 13
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 395
        Width = 976
        Height = 57
        Align = alBottom
        Caption = 'Pap'#233'is'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 26
        object DBCheckBox1: TDBCheckBox
          Left = 104
          Top = 11
          Width = 97
          Height = 17
          Caption = 'Cliente'
          DataField = 'CLIENTE'
          DataSource = Dm1.dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = DBCheckBox1Click
        end
        object DBCheckBox2: TDBCheckBox
          Left = 104
          Top = 35
          Width = 97
          Height = 17
          Caption = 'Fornecedor'
          DataField = 'FORNECEDOR'
          DataSource = Dm1.dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = DBCheckBox1Click
        end
        object DBCheckBox3: TDBCheckBox
          Left = 216
          Top = 11
          Width = 97
          Height = 17
          Caption = 'Transportadora'
          DataField = 'TRANSPORTADORA'
          DataSource = Dm1.dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = DBCheckBox1Click
        end
        object DBCheckBox4: TDBCheckBox
          Left = 216
          Top = 35
          Width = 97
          Height = 17
          Caption = 'Vendedor'
          DataField = 'VENDEDOR'
          DataSource = Dm1.dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = DBCheckBox1Click
        end
        object DBCheckBox5: TDBCheckBox
          Left = 336
          Top = 35
          Width = 97
          Height = 17
          Caption = 'Funcion'#225'rio'
          DataField = 'FUNCIONARIO'
          DataSource = Dm1.dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = DBCheckBox1Click
        end
        object DBCheckBox6: TDBCheckBox
          Left = 336
          Top = 11
          Width = 97
          Height = 17
          Caption = 'Aluno'
          DataField = 'ALUNO'
          DataSource = Dm1.dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = DBCheckBox1Click
        end
        object DBCheckBox9: TDBCheckBox
          Left = 464
          Top = 35
          Width = 97
          Height = 17
          Caption = 'Agente'
          DataField = 'AGENTE'
          DataSource = Dm1.dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = DBCheckBox1Click
        end
      end
      object DBEdit12: TDBEdit
        Left = 319
        Top = 104
        Width = 46
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDNUMERO'
        DataSource = Dm1.dsPessoa
        TabOrder = 8
      end
      object DBEdit13: TDBEdit
        Left = 368
        Top = 104
        Width = 47
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDCOMPLEMENTO'
        DataSource = Dm1.dsPessoa
        TabOrder = 9
      end
      object DBEdit14: TDBEdit
        Left = 102
        Top = 272
        Width = 313
        Height = 21
        DataField = 'EMAIL'
        DataSource = Dm1.dsPessoa
        TabOrder = 18
      end
      object DBEdit15: TDBEdit
        Left = 102
        Top = 296
        Width = 313
        Height = 21
        DataField = 'HOMEPAGE'
        DataSource = Dm1.dsPessoa
        TabOrder = 19
      end
      object JvDBComboBox2: TJvDBComboBox
        Left = 472
        Top = 8
        Width = 100
        Height = 21
        Style = csDropDownList
        DataField = 'STATUS'
        DataSource = Dm1.dsPessoa
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'INATIVO'
          'ATIVO'
          'DEVEDOR')
        TabOrder = 1
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object DBEdit39: TDBEdit
        Left = 502
        Top = 42
        Width = 67
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = 16776176
        DataField = 'ID'
        DataSource = Dm1.dsPessoa
        ReadOnly = True
        TabOrder = 27
      end
      object JvDBLookupCombo8: TJvDBLookupCombo
        Left = 102
        Top = 320
        Width = 315
        Height = 21
        DropDownCount = 8
        DataField = 'CODCENTROCUSTO'
        DataSource = Dm1.dsPessoa
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = Dm1.dsCentroCusto
        TabOrder = 20
      end
      object JvDBDateEdit1: TJvDBDateEdit
        Left = 485
        Top = 320
        Width = 95
        Height = 21
        DataField = 'DTCADASTRO'
        DataSource = Dm1.dsPessoa
        NumGlyphs = 2
        TabOrder = 21
      end
      object DBEdit41: TDBEdit
        Left = 272
        Top = 79
        Width = 143
        Height = 21
        CharCase = ecUpperCase
        DataField = 'RG'
        DataSource = Dm1.dsPessoa
        TabOrder = 6
        OnExit = DBEdit4Exit
      end
      object BitBtn19: TBitBtn
        Left = 464
        Top = 214
        Width = 105
        Height = 25
        Caption = 'Capturar foto'
        TabOrder = 28
        OnClick = BitBtn19Click
      end
      object BitBtn20: TBitBtn
        Left = 464
        Top = 239
        Width = 105
        Height = 25
        Caption = 'Selecionar foto'
        TabOrder = 29
        OnClick = BitBtn20Click
      end
      object DBEdit44: TDBEdit
        Left = 280
        Top = 200
        Width = 134
        Height = 21
        DataField = 'FOTO_CAMINHO'
        DataSource = Dm1.dsPessoa
        TabOrder = 15
      end
      object JvDBComboBox5: TJvDBComboBox
        Left = 316
        Top = 32
        Width = 100
        Height = 21
        Style = csDropDownList
        DataField = 'SEXO'
        DataSource = Dm1.dsPessoa
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'MASCULINO'
          'FEMININO')
        TabOrder = 3
        Values.Strings = (
          '1'
          '2')
        OnChange = JvDBComboBox1Change
        OnExit = JvDBComboBox1Exit
      end
      object DBEdit47: TDBEdit
        Left = 102
        Top = 352
        Width = 314
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SENHA'
        DataSource = Dm1.dsPessoa
        TabOrder = 22
      end
      object DBEdit48: TDBEdit
        Left = 102
        Top = 376
        Width = 314
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CONTRASENHA'
        DataSource = Dm1.dsPessoa
        TabOrder = 23
      end
      object DBCheckBox7: TDBCheckBox
        Left = 485
        Top = 355
        Width = 97
        Height = 17
        Caption = 'Chave'
        DataField = 'CHAVE'
        DataSource = Dm1.dsPessoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 24
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox8: TDBCheckBox
        Left = 485
        Top = 379
        Width = 97
        Height = 17
        Caption = 'Controle'
        DataField = 'CONTROLE'
        DataSource = Dm1.dsPessoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 25
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object BitBtn25: TBitBtn
        Left = 464
        Top = 264
        Width = 105
        Height = 25
        Caption = 'Servi'#231'os'
        TabOrder = 30
        OnClick = BitBtn25Click
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Finaceiro'
      ImageIndex = 4
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 976
        Height = 317
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 0
        object Label22: TLabel
          Left = 11
          Top = 239
          Width = 103
          Height = 13
          Alignment = taRightJustify
          Caption = 'Forma de pagamento:'
          FocusControl = DBEdit19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label23: TLabel
          Left = 72
          Top = 191
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ag'#234'ncia:'
          FocusControl = DBEdit21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 41
          Top = 215
          Width = 73
          Height = 13
          Alignment = taRightJustify
          Caption = 'Conta corrente:'
          FocusControl = DBEdit19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 80
          Top = 167
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Banco:'
          FocusControl = DBEdit19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 24
          Top = 263
          Width = 90
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dia de pagamento:'
          FocusControl = DBEdit19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 88
          Top = 294
          Width = 27
          Height = 13
          Caption = 'Valor:'
        end
        object Label28: TLabel
          Left = 207
          Top = 294
          Width = 78
          Height = 13
          Caption = 'Tipo de Carteira:'
        end
        object GroupBox2: TGroupBox
          Left = 1
          Top = 1
          Width = 974
          Height = 153
          Align = alTop
          Caption = 'Endere'#231'o de cobran'#231'a'
          TabOrder = 0
          object Label17: TLabel
            Left = 23
            Top = 31
            Width = 91
            Height = 13
            Alignment = taRightJustify
            Caption = 'End. / N'#186' / Compl.:'
            FocusControl = DBEdit16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 320
            Top = 103
            Width = 36
            Height = 13
            Alignment = taRightJustify
            Caption = 'Estado:'
            FocusControl = DBEdit1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 90
            Top = 103
            Width = 24
            Height = 13
            Alignment = taRightJustify
            Caption = 'CEP:'
            FocusControl = DBEdit20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 78
            Top = 55
            Width = 36
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cidade:'
            FocusControl = DBEdit19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 84
            Top = 82
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'Bairro:'
            FocusControl = DBEdit19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label51: TLabel
            Left = 27
            Top = 127
            Width = 87
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tipo de cobran'#231'a:'
            FocusControl = DBEdit19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label52: TLabel
            Left = 442
            Top = 111
            Width = 141
            Height = 26
            Caption = 'Esse campo vai definir'#13#10'se '#233' emitido Boleto ou Recibo'
            FocusControl = DBEdit19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit16: TDBEdit
            Left = 118
            Top = 23
            Width = 214
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COBENDERECO'
            DataSource = Dm1.dsPessoa
            TabOrder = 0
          end
          object DBEdit17: TDBEdit
            Left = 335
            Top = 23
            Width = 46
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COBNUMERO'
            DataSource = Dm1.dsPessoa
            TabOrder = 1
          end
          object DBEdit18: TDBEdit
            Left = 384
            Top = 23
            Width = 47
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COBCOMPLEMENTO'
            DataSource = Dm1.dsPessoa
            TabOrder = 2
          end
          object DBEdit19: TDBEdit
            Left = 118
            Top = 71
            Width = 314
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COBBAIRRO'
            DataSource = Dm1.dsPessoa
            TabOrder = 4
          end
          object JvDBLookupCombo3: TJvDBLookupCombo
            Left = 118
            Top = 47
            Width = 314
            Height = 21
            DropDownCount = 15
            DataField = 'COBCIDADE'
            DataSource = Dm1.dsPessoa
            LookupField = 'ID'
            LookupDisplay = 'NOME'
            LookupSource = Dm1.dsCidade
            TabOrder = 3
            OnExit = JvDBLookupCombo3Exit
          end
          object DBEdit20: TDBEdit
            Left = 118
            Top = 95
            Width = 145
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COBCEP'
            DataSource = Dm1.dsPessoa
            TabOrder = 5
          end
          object JvDBLookupCombo4: TJvDBLookupCombo
            Left = 362
            Top = 95
            Width = 71
            Height = 21
            DropDownCount = 20
            DataField = 'COBUF'
            DataSource = Dm1.dsPessoa
            LookupField = 'UF'
            LookupDisplay = 'UF'
            LookupSource = Dm1.dsUF
            TabOrder = 6
          end
          object JvDBLookupCombo9: TJvDBLookupCombo
            Left = 118
            Top = 119
            Width = 314
            Height = 21
            DropDownCount = 15
            DataField = 'CODTIPOCOBRANCA'
            DataSource = Dm1.dsPessoa
            LookupField = 'ID'
            LookupDisplay = 'NOME'
            LookupSource = DmCons.qsTipoCobranca
            TabOrder = 7
          end
        end
        object JvDBLookupCombo5: TJvDBLookupCombo
          Left = 118
          Top = 231
          Width = 314
          Height = 21
          DropDownCount = 8
          DataField = 'FORMAPGTO'
          DataSource = Dm1.dsPessoa
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = Dm1.dsFormaPgto
          TabOrder = 1
          Visible = False
        end
        object DBEdit21: TDBEdit
          Left = 118
          Top = 183
          Width = 214
          Height = 21
          CharCase = ecUpperCase
          DataField = 'AGENCIA'
          DataSource = Dm1.dsPessoa
          TabOrder = 2
        end
        object JvDBLookupCombo6: TJvDBLookupCombo
          Left = 118
          Top = 159
          Width = 314
          Height = 21
          DropDownCount = 15
          DataField = 'CODBANCO'
          DataSource = Dm1.dsPessoa
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = Dm1.dsBanco
          TabOrder = 3
        end
        object DBEdit22: TDBEdit
          Left = 118
          Top = 207
          Width = 214
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMCONTACORRENTE'
          DataSource = Dm1.dsPessoa
          TabOrder = 4
        end
        object DBEdit23: TDBEdit
          Left = 118
          Top = 255
          Width = 43
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DIAPAGAMENTO'
          DataSource = Dm1.dsPessoa
          TabOrder = 5
        end
        object DBEdit11: TDBEdit
          Left = 118
          Top = 286
          Width = 83
          Height = 21
          DataField = 'VLRPGTO'
          DataSource = Dm1.dsPessoa
          ReadOnly = True
          TabOrder = 6
        end
        object JvDBComboBox3: TJvDBComboBox
          Left = 288
          Top = 286
          Width = 292
          Height = 21
          Style = csDropDownList
          DataField = 'NUMCARTEIRA'
          DataSource = Dm1.dsPessoa
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            '112  ESCRITURAL ELETR'#212'NICA - simples / contratual'
            '109  DIRETA ELETR'#212'NICA SEM EMISS'#195'O - SIMPLES'
            '175  SEM REGISTRO SEM EMISS'#195'O')
          TabOrder = 7
          Values.Strings = (
            '112'
            '109'
            '175')
        end
      end
      object SMDBGrid4: TSMDBGrid
        Left = 0
        Top = 349
        Width = 976
        Height = 103
        Align = alBottom
        DataSource = Dm1.dsPessoaReajuste
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
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
        ColCount = 3
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Visible = True
          end>
      end
      object Panel15: TPanel
        Left = 0
        Top = 317
        Width = 976
        Height = 32
        Align = alBottom
        Color = 12615808
        TabOrder = 2
        object Label85: TLabel
          Left = 22
          Top = 13
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = 'Novo Valor:'
        end
        object JvCurrencyEdit1: TJvCurrencyEdit
          Left = 88
          Top = 5
          Width = 121
          Height = 21
          Alignment = taRightJustify
          ReadOnly = False
          TabOrder = 0
          HasMaxValue = False
          HasMinValue = False
        end
        object BitBtn30: TBitBtn
          Left = 211
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Rea&justar'
          TabOrder = 1
          OnClick = BitBtn30Click
        end
        object BitBtn31: TBitBtn
          Left = 287
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Desfazer'
          TabOrder = 2
          OnClick = BitBtn31Click
        end
      end
    end
    object tabServicos: TTabSheet
      Caption = 'Servi'#231'os Contratados'
      ImageIndex = 9
      object Panel7: TPanel
        Left = 0
        Top = 421
        Width = 976
        Height = 31
        Align = alBottom
        TabOrder = 0
        object BitBtn7: TBitBtn
          Left = 3
          Top = 4
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn7Click
        end
        object BitBtn8: TBitBtn
          Left = 78
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
          OnClick = BitBtn8Click
        end
        object BitBtn24: TBitBtn
          Left = 153
          Top = 4
          Width = 75
          Height = 25
          Hint = 'Monta o contrato para o servi'#231'o selecionado'
          Caption = 'Contrato'
          TabOrder = 2
          OnClick = BitBtn24Click
        end
      end
      object JvDBGrid3: TJvDBGrid
        Left = 0
        Top = 0
        Width = 976
        Height = 205
        Align = alClient
        DataSource = Dm1.dsPessoaServico
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = JvDBGrid3DblClick
        OnTitleClick = JvDBGrid3TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'SERVI'#199'O'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAINI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAFIM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Visible = True
          end>
      end
      object JvDBGrid7: TJvDBGrid
        Left = 0
        Top = 205
        Width = 976
        Height = 216
        Align = alBottom
        DataSource = Dm1.dsPessoaServicoReajuste
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = JvDBGrid3DblClick
        OnTitleClick = JvDBGrid3TitleClick
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Contatos'
      ImageIndex = 5
      object Panel2: TPanel
        Left = 0
        Top = 421
        Width = 976
        Height = 31
        Align = alBottom
        TabOrder = 0
        object BitBtn3: TBitBtn
          Left = 3
          Top = 4
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn3Click
        end
        object BitBtn4: TBitBtn
          Left = 78
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
          OnClick = BitBtn4Click
        end
      end
      object JvDBGrid1: TJvDBGrid
        Left = 0
        Top = 0
        Width = 976
        Height = 421
        Align = alClient
        DataSource = Dm1.dsTelefone
        ReadOnly = True
        TabOrder = 1
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
            FieldName = 'CONTATO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEFONE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAMAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Visible = True
          end>
      end
    end
    object tabCliente: TTabSheet
      Caption = 'Cliente'
      ImageIndex = 1
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 976
        Height = 452
        ActivePage = TabSheet5
        Align = alClient
        TabOrder = 0
        object TabSheet5: TTabSheet
          Caption = 'Dados complementares'
          object Label38: TLabel
            Left = 37
            Top = 63
            Width = 77
            Height = 13
            Alignment = taRightJustify
            Caption = 'Plano de sa'#250'de:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 68
            Top = 15
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Caption = 'Profiss'#227'o:'
            FocusControl = DBEdit35
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 72
            Top = 39
            Width = 42
            Height = 13
            Alignment = taRightJustify
            Caption = 'C'#244'njuge:'
            FocusControl = DBEdit36
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label60: TLabel
            Left = 2
            Top = 92
            Width = 66
            Height = 13
            Alignment = taRightJustify
            Caption = 'Obsreva'#231#245'es:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object JvDBLookupCombo7: TJvDBLookupCombo
            Left = 118
            Top = 55
            Width = 314
            Height = 21
            DropDownCount = 8
            DataField = 'PLANOSAUDE_ID'
            DataSource = Dm1.dsPessoa
            LookupField = 'ID'
            LookupDisplay = 'NOME'
            LookupSource = Dm1.dsPlanoSaude
            TabOrder = 2
          end
          object DBMemo1: TDBMemo
            Left = 0
            Top = 104
            Width = 968
            Height = 320
            Align = alBottom
            DataField = 'OBSERVACAO'
            DataSource = Dm1.dsPessoa
            TabOrder = 3
          end
          object DBEdit35: TDBEdit
            Left = 118
            Top = 7
            Width = 313
            Height = 21
            CharCase = ecUpperCase
            DataField = 'PROFISSAO'
            DataSource = Dm1.dsPessoa
            TabOrder = 0
          end
          object DBEdit36: TDBEdit
            Left = 118
            Top = 31
            Width = 313
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CONJUGE'
            DataSource = Dm1.dsPessoa
            TabOrder = 1
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Alarmes'
          ImageIndex = 1
          object JvDBGrid5: TJvDBGrid
            Left = 0
            Top = 0
            Width = 968
            Height = 394
            Align = alClient
            DataSource = Dm1.dsAlarme
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = JvDBGrid5DblClick
            OnTitleClick = JvDBGrid5TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'FONE1'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FONE2'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FONE3'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_EXIBICAO'
                Width = 252
                Visible = True
              end>
          end
          object Panel11: TPanel
            Left = 0
            Top = 394
            Width = 968
            Height = 31
            Align = alBottom
            TabOrder = 1
            object BitBtn11: TBitBtn
              Left = 3
              Top = 4
              Width = 75
              Height = 25
              Caption = '&Incluir'
              TabOrder = 0
              OnClick = BitBtn11Click
            end
            object BitBtn12: TBitBtn
              Left = 78
              Top = 4
              Width = 75
              Height = 25
              Caption = 'E&xcluir'
              TabOrder = 1
              OnClick = BitBtn12Click
            end
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Refer'#234'nicas'
          ImageIndex = 1
          object Label45: TLabel
            Left = 3
            Top = 271
            Width = 99
            Height = 13
            Alignment = taRightJustify
            Caption = 'Empregos anteriores:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object GroupBox4: TGroupBox
            Left = 0
            Top = 122
            Width = 968
            Height = 122
            Align = alTop
            Caption = 'Comerciais'
            TabOrder = 1
            object Label32: TLabel
              Left = 27
              Top = 23
              Width = 31
              Height = 13
              Alignment = taRightJustify
              Caption = 'Nome:'
              FocusControl = DBEdit27
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label33: TLabel
              Left = 9
              Top = 47
              Width = 49
              Height = 13
              Alignment = taRightJustify
              Caption = 'Endere'#231'o:'
              FocusControl = DBEdit28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label34: TLabel
              Left = 391
              Top = 47
              Width = 27
              Height = 13
              Alignment = taRightJustify
              Caption = 'Fone:'
              FocusControl = DBEdit28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label35: TLabel
              Left = 27
              Top = 77
              Width = 31
              Height = 13
              Alignment = taRightJustify
              Caption = 'Nome:'
              FocusControl = DBEdit30
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label36: TLabel
              Left = 9
              Top = 101
              Width = 49
              Height = 13
              Alignment = taRightJustify
              Caption = 'Endere'#231'o:'
              FocusControl = DBEdit31
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label37: TLabel
              Left = 391
              Top = 101
              Width = 27
              Height = 13
              Alignment = taRightJustify
              Caption = 'Fone:'
              FocusControl = DBEdit31
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit27: TDBEdit
              Left = 62
              Top = 39
              Width = 315
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFCOMERCIALEND1'
              DataSource = Dm1.dsPessoa
              TabOrder = 1
            end
            object DBEdit28: TDBEdit
              Left = 62
              Top = 15
              Width = 314
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFCOMERCIAL1'
              DataSource = Dm1.dsPessoa
              TabOrder = 0
            end
            object DBEdit29: TDBEdit
              Left = 422
              Top = 39
              Width = 145
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFCOMERCIALFONE1'
              DataSource = Dm1.dsPessoa
              TabOrder = 2
            end
            object DBEdit30: TDBEdit
              Left = 62
              Top = 93
              Width = 315
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFCOMERCIALEND2'
              DataSource = Dm1.dsPessoa
              TabOrder = 4
            end
            object DBEdit31: TDBEdit
              Left = 62
              Top = 69
              Width = 314
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFCOMERCIAL2'
              DataSource = Dm1.dsPessoa
              TabOrder = 3
            end
            object DBEdit32: TDBEdit
              Left = 422
              Top = 93
              Width = 145
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFCOMERCIALFONE2'
              DataSource = Dm1.dsPessoa
              TabOrder = 5
            end
          end
          object GroupBox5: TGroupBox
            Left = 0
            Top = 0
            Width = 968
            Height = 122
            Align = alTop
            Caption = 'Pessoais'
            TabOrder = 0
            object Label39: TLabel
              Left = 27
              Top = 23
              Width = 31
              Height = 13
              Alignment = taRightJustify
              Caption = 'Nome:'
              FocusControl = DBEdit34
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label42: TLabel
              Left = 9
              Top = 47
              Width = 49
              Height = 13
              Alignment = taRightJustify
              Caption = 'Endere'#231'o:'
              FocusControl = DBEdit37
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label43: TLabel
              Left = 391
              Top = 47
              Width = 27
              Height = 13
              Alignment = taRightJustify
              Caption = 'Fone:'
              FocusControl = DBEdit37
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label29: TLabel
              Left = 27
              Top = 77
              Width = 31
              Height = 13
              Alignment = taRightJustify
              Caption = 'Nome:'
              FocusControl = DBEdit24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label30: TLabel
              Left = 9
              Top = 101
              Width = 49
              Height = 13
              Alignment = taRightJustify
              Caption = 'Endere'#231'o:'
              FocusControl = DBEdit25
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label31: TLabel
              Left = 391
              Top = 101
              Width = 27
              Height = 13
              Alignment = taRightJustify
              Caption = 'Fone:'
              FocusControl = DBEdit25
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit34: TDBEdit
              Left = 62
              Top = 39
              Width = 315
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFPESSOALEND1'
              DataSource = Dm1.dsPessoa
              TabOrder = 1
            end
            object DBEdit37: TDBEdit
              Left = 62
              Top = 15
              Width = 314
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFPESSOAL1'
              DataSource = Dm1.dsPessoa
              TabOrder = 0
            end
            object DBEdit38: TDBEdit
              Left = 422
              Top = 39
              Width = 145
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFPESSOALFONE1'
              DataSource = Dm1.dsPessoa
              TabOrder = 2
            end
            object DBEdit24: TDBEdit
              Left = 62
              Top = 93
              Width = 315
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFPESSOALEND2'
              DataSource = Dm1.dsPessoa
              TabOrder = 4
            end
            object DBEdit25: TDBEdit
              Left = 62
              Top = 69
              Width = 314
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFPESSOAL2'
              DataSource = Dm1.dsPessoa
              TabOrder = 3
            end
            object DBEdit26: TDBEdit
              Left = 422
              Top = 93
              Width = 145
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REFPESSOALFONE2'
              DataSource = Dm1.dsPessoa
              TabOrder = 5
            end
          end
          object DBMemo2: TDBMemo
            Left = 0
            Top = 329
            Width = 968
            Height = 96
            Align = alBottom
            DataSource = Dm1.dsPessoa
            TabOrder = 2
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'Anamnese'
          ImageIndex = 2
          TabVisible = False
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 576
            Height = 31
            Align = alTop
            TabOrder = 0
            object Label44: TLabel
              Left = 11
              Top = 12
              Width = 44
              Height = 13
              Caption = 'Consulta:'
            end
            object Edit4: TEdit
              Left = 62
              Top = 4
              Width = 227
              Height = 21
              TabOrder = 0
              Text = '[Digite o nome e pressione F3 para localizar]'
              OnKeyDown = Edit4KeyDown
            end
          end
          object JvDBGrid4: TJvDBGrid
            Left = 0
            Top = 31
            Width = 576
            Height = 324
            Align = alClient
            DataSource = Dm1.dsPessoaAnamnese
            ReadOnly = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = JvDBGrid4DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'NOME'
                Visible = True
              end>
          end
          object Panel9: TPanel
            Left = 0
            Top = 355
            Width = 576
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
              OnClick = BitBtn9Click
            end
            object BitBtn10: TBitBtn
              Left = 78
              Top = 4
              Width = 75
              Height = 25
              Caption = 'E&xcluir'
              TabOrder = 1
              OnClick = BitBtn10Click
            end
          end
        end
        object TabSheet11: TTabSheet
          Caption = 'Atendimentos'
          ImageIndex = 4
          object JvDBGrid2: TJvDBGrid
            Left = 0
            Top = 0
            Width = 968
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
            OnTitleClick = JvDBGrid2TitleClick
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
            Width = 968
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
    object tabFuncionario: TTabSheet
      Caption = 'Funcion'#225'rio / Vendedor'
      ImageIndex = 5
      object Label53: TLabel
        Left = 60
        Top = 47
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor Sal'#225'rio:'
        FocusControl = DBEdit40
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label54: TLabel
        Left = 63
        Top = 71
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tipo Sal'#225'rio:'
        FocusControl = DBEdit40
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 6
        Top = 23
        Width = 116
        Height = 13
        Alignment = taRightJustify
        Caption = 'Percentual de comiss'#227'o:'
        FocusControl = DBEdit10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit40: TDBEdit
        Left = 126
        Top = 39
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        DataField = 'VALORSALARIO'
        DataSource = Dm1.dsPessoa
        TabOrder = 1
      end
      object JvDBComboBox4: TJvDBComboBox
        Left = 126
        Top = 63
        Width = 145
        Height = 21
        Style = csDropDownList
        DataField = 'TIPOSALARIO'
        DataSource = Dm1.dsPessoa
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Hora'
          'Mensal')
        TabOrder = 2
        Values.Strings = (
          'H'
          'M')
      end
      object DBEdit10: TDBEdit
        Left = 126
        Top = 15
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PERCCOMISSAO'
        DataSource = Dm1.dsPessoa
        TabOrder = 0
      end
    end
    object tabSeg: TTabSheet
      Caption = 'Servi'#231'o Extra (SEG)'
      ImageIndex = 6
      object Panel4: TPanel
        Left = 0
        Top = 421
        Width = 976
        Height = 31
        Align = alBottom
        TabOrder = 0
        object StaticText1: TStaticText
          Left = 1
          Top = 13
          Width = 417
          Height = 17
          Align = alBottom
          BorderStyle = sbsSunken
          Caption = 
            'Digite na tabela para inserir ou alterar, ou clique com o bot'#227'o ' +
            'direito do mouse na tabela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 976
        Height = 421
        Align = alClient
        DataSource = Dm1.dsPessoaServicoExtra
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoAutoSave, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 7
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Item'
            Width = 33
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTEMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Emiss'#227'o'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 277
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Width = 91
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'GERADO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Gerado'
            Width = 46
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTGERADO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Gerado'
            Width = 63
            Visible = True
          end>
      end
    end
    object tabAluno: TTabSheet
      Caption = 'Aluno'
      ImageIndex = 8
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 976
        Height = 452
        ActivePage = TabSheet20
        Align = alClient
        TabOrder = 0
        object TabSheet20: TTabSheet
          Caption = 'Dados'
          ImageIndex = 4
          object Label63: TLabel
            Left = 2
            Top = 24
            Width = 128
            Height = 13
            Alignment = taRightJustify
            Caption = 'Registro na DPF ou ANAC:'
            FocusControl = DBEdit45
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label64: TLabel
            Left = 49
            Top = 48
            Width = 81
            Height = 13
            Alignment = taRightJustify
            Caption = #211'rg'#227'o expedidor:'
            FocusControl = DBEdit46
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label65: TLabel
            Left = 66
            Top = 72
            Width = 64
            Height = 13
            Alignment = taRightJustify
            Caption = 'Dt.Forma'#231#227'o:'
          end
          object Label81: TLabel
            Left = 60
            Top = 96
            Width = 70
            Height = 13
            Alignment = taRightJustify
            Caption = 'Validade CMA:'
          end
          object DBEdit45: TDBEdit
            Left = 134
            Top = 16
            Width = 145
            Height = 21
            CharCase = ecUpperCase
            DataField = 'REGISTRO_DPF'
            DataSource = Dm1.dsPessoa
            TabOrder = 0
          end
          object DBEdit46: TDBEdit
            Left = 134
            Top = 40
            Width = 145
            Height = 21
            CharCase = ecUpperCase
            DataField = 'EXP_REGISTRO_DPF'
            DataSource = Dm1.dsPessoa
            TabOrder = 1
          end
          object JvDBDateEdit3: TJvDBDateEdit
            Left = 134
            Top = 64
            Width = 95
            Height = 21
            DataField = 'DT_FORMACAO'
            DataSource = Dm1.dsPessoa
            NumGlyphs = 2
            TabOrder = 2
          end
          object JvDBDateEdit5: TJvDBDateEdit
            Left = 134
            Top = 88
            Width = 95
            Height = 21
            DataField = 'VALIDADE_CMA'
            DataSource = Dm1.dsPessoa
            NumGlyphs = 2
            TabOrder = 3
          end
        end
        object tabFiliacao: TTabSheet
          Caption = 'Filia'#231#227'o'
          ImageIndex = 5
          object Label56: TLabel
            Left = 36
            Top = 15
            Width = 70
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nome da M'#227'e:'
            FocusControl = DBEdit42
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label57: TLabel
            Left = 42
            Top = 39
            Width = 64
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nome do Pai:'
            FocusControl = DBEdit43
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label58: TLabel
            Left = 43
            Top = 63
            Width = 63
            Height = 13
            Cursor = crHandPoint
            Alignment = taRightJustify
            Caption = 'Naturalidade:'
            FocusControl = DBEdit6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = Label9Click
          end
          object Label59: TLabel
            Left = 67
            Top = 87
            Width = 36
            Height = 13
            Alignment = taRightJustify
            Caption = 'Estado:'
            FocusControl = DBEdit1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel
            Left = 6
            Top = 136
            Width = 98
            Height = 13
            Alignment = taRightJustify
            Caption = 'Data de nascimento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 33
            Top = 112
            Width = 71
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nacionalidade:'
            FocusControl = DBEdit33
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit42: TDBEdit
            Left = 110
            Top = 7
            Width = 491
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NOMEMAE'
            DataSource = Dm1.dsPessoa
            TabOrder = 0
          end
          object DBEdit43: TDBEdit
            Left = 110
            Top = 31
            Width = 491
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NOMEPAI'
            DataSource = Dm1.dsPessoa
            TabOrder = 1
          end
          object JvDBLookupCombo10: TJvDBLookupCombo
            Left = 110
            Top = 55
            Width = 313
            Height = 21
            DropDownCount = 8
            DataField = 'NATURALIDADE_CID'
            DataSource = Dm1.dsPessoa
            LookupField = 'ID'
            LookupDisplay = 'NOME'
            LookupSource = Dm1.dsCidade
            TabOrder = 2
            OnExit = JvDBLookupCombo10Exit
          end
          object JvDBLookupCombo11: TJvDBLookupCombo
            Left = 109
            Top = 79
            Width = 71
            Height = 21
            DropDownCount = 20
            DataField = 'NATURALIDADE_UF'
            DataSource = Dm1.dsPessoa
            LookupField = 'UF'
            LookupDisplay = 'UF'
            LookupSource = Dm1.dsUF
            TabOrder = 3
          end
          object JvDBDateEdit2: TJvDBDateEdit
            Left = 109
            Top = 127
            Width = 95
            Height = 21
            DataField = 'DTNASCIMENTO'
            DataSource = Dm1.dsPessoa
            NumGlyphs = 2
            TabOrder = 4
          end
          object DBEdit33: TDBEdit
            Left = 108
            Top = 104
            Width = 313
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NACIONALIDADE'
            DataSource = Dm1.dsPessoa
            TabOrder = 5
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Cursos'
          object Panel6: TPanel
            Left = 0
            Top = 393
            Width = 968
            Height = 31
            Align = alBottom
            Color = clMoneyGreen
            TabOrder = 0
            object BitBtn14: TBitBtn
              Left = 3
              Top = 4
              Width = 75
              Height = 25
              Caption = '&Incluir'
              TabOrder = 0
              OnClick = BitBtn14Click
            end
            object BitBtn15: TBitBtn
              Left = 78
              Top = 4
              Width = 75
              Height = 25
              Caption = 'E&xcluir'
              TabOrder = 1
              OnClick = BitBtn15Click
            end
            object BitBtn18: TBitBtn
              Left = 153
              Top = 4
              Width = 75
              Height = 25
              Caption = 'Comprovante'
              TabOrder = 2
              OnClick = BitBtn18Click
            end
            object BitBtn21: TBitBtn
              Left = 396
              Top = 4
              Width = 105
              Height = 25
              Hint = 'Busca disciplinas do curso selecionado'
              Caption = 'Buscar disciplinas'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = BitBtn21Click
            end
            object BitBtn22: TBitBtn
              Left = 501
              Top = 4
              Width = 105
              Height = 25
              Hint = 'Exclui disciplina selecionado'
              Caption = 'Excluir disciplina'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              OnClick = BitBtn22Click
            end
            object BitBtn23: TBitBtn
              Left = 606
              Top = 4
              Width = 105
              Height = 25
              Hint = 'Exclui disciplina selecionado'
              Caption = 'Calcular m'#233'dia'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              OnClick = BitBtn23Click
            end
            object BitBtn27: TBitBtn
              Left = 228
              Top = 4
              Width = 75
              Height = 25
              Caption = 'Imp. Contrato'
              TabOrder = 6
              OnClick = BitBtn27Click
            end
          end
          object SMDBGrid2: TSMDBGrid
            Left = 0
            Top = 0
            Width = 968
            Height = 150
            Align = alTop
            DataSource = Dm1.dsPessoa_Curso
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnCellClick = SMDBGrid2CellClick
            OnDblClick = SMDBGrid2DblClick
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
            ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoShowLookup, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
            OnGetCellParams = SMDBGrid2GetCellParams
            RegistryKey = 'Software\Scalabium'
            RegistrySection = 'SMDBGrid'
            WidthOfIndicator = 23
            DefaultRowHeight = 17
            ScrollBars = ssHorizontal
            ColCount = 9
            RowCount = 2
            Columns = <
              item
                Expanded = False
                FieldName = 'NOME'
                Title.Alignment = taCenter
                Title.Caption = 'Nome do Curso'
                Width = 290
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TURMA'
                Title.Alignment = taCenter
                Title.Caption = 'Turma'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MEDIA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Caption = 'M'#233'dia'
                Width = 57
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DTINICIO'
                Title.Alignment = taCenter
                Title.Caption = 'Data Inicial'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DTFINAL'
                Title.Alignment = taCenter
                Title.Caption = 'Data Final'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CARGAHORARIA'
                Title.Alignment = taCenter
                Title.Caption = 'C. Hor'#225'ria'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRCURSO'
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SITUACAO'
                Title.Caption = 'Situa'#231#227'o'
                Width = 63
                Visible = True
              end>
          end
          object SMDBGrid3: TSMDBGrid
            Left = 0
            Top = 176
            Width = 968
            Height = 217
            Align = alClient
            DataSource = Dm1.dsPessoaCursoNota
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 2
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
            ExOptions = [eoCheckBoxSelect, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoShowLookup, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
            RegistryKey = 'Software\Scalabium'
            RegistrySection = 'SMDBGrid'
            WidthOfIndicator = 23
            DefaultRowHeight = 17
            ScrollBars = ssHorizontal
            ColCount = 6
            RowCount = 2
            Columns = <
              item
                Expanded = False
                FieldName = 'SIGLA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'DISCIPLINA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOTA'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CARGA_HORARIA'
                ReadOnly = True
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID'
                Visible = True
              end>
          end
          object Panel14: TPanel
            Left = 0
            Top = 150
            Width = 968
            Height = 26
            Align = alTop
            Color = clMoneyGreen
            TabOrder = 3
            object Shape2: TShape
              Left = 125
              Top = 5
              Width = 15
              Height = 15
              Brush.Color = 4227327
            end
            object Label82: TLabel
              Left = 142
              Top = 5
              Width = 50
              Height = 13
              Caption = 'Desistente'
            end
            object Shape3: TShape
              Left = 13
              Top = 5
              Width = 15
              Height = 15
              Brush.Color = clBlue
            end
            object Label83: TLabel
              Left = 30
              Top = 5
              Width = 46
              Height = 13
              Caption = 'Aprovado'
            end
            object Shape4: TShape
              Left = 237
              Top = 5
              Width = 15
              Height = 15
              Brush.Color = clRed
            end
            object Label84: TLabel
              Left = 254
              Top = 5
              Width = 53
              Height = 13
              Caption = 'Reprovado'
            end
          end
        end
        object TabSheet17: TTabSheet
          Caption = 'Empregos anteriores'
          ImageIndex = 1
          object DBMemo3: TDBMemo
            Left = 0
            Top = 0
            Width = 968
            Height = 424
            Align = alClient
            DataField = 'EMPREGOS_ANT'
            DataSource = Dm1.dsPessoa
            TabOrder = 0
          end
        end
        object TabSheet18: TTabSheet
          Caption = 'Cursos anteriores'
          ImageIndex = 2
          object DBMemo4: TDBMemo
            Left = 0
            Top = 0
            Width = 968
            Height = 424
            Align = alClient
            DataField = 'CURSOS_ANT'
            DataSource = Dm1.dsPessoa
            TabOrder = 0
          end
        end
        object TabSheet19: TTabSheet
          Caption = 'Informa'#231#245'es adicionais'
          ImageIndex = 3
          object DBMemo5: TDBMemo
            Left = 0
            Top = 0
            Width = 968
            Height = 424
            Align = alClient
            DataField = 'INFO_ADICIONAIS'
            DataSource = Dm1.dsPessoa
            TabOrder = 0
          end
        end
      end
    end
    object tabEmrpesas: TTabSheet
      Caption = 'Empresas'
      ImageIndex = 9
      object JvDBGrid6: TJvDBGrid
        Left = 0
        Top = 0
        Width = 976
        Height = 422
        Align = alClient
        DataSource = Dm1.dsPessoaEmpresas
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = JvDBGrid6DblClick
        OnTitleClick = JvDBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'EMPRESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAINI'
            Title.Caption = 'IN'#205'CIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAFIM'
            Title.Caption = 'FIM'
            Visible = True
          end>
      end
      object Panel10: TPanel
        Left = 0
        Top = 422
        Width = 976
        Height = 31
        Align = alBottom
        Color = clMoneyGreen
        TabOrder = 1
        object BitBtn16: TBitBtn
          Left = 3
          Top = 4
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn16Click
        end
        object BitBtn17: TBitBtn
          Left = 78
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
          OnClick = BitBtn17Click
        end
      end
    end
    object tabOcorrencias: TTabSheet
      Caption = 'Ocorr'#234'ncias'
      ImageIndex = 10
      OnShow = tabOcorrenciasShow
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 976
        Height = 31
        Align = alTop
        TabOrder = 0
        object Label68: TLabel
          Left = 43
          Top = 12
          Width = 17
          Height = 13
          Alignment = taRightJustify
          Caption = 'De:'
        end
        object Label69: TLabel
          Left = 192
          Top = 12
          Width = 10
          Height = 13
          Alignment = taRightJustify
          Caption = 'A:'
        end
        object JvDateEdit1: TJvDateEdit
          Left = 64
          Top = 5
          Width = 90
          Height = 21
          ButtonFlat = False
          NumGlyphs = 2
          StartOfWeek = Sun
          TabOrder = 0
        end
        object BitBtn26: TBitBtn
          Left = 304
          Top = 3
          Width = 75
          Height = 25
          Caption = '&Consulta'
          TabOrder = 1
          OnClick = BitBtn26Click
        end
        object JvDateEdit2: TJvDateEdit
          Left = 208
          Top = 5
          Width = 90
          Height = 21
          ButtonFlat = False
          NumGlyphs = 2
          StartOfWeek = Sun
          TabOrder = 2
        end
      end
      object SMDBGrid5: TSMDBGrid
        Left = 0
        Top = 31
        Width = 976
        Height = 421
        Align = alClient
        DataSource = dsResumo
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
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
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NomeOcorrencia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Hora'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Observacao'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Curr'#237'culo'
      ImageIndex = 10
      object Label70: TLabel
        Left = 30
        Top = 104
        Width = 84
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cargo pretendido:'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label71: TLabel
        Left = 27
        Top = 128
        Width = 87
        Height = 13
        Alignment = taRightJustify
        Caption = 'Preten'#231#227'o salarial:'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label72: TLabel
        Left = 87
        Top = 152
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Peso:'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label73: TLabel
        Left = 84
        Top = 176
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = 'Altura:'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label74: TLabel
        Left = 50
        Top = 200
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Escolaridade:'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label75: TLabel
        Left = 44
        Top = 15
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome da M'#227'e:'
        FocusControl = DBEdit53
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label76: TLabel
        Left = 466
        Top = 15
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome do Pai:'
        FocusControl = DBEdit54
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label77: TLabel
        Left = 51
        Top = 39
        Width = 63
        Height = 13
        Cursor = crHandPoint
        Alignment = taRightJustify
        Caption = 'Naturalidade:'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = Label9Click
      end
      object Label78: TLabel
        Left = 491
        Top = 39
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Estado:'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label79: TLabel
        Left = 430
        Top = 64
        Width = 98
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data de nascimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label80: TLabel
        Left = 43
        Top = 64
        Width = 71
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nacionalidade:'
        FocusControl = DBEdit55
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Panel13: TPanel
        Left = 0
        Top = 421
        Width = 976
        Height = 31
        Align = alBottom
        TabOrder = 12
        object BitBtn28: TBitBtn
          Left = 2
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Imprimir'
          TabOrder = 0
          OnClick = BitBtn28Click
        end
      end
      object JvDBComboBox6: TJvDBComboBox
        Left = 120
        Top = 192
        Width = 292
        Height = 21
        Style = csDropDownList
        DataField = 'ESCOLARIDADE'
        DataSource = Dm1.dsPessoa
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'ENSINO FUNDAMENTAL (1'#176' A 4'#176' COMPLETO)'
          'ENSINO FUNDAMENTAL (1'#176' A 4'#176' INCOMPLETO)'
          'ENSINO FUNDAMENTAL (5'#176' A 8'#176' COMPLETO)'
          'ENSINO FUNDAMENTAL (5'#176' A 8'#176' INCOMPLETO)'
          'ENSINO M'#201'DIO COMPLETO'
          'ENSINO M'#201'DIO INCOMPLETO'
          'ENSINO SUPERIOR COMPLETO'
          'ENSINO SUPERIOR INCOMPLETO')
        TabOrder = 10
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8')
      end
      object DBEdit49: TDBEdit
        Left = 120
        Top = 96
        Width = 289
        Height = 21
        DataField = 'CARGO_PRETENDIDO'
        DataSource = Dm1.dsPessoa
        TabOrder = 6
      end
      object DBEdit50: TDBEdit
        Left = 120
        Top = 120
        Width = 121
        Height = 21
        DataField = 'SALARIO_PRETENDIDO'
        DataSource = Dm1.dsPessoa
        TabOrder = 7
      end
      object DBEdit51: TDBEdit
        Left = 120
        Top = 144
        Width = 121
        Height = 21
        DataField = 'PESO'
        DataSource = Dm1.dsPessoa
        TabOrder = 8
      end
      object DBEdit52: TDBEdit
        Left = 120
        Top = 168
        Width = 121
        Height = 21
        DataField = 'ALTURA'
        DataSource = Dm1.dsPessoa
        TabOrder = 9
      end
      object DBEdit53: TDBEdit
        Left = 118
        Top = 7
        Width = 331
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMEMAE'
        DataSource = Dm1.dsPessoa
        TabOrder = 0
      end
      object DBEdit54: TDBEdit
        Left = 534
        Top = 7
        Width = 331
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMEPAI'
        DataSource = Dm1.dsPessoa
        TabOrder = 1
      end
      object JvDBLookupCombo12: TJvDBLookupCombo
        Left = 118
        Top = 31
        Width = 299
        Height = 21
        DropDownCount = 8
        DataField = 'NATURALIDADE_CID'
        DataSource = Dm1.dsPessoa
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = Dm1.dsCidade
        TabOrder = 2
        OnExit = JvDBLookupCombo10Exit
      end
      object JvDBLookupCombo13: TJvDBLookupCombo
        Left = 533
        Top = 31
        Width = 71
        Height = 21
        DropDownCount = 20
        DataField = 'NATURALIDADE_UF'
        DataSource = Dm1.dsPessoa
        LookupField = 'UF'
        LookupDisplay = 'UF'
        LookupSource = Dm1.dsUF
        TabOrder = 3
      end
      object JvDBDateEdit4: TJvDBDateEdit
        Left = 533
        Top = 56
        Width = 95
        Height = 21
        DataField = 'DTNASCIMENTO'
        DataSource = Dm1.dsPessoa
        NumGlyphs = 2
        TabOrder = 5
      end
      object DBEdit55: TDBEdit
        Left = 118
        Top = 56
        Width = 299
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NACIONALIDADE'
        DataSource = Dm1.dsPessoa
        TabOrder = 4
      end
      object PageControl4: TPageControl
        Left = 0
        Top = 228
        Width = 976
        Height = 193
        ActivePage = TabSheet10
        Align = alBottom
        TabOrder = 11
        object TabSheet10: TTabSheet
          Caption = 'Empregos anteriores'
          object DBMemo6: TDBMemo
            Left = 0
            Top = 0
            Width = 968
            Height = 165
            Align = alClient
            DataField = 'EMPREGOS_ANT'
            DataSource = Dm1.dsPessoa
            TabOrder = 0
          end
        end
        object TabSheet12: TTabSheet
          Caption = 'Cursos Anteriores'
          ImageIndex = 1
          object DBMemo7: TDBMemo
            Left = 0
            Top = 0
            Width = 968
            Height = 165
            Align = alClient
            DataField = 'CURSOS_ANT'
            DataSource = Dm1.dsPessoa
            TabOrder = 0
          end
        end
        object TabSheet13: TTabSheet
          Caption = 'Objetivos'
          ImageIndex = 2
          object DBMemo8: TDBMemo
            Left = 0
            Top = 0
            Width = 968
            Height = 165
            Align = alClient
            DataField = 'OBJETIVOS'
            DataSource = Dm1.dsPessoa
            TabOrder = 0
          end
        end
      end
    end
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
  object UCControls1: TUCControls
    GroupName = 'Pessoas (Financeiro)'
    UserControl = fMenu.UserControl1
    NotAllowed = naInvisible
    Left = 428
    Top = 440
  end
  object CReceberParc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select SUM(VLRRESTANTE) VLRRESTANTE'#13#10'from CRECEBERPARC'#13#10'WHERE (V' +
      'LRRESTANTE > 0) AND (CODCLIENTE = :CODCLIENTE)'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODCLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = Dm1.Conexao
    Left = 460
    Top = 136
    object CReceberParcVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
    end
  end
  object CReceberParcP: TDataSetProvider
    DataSet = CReceberParc
    Left = 476
    Top = 136
  end
  object tCReceberParc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CReceberParcP'
    Left = 492
    Top = 136
    object tCReceberParcVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
    end
  end
  object CPagarParc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select  SUM(VLRRESTANTE) VLRRESTANTE'#13#10'from CPAGARPARC'#13#10'WHERE (VL' +
      'RRESTANTE > 0) AND (CODFORNECEDOR = :CODFORNECEDOR)'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODFORNECEDOR'
        ParamType = ptInput
      end>
    SQLConnection = Dm1.Conexao
    Left = 460
    Top = 168
    object CPagarParcVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
    end
  end
  object CPagarParcP: TDataSetProvider
    DataSet = CPagarParc
    Left = 480
    Top = 168
  end
  object tCPagarParc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CPagarParcP'
    Left = 492
    Top = 168
    object tCPagarParcVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Jpegs (*.jpg)|*.jpg'
    InitialDir = 'C:\meusdocumentos\sergio'
    Left = 456
    Top = 440
  end
  object cdsResumo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NomeOcorrencia'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Hora'
        DataType = ftTime
      end
      item
        Name = 'Observacao'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Data'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 580
    Top = 136
    Data = {
      760000009619E0BD01000000180000000400000000000300000076000E4E6F6D
      654F636F7272656E6369610100490000000100055749445448020002000F0004
      486F726104000700000000000A4F62736572766163616F010049000000010005
      574944544802000200C800044461746104000600000000000000}
    object cdsResumoNomeOcorrencia: TStringField
      FieldName = 'NomeOcorrencia'
      Size = 15
    end
    object cdsResumoHora: TTimeField
      FieldName = 'Hora'
    end
    object cdsResumoObservacao: TStringField
      FieldName = 'Observacao'
      Size = 200
    end
    object cdsResumoData: TDateField
      FieldName = 'Data'
    end
  end
  object dsResumo: TDataSource
    DataSet = cdsResumo
    Left = 612
    Top = 136
  end
  object sdsOcorrencias: TSQLDataSet
    CommandText = 
      'SELECT D.DATA, DE.MOTIVO '#13#10'FROM DIARIO D '#13#10'LEFT JOIN DIARIO_ESPE' +
      'CIAL DE ON (D.ID = DE.DIARIO_ID) '#13#10'WHERE DE.CLIENTE_ID = :P1 '#13#10'A' +
      'ND D.DATA BETWEEN :D1 AND :D2'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'P1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'D1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'D2'
        ParamType = ptInput
      end>
    SQLConnection = Dm1.Conexao
    Left = 580
    Top = 168
  end
  object dspOcorrencias: TDataSetProvider
    DataSet = sdsOcorrencias
    Left = 612
    Top = 168
  end
  object cdsOcorrencias: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOcorrencias'
    Left = 644
    Top = 168
  end
  object dsOcorrencias: TDataSource
    DataSet = cdsOcorrencias
    Left = 676
    Top = 168
  end
  object ValorPorExtenso1: TValorPorExtenso
    TipoDoTexto = ttMaiuscula
    Genero = gMasculino
    Left = 504
    Top = 96
  end
end
