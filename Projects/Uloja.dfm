object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'SGC - Sistemas Gerenciador Clientes'
  ClientHeight = 510
  ClientWidth = 796
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 40
    Top = 173
    Width = 51
    Height = 13
    Caption = 'Fonecedor'
  end
  object Label3: TLabel
    Left = 40
    Top = 109
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label1: TLabel
    Left = 40
    Top = 237
    Width = 40
    Height = 13
    Caption = 'Validade'
  end
  object Label4: TLabel
    Left = 304
    Top = 109
    Width = 27
    Height = 13
    Caption = 'Pre'#231'o'
  end
  object DBEdit1: TDBEdit
    Left = 40
    Top = 128
    Width = 225
    Height = 21
    DataField = 'nome'
    DataSource = DataModule1.ds_produtos
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 304
    Top = 128
    Width = 121
    Height = 21
    DataField = 'preco'
    DataSource = DataModule1.ds_produtos
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 40
    Top = 64
    Width = 240
    Height = 25
    DataSource = DataModule1.ds_produtos
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 40
    Top = 192
    Width = 225
    Height = 21
    DataField = 'fornecedor'
    DataSource = DataModule1.ds_produtos
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 40
    Top = 256
    Width = 225
    Height = 21
    DataField = 'validade'
    DataSource = DataModule1.ds_produtos
    TabOrder = 4
  end
end
