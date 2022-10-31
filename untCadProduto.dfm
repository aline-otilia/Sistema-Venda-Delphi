inherited frmPadrao1: TfrmPadrao1
  Caption = 'Cadastro Produto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCampos: TPanel
    ExplicitLeft = 8
    ExplicitTop = 170
    object Label1: TLabel
      Left = 95
      Top = 88
      Width = 11
      Height = 13
      Caption = 'ID'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 248
      Top = 85
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 95
      Top = 128
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 248
      Top = 128
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DBEdit4
    end
    object DBEdit1: TDBEdit
      Left = 95
      Top = 101
      Width = 134
      Height = 21
      DataField = 'IDPRODUTO'
      DataSource = dts
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 248
      Top = 101
      Width = 476
      Height = 21
      DataField = 'DESCRPRODUTO'
      DataSource = dts
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 95
      Top = 144
      Width = 134
      Height = 21
      DataField = 'VALORPRODUTO'
      DataSource = dts
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 248
      Top = 144
      Width = 147
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
