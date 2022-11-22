object modulo: Tmodulo
  OldCreateOrder = False
  Height = 406
  Width = 791
  object conexao: TFDConnection
    Params.Strings = (
      'Database=venda'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 16
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 104
    Top = 16
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\etec\Desktop\Sistema-Venda-Delphi\libmysql.dll'
    Left = 192
    Top = 16
  end
  object qryCidade: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from cidade')
    Left = 16
    Top = 72
    object qryCidadeIDCIDADE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCidadeNOMECIDADE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'NOMECIDADE'
      Origin = 'NOMECIDADE'
      Size = 50
    end
    object qryCidadeSIGLAESTADO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'SIGLAESTADO'
      Origin = 'SIGLAESTADO'
      Size = 2
    end
  end
  object qryAutoNum: TFDQuery
    Connection = conexao
    Left = 16
    Top = 128
  end
  object qryProduto: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from produto')
    Left = 80
    Top = 72
    object qryProdutoIDPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutoDESCRPRODUTO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRPRODUTO'
      Origin = 'DESCRPRODUTO'
      Size = 50
    end
    object qryProdutoVALORPRODUTO: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      FieldName = 'VALORPRODUTO'
      Origin = 'VALORPRODUTO'
      currency = True
      Precision = 8
      Size = 2
    end
    object qryProdutoQTDEPRODUTO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDEPRODUTO'
      Origin = 'QTDEPRODUTO'
    end
  end
  object qryCliente: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from cliente;')
    Left = 152
    Top = 72
    object qryClienteIDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo do Cliente'
      FieldName = 'IDCLIENTE'
      Origin = 'IDCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClienteNOMECLIENTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'NOMECLIENTE'
      Origin = 'NOMECLIENTE'
      Size = 50
    end
    object qryClienteENDERCLIENTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERCLIENTE'
      Origin = 'ENDERCLIENTE'
      Size = 50
    end
    object qryClienteCPFCLIENTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF'
      FieldName = 'CPFCLIENTE'
      Origin = 'CPFCLIENTE'
    end
    object qryClienteFONECLIENTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Telefone'
      FieldName = 'FONECLIENTE'
      Origin = 'FONECLIENTE'
    end
    object qryClienteIDCIDADE: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo da Cidade'
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
    end
    object qryClienteNOMECIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'NOMECIDADE'
      LookupDataSet = qryCidade
      LookupKeyFields = 'IDCIDADE'
      LookupResultField = 'NOMECIDADE'
      KeyFields = 'IDCIDADE'
      Size = 50
      Lookup = True
    end
  end
  object qryConvenio: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from convenio;')
    Left = 208
    Top = 72
    object qryConvenioIDCONVENIO: TIntegerField
      DisplayLabel = 'C'#243'digo do Conv'#234'nio'
      FieldName = 'IDCONVENIO'
      Origin = 'IDCONVENIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryConvenioIDCLIENTE: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo do Cliente'
      FieldName = 'IDCLIENTE'
      Origin = 'IDCLIENTE'
    end
    object qryConvenioVALORTOTAL: TLargeintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor do Conv'#234'nio'
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
    end
    object qryConvenioVALORUSADO: TLargeintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor Debitado'
      FieldName = 'VALORUSADO'
      Origin = 'VALORUSADO'
    end
    object qryConvenioNOMECLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkLookup
      FieldName = 'NOMECLIENTE'
      LookupDataSet = qryCliente
      LookupKeyFields = 'IDCLIENTE'
      LookupResultField = 'NOMECLIENTE'
      KeyFields = 'IDCLIENTE'
      Lookup = True
    end
  end
end
