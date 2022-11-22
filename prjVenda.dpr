program prjVenda;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untPadrao in 'untPadrao.pas' {frmPadrao},
  untModulo in 'untModulo.pas' {modulo: TDataModule},
  untCadCidade in 'untCadCidade.pas' {frmCadCidade},
  untCadProduto in 'untCadProduto.pas' {frmCadProduto},
  untCadCliente in 'untCadCliente.pas' {frmCadCliente},
  untPadraoPesquisa in 'untPadraoPesquisa.pas' {frmPadraoPesquisa},
  untPesCidade in 'untPesCidade.pas' {frmPesCidade},
  untPesCliente in 'untPesCliente.pas' {frmPesCliente},
  untCadConvenio in 'untCadConvenio.pas' {frmCadConvenio},
  untPesConvenio in 'untPesConvenio.pas' {frmPesConvenio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tmodulo, modulo);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
