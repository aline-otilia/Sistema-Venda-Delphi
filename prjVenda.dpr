program prjVenda;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untPadrao in 'untPadrao.pas' {frmPadrao},
  untModulo in 'untModulo.pas' {modulo: TDataModule},
  untCadCidade in 'untCadCidade.pas' {frmCadCidade},
  untCadProduto in 'untCadProduto.pas' {frmPadrao1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tmodulo, modulo);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmPadrao1, frmPadrao1);
  Application.Run;
end.
