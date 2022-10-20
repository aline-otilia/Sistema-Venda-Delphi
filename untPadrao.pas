unit untPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPadrao = class(TForm)
    pnlBotoes: TPanel;
    btnAdicionar: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnPesquisar: TBitBtn;
    btnSelecionar: TBitBtn;
    btnFechar: TBitBtn;
    dts: TDataSource;
    dbg: TDBGrid;
    pnlCampos: TPanel;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPadrao: TfrmPadrao;

implementation

{$R *.dfm}

procedure TfrmPadrao.btnAdicionarClick(Sender: TObject);
begin
  dts.DataSet.Append;
end;

procedure TfrmPadrao.btnAlterarClick(Sender: TObject);
begin
  dts.DataSet.Edit;
end;

procedure TfrmPadrao.btnCancelarClick(Sender: TObject);
begin
  dts.DataSet.Cancel;
end;

procedure TfrmPadrao.btnExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir?','Confirme',MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION) = idyes then
      dts.DataSet.Delete;
end;

procedure TfrmPadrao.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TfrmPadrao.btnSalvarClick(Sender: TObject);
begin
  dts.DataSet.Post;
end;

end.
