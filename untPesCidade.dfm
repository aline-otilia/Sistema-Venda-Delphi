inherited frmPesCidade: TfrmPesCidade
  Caption = 'Pesquisa de Cidade'
  ClientHeight = 393
  ClientWidth = 327
  ExplicitWidth = 343
  ExplicitHeight = 432
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPesquisa: TPanel
    Top = 313
    Width = 327
    ExplicitLeft = -32
    ExplicitTop = 319
    ExplicitWidth = 860
    inherited btnPesquisar: TBitBtn
      Top = 6
      Width = 140
      OnClick = btnPesquisarClick
      ExplicitTop = 6
      ExplicitWidth = 140
    end
    inherited btnFechar: TBitBtn
      Left = 175
      Top = 6
      Width = 140
      Height = 67
      ExplicitLeft = 175
      ExplicitTop = 6
      ExplicitWidth = 140
      ExplicitHeight = 67
    end
  end
  inherited dbgPesquisa: TDBGrid
    Width = 327
    Height = 121
  end
  inherited pnlCampos: TPanel
    Top = 121
    Width = 327
    Height = 192
    ExplicitLeft = 112
    ExplicitTop = 185
    ExplicitWidth = 793
    ExplicitHeight = 224
    object Label1: TLabel
      Left = 32
      Top = 48
      Width = 69
      Height = 13
      Caption = 'C'#243'digo Cidade'
    end
    object Label2: TLabel
      Left = 32
      Top = 105
      Width = 63
      Height = 13
      Caption = 'Nome Cidade'
    end
    object edtCod: TEdit
      Left = 32
      Top = 64
      Width = 41
      Height = 21
      TabOrder = 0
    end
    object edtNome: TEdit
      Left = 32
      Top = 124
      Width = 257
      Height = 21
      TabOrder = 1
    end
  end
  inherited dtsPesquisa: TDataSource
    DataSet = modulo.qryCidade
    Left = 288
    Top = 266
  end
end
