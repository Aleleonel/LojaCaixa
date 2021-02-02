object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 319
  Width = 331
  object conexao: TFDConnection
    Params.Strings = (
      'Database=db_loja'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object tb_produtos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'db_loja.produtos'
    TableName = 'db_loja.produtos'
    Left = 48
    Top = 96
    object tb_produtosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tb_produtosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
    object tb_produtosfornecedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fornecedor'
      Origin = 'fornecedor'
      Size = 30
    end
    object tb_produtosvalidade: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'validade'
      Origin = 'validade'
    end
    object tb_produtospreco: TBCDField
      FieldName = 'preco'
      Origin = 'preco'
      Required = True
      Precision = 5
      Size = 2
    end
  end
  object ds_produtos: TDataSource
    DataSet = tb_produtos
    Left = 112
    Top = 96
  end
  object tb_precos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'db_loja.preco'
    TableName = 'db_loja.preco'
    Left = 40
    Top = 160
    object tb_precosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tb_precospreco: TLargeintField
      FieldName = 'preco'
      Origin = 'preco'
      Required = True
    end
  end
  object ds_precos: TDataSource
    Left = 112
    Top = 160
  end
end
