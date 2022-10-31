inherited frmCadCidade: TfrmCadCidade
  BorderStyle = bsNone
  Caption = 'Cadastro de Cidade'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCampos: TPanel
    object Label1: TLabel
      Left = 144
      Top = 104
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = dbeCodCidade
    end
    object Label2: TLabel
      Left = 215
      Top = 104
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = dbeNomeCidade
    end
    object Label3: TLabel
      Left = 563
      Top = 104
      Width = 13
      Height = 13
      Caption = 'UF'
      FocusControl = dbeSiglaEstado
    end
    object dbeCodCidade: TDBEdit
      Left = 144
      Top = 120
      Width = 57
      Height = 21
      DataField = 'IDCIDADE'
      DataSource = dts
      ReadOnly = True
      TabOrder = 0
    end
    object dbeNomeCidade: TDBEdit
      Left = 215
      Top = 120
      Width = 326
      Height = 21
      DataField = 'NOMECIDADE'
      DataSource = dts
      ReadOnly = True
      TabOrder = 1
    end
    object dbeSiglaEstado: TDBEdit
      Left = 563
      Top = 120
      Width = 57
      Height = 21
      DataField = 'SIGLAESTADO'
      DataSource = dts
      ReadOnly = True
      TabOrder = 2
    end
  end
  inherited dts: TDataSource
    DataSet = modulo.qryCidade
  end
end
