object fImport: TfImport
  Left = 83
  Top = 58
  Width = 709
  Height = 480
  Caption = 'fImport'
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
  object BitBtn1: TBitBtn
    Left = 24
    Top = 24
    Width = 145
    Height = 25
    Caption = 'Importar Clientes'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 112
    Width = 681
    Height = 105
    Caption = 'Access'
    Enabled = False
    TabOrder = 1
    object Label1: TLabel
      Left = 57
      Top = 32
      Width = 14
      Height = 13
      Caption = 'ID:'
    end
    object Label2: TLabel
      Left = 40
      Top = 56
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label3: TLabel
      Left = 44
      Top = 80
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object Edit1: TEdit
      Left = 73
      Top = 48
      Width = 321
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 73
      Top = 72
      Width = 105
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 3
    Top = 232
    Width = 681
    Height = 105
    Caption = 'FB'
    Enabled = False
    TabOrder = 2
    object Label4: TLabel
      Left = 57
      Top = 30
      Width = 14
      Height = 13
      Caption = 'ID:'
    end
    object Label5: TLabel
      Left = 40
      Top = 54
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label6: TLabel
      Left = 44
      Top = 78
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object Edit3: TEdit
      Left = 73
      Top = 46
      Width = 321
      Height = 21
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 73
      Top = 70
      Width = 105
      Height = 21
      TabOrder = 1
    end
  end
  object Pessoa: TSQLDataSet
    CommandText = 'SELECT PESSOA.*'#13#10'FROM PESSOA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 52
    Top = 72
  end
  object PessoaP: TDataSetProvider
    DataSet = Pessoa
    Left = 68
    Top = 72
  end
  object tPessoa: TClientDataSet
    Active = True
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
        Name = 'SENHA'
        DataType = ftString
        Size = 100
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
        Name = 'ALUNO'
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
      end
      item
        Name = 'CONTRASENHA'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'AGENTE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'tPessoaIndex2'
        Fields = 'NOME'
      end>
    Params = <>
    ProviderName = 'PessoaP'
    StoreDefs = True
    Left = 84
    Top = 72
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
    object tPessoaSENHA: TStringField
      DisplayWidth = 12
      FieldName = 'SENHA'
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
  end
  object dsPessoa: TDataSource
    DataSet = tPessoa
    Left = 99
    Top = 72
  end
end
