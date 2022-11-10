inherited frmCadCliente: TfrmCadCliente
  Caption = 'frmCadCliente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBotoes: TPanel
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
  end
  inherited pnlCampos: TPanel
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 84
      Height = 13
      Caption = 'C'#243'digo do Cliente'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 24
      Top = 64
      Width = 78
      Height = 13
      Caption = 'Nome do Cliente'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 24
      Top = 104
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 24
      Top = 147
      Width = 19
      Height = 13
      Caption = 'CPF'
      FocusControl = dbeCPF
    end
    object Label5: TLabel
      Left = 199
      Top = 147
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = dbeFone
    end
    object Label6: TLabel
      Left = 469
      Top = 147
      Width = 84
      Height = 13
      Caption = 'C'#243'digo da Cidade'
      FocusControl = DBEdit6
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 40
      Width = 84
      Height = 21
      DataField = 'IDCLIENTE'
      DataSource = dts
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 24
      Top = 80
      Width = 654
      Height = 21
      DataField = 'NOMECLIENTE'
      DataSource = dts
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 24
      Top = 120
      Width = 654
      Height = 21
      DataField = 'ENDERCLIENTE'
      DataSource = dts
      TabOrder = 2
    end
    object dbeCPF: TDBEdit
      Left = 24
      Top = 166
      Width = 161
      Height = 21
      DataField = 'CPFCLIENTE'
      DataSource = dts
      TabOrder = 3
      OnEnter = dbeCPFEnter
    end
    object dbeFone: TDBEdit
      Left = 199
      Top = 166
      Width = 264
      Height = 21
      DataField = 'FONECLIENTE'
      DataSource = dts
      TabOrder = 4
      OnEnter = dbeFoneEnter
    end
    object DBEdit6: TDBEdit
      Left = 469
      Top = 166
      Width = 44
      Height = 21
      DataField = 'IDCIDADE'
      DataSource = dts
      TabOrder = 5
    end
    object dblCidade: TDBLookupComboBox
      Left = 519
      Top = 166
      Width = 145
      Height = 21
      DataField = 'NOMECIDADE'
      DataSource = dts
      TabOrder = 6
    end
  end
  inherited dts: TDataSource
    DataSet = modulo.qryCliente
  end
end
