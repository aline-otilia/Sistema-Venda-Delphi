unit untPesCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untPadraoPesquisa, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmPesCidade = class(TfrmPadraoPesquisa)
    Label1: TLabel;
    Label2: TLabel;
    edtCod: TEdit;
    edtNome: TEdit;
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesCidade: TfrmPesCidade;

implementation

{$R *.dfm}

uses untModulo;

procedure TfrmPesCidade.btnPesquisarClick(Sender: TObject);
var vPesq :string;
begin
  inherited;
  vPesq := '';
  modulo.qryCidade.Close;

  vPesq := 'SELECT * FROM CIDADE WHERE IDCIDADE IS NOT NULL ';

  if (edtCod.Text <> '') and (edtNome.Text <> '') then
  begin
    Application.MessageBox('Preencha apenas um dos campos','Erro',MB_OK+MB_ICONWARNING);
    edtCod.Text := '';
    edtNome.Text := '';
  end
  else if edtCod.Text <> '' then
  begin
    vPesq := vPesq + ' AND IDCIDADE = ' + edtCod.Text;
  end
  else if edtNome.Text <> '' then
    vPesq := vPesq + ' AND NOMECIDADE LIKE ' + QuotedStr('%' + edtNome.Text + '%');


  modulo.qryCidade.SQL.CommaText := vPesq;
  modulo.qryCidade.Open();
end;

end.
