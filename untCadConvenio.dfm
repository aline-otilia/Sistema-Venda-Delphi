inherited frmCadConvenio: TfrmCadConvenio
  Caption = 'frmCadConvenio'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBotoes: TPanel
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
  end
  inherited pnlCampos: TPanel
    object Label1: TLabel
      Left = 32
      Top = 48
      Width = 96
      Height = 13
      Caption = 'C'#243'digo do Conv'#234'nio'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 32
      Top = 144
      Width = 87
      Height = 13
      Caption = 'Valor do Conv'#234'nio'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 32
      Top = 187
      Width = 70
      Height = 13
      Caption = 'Valor Debitado'
      FocusControl = DBEdit4
    end
    object Label2: TLabel
      Left = 600
      Top = 48
      Width = 84
      Height = 13
      Caption = 'C'#243'digo do Cliente'
      FocusControl = DBEdit2
      Visible = False
    end
    object Label5: TLabel
      Left = 32
      Top = 91
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object DBEdit1: TDBEdit
      Left = 32
      Top = 64
      Width = 134
      Height = 21
      DataField = 'IDCONVENIO'
      DataSource = dts
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 32
      Top = 160
      Width = 199
      Height = 21
      DataField = 'VALORTOTAL'
      DataSource = dts
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 32
      Top = 203
      Width = 199
      Height = 21
      DataField = 'VALORUSADO'
      DataSource = dts
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 600
      Top = 64
      Width = 134
      Height = 21
      DataField = 'IDCLIENTE'
      DataSource = dts
      TabOrder = 3
      Visible = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 32
      Top = 110
      Width = 145
      Height = 21
      DataField = 'NOMECLIENTE'
      DataSource = dts
      TabOrder = 4
    end
  end
  inherited dts: TDataSource
    DataSet = modulo.qryConvenio
  end
end
