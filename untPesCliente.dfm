inherited frmPesCliente: TfrmPesCliente
  Caption = 'Pesquisa Cliente'
  ClientHeight = 345
  ClientWidth = 327
  ExplicitWidth = 343
  ExplicitHeight = 384
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPesquisa: TPanel
    Top = 265
    Width = 327
    ExplicitTop = 201
    inherited btnPesquisar: TBitBtn
      Left = 16
      Top = 6
      Width = 140
      OnClick = btnPesquisarClick
      ExplicitLeft = 16
      ExplicitTop = 6
      ExplicitWidth = 140
    end
    inherited btnFechar: TBitBtn
      Left = 176
      Top = 6
      Width = 140
      ExplicitLeft = 176
      ExplicitTop = 6
      ExplicitWidth = 140
    end
  end
  inherited dbgPesquisa: TDBGrid
    Width = 327
  end
  inherited pnlCampos: TPanel
    Width = 327
    Height = 176
    OnClick = pnlCamposClick
    ExplicitLeft = 168
    ExplicitTop = 128
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label2: TLabel
      Left = 16
      Top = 71
      Width = 19
      Height = 13
      Caption = 'CPF'
    end
    object Label3: TLabel
      Left = 16
      Top = 21
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label1: TLabel
      Left = 223
      Top = 71
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object edtNome: TEdit
      Left = 16
      Top = 40
      Width = 289
      Height = 21
      TabOrder = 0
    end
    object edtCpf: TEdit
      Left = 16
      Top = 90
      Width = 193
      Height = 21
      TabOrder = 1
    end
    object edtCod: TEdit
      Left = 223
      Top = 90
      Width = 82
      Height = 21
      TabOrder = 2
    end
  end
  inherited dtsPesquisa: TDataSource
    DataSet = modulo.qryCliente
    Left = 256
    Top = 218
  end
end
