inherited frmCadCidade: TfrmCadCidade
  Caption = 'Cadastro de Cidade'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCampos: TPanel
    ExplicitLeft = 24
    ExplicitTop = 175
    object Label1: TLabel
      Left = 144
      Top = 104
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 215
      Top = 104
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 563
      Top = 104
      Width = 13
      Height = 13
      Caption = 'UF'
      FocusControl = DBEdit3
    end
    object DBEdit1: TDBEdit
      Left = 144
      Top = 120
      Width = 57
      Height = 21
      DataField = 'IDCIDADE'
      DataSource = dts
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 215
      Top = 120
      Width = 326
      Height = 21
      DataField = 'NOMECIDADE'
      DataSource = dts
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 563
      Top = 120
      Width = 57
      Height = 21
      DataField = 'SIGLAESTADO'
      DataSource = dts
      TabOrder = 2
    end
  end
  inherited dts: TDataSource
    DataSet = modulo.qryCidade
  end
end
