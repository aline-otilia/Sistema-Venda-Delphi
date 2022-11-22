unit untPesConvenio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untPadraoPesquisa, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmPesConvenio = class(TfrmPadraoPesquisa)
    edtCod: TEdit;
    Label2: TLabel;
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function countEdtComTexto(): integer;
  end;

var
  frmPesConvenio: TfrmPesConvenio;

implementation

{$R *.dfm}

uses untModulo;

procedure TfrmPesConvenio.btnPesquisarClick(Sender: TObject);
var vPesq:string; res:string ;
begin
  inherited;
  vPesq := '';
  modulo.qryConvenio.Close;

  vPesq := ' SELECT * FROM CONVENIO WHERE IDCONVENIO IS NOT NULL ';

  if (countEdtComTexto() > 1) then
  begin
    Application.MessageBox('Preencha apenas um dos campos','Erro',MB_OK+MB_ICONWARNING);
    edtCod.Text := '';
  end
  else if edtCod.Text <> '' then
  begin
    vPesq := vPesq + ' AND IDCONVENIO = ' + edtCod.Text;
  end;

  modulo.qryConvenio.SQL.CommaText := vPesq;
  modulo.qryConvenio.Open();

  res := modulo.qryConvenio.FieldByName('NOMECLIENTE').AsString;

  Application.MessageBox(PWideChar(res),'Resultado',MB_OK);
end;

function TfrmPesConvenio.countEdtComTexto: Integer;
var count:integer;
begin
  count := 0;

  if edtCod.Text <> '' then
    count := count + 1;

  Result := count;
end;

end.
