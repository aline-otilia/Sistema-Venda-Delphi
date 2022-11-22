inherited frmPesConvenio: TfrmPesConvenio
  Caption = 'frmPesConvenio'
  ClientHeight = 435
  ClientWidth = 248
  ExplicitWidth = 264
  ExplicitHeight = 474
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPesquisa: TPanel
    Top = 355
    Width = 248
    ExplicitTop = 162
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
  end
  inherited dbgPesquisa: TDBGrid
    Width = 248
    Visible = False
  end
  inherited pnlCampos: TPanel
    Width = 248
    Height = 266
    ExplicitLeft = 0
    ExplicitTop = 89
    ExplicitWidth = 527
    ExplicitHeight = 73
    object Label2: TLabel
      Left = 58
      Top = 101
      Width = 81
      Height = 13
      Caption = 'C'#243'digo Conv'#234'nio'
    end
    object edtCod: TEdit
      Left = 58
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 0
    end
  end
  inherited dtsPesquisa: TDataSource
    DataSet = modulo.qryConvenio
    Left = 40
    Top = 266
  end
end
