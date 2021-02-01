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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 796
    Height = 510
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Principal'
    end
    object TabSheet2: TTabSheet
      Caption = 'Clientes'
      ImageIndex = 1
    end
    object TabSheet3: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 2
    end
    object TabSheet4: TTabSheet
      Caption = 'Estoque'
      ImageIndex = 3
    end
    object Caixa: TTabSheet
      Caption = 'Caixa'
      ImageIndex = 4
    end
  end
end
