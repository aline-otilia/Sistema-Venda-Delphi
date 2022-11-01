inherited frmCadProduto: TfrmCadProduto
  Caption = 'Cadastro Produto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCampos: TPanel
    object Label1: TLabel
      Left = 160
      Top = 64
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = dbeCod
    end
    object Label2: TLabel
      Left = 340
      Top = 64
      Width = 300
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = dbeDescr
    end
    object Label3: TLabel
      Left = 160
      Top = 109
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = dbeValor
    end
    object Label4: TLabel
      Left = 340
      Top = 109
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      FocusControl = dbeQtde
    end
    object dbeCod: TDBEdit
      Left = 160
      Top = 80
      Width = 134
      Height = 21
      DataField = 'IDPRODUTO'
      DataSource = dts
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 340
      Top = 80
      Width = 300
      Height = 21
      DataField = 'DESCRPRODUTO'
      DataSource = dts
      TabOrder = 1
    end
    object dbeValor: TDBEdit
      Left = 160
      Top = 128
      Width = 121
      Height = 21
      DataField = 'VALORPRODUTO'
      DataSource = dts
      TabOrder = 2
    end
    object dbeQtde: TDBEdit
      Left = 340
      Top = 128
      Width = 134
      Height = 21
      DataField = 'QTDEPRODUTO'
      DataSource = dts
      TabOrder = 3
    end
  end
  inherited dts: TDataSource
    DataSet = modulo.qryProduto
  end
end
