unit untPesCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untPadraoPesquisa, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmPesCliente = class(TfrmPadraoPesquisa)
    edtNome: TEdit;
    edtCpf: TEdit;
    edtCod: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    procedure btnPesquisarClick(Sender: TObject);
    procedure pnlCamposClick(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
    function countEdtComTexto(): integer;
  end;

var
  frmPesCliente: TfrmPesCliente;

implementation

{$R *.dfm}

uses untModulo;

procedure TfrmPesCliente.btnPesquisarClick(Sender: TObject);
var vPesq:string;
begin
  inherited;
  vPesq := '';
  modulo.qryCliente.Close;
  
  vPesq := ' SELECT * FROM CLIENTE WHERE IDCLIENTE IS NOT NULL ';
  
  if (countEdtComTexto() > 1) then
  begin
    Application.MessageBox('Preencha apenas um dos campos','Erro',MB_OK+MB_ICONWARNING);
    edtCod.Text := '';
    edtNome.Text := '';
    edtCpf.Text := '';
  end
  else if edtCod.Text <> '' then
  begin
    vPesq := vPesq + ' AND ID CLIENTE = ' + edtCod.Text;
  end
  else if edtNome.Text <> '' then       
  begin
    vPesq := vPesq + ' AND NOMECLIENTE LIKE ' + QuotedStr('%' + edtNome.Text + '%');
  end
  else if edtCpf.Text <> '' then
   vPesq := vPesq + ' AND CPFCLIENTE LIKE ' + QuotedStr('%' + edtCpf.Text + '%');

  modulo.qryCliente.SQL.CommaText := vPesq;
  modulo.qryCliente.Open();
  

end;

function TfrmPesCliente.countEdtComTexto: Integer;
var count:integer;
begin
  count := 0;

  if edtCod.Text <> '' then
    count := count + 1;

  if edtNome.Text <> '' then
    count := count + 1;

  if edtCpf.Text <> '' then
    count := count + 1;

  Result := count;
end;

end.
