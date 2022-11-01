unit untCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadProduto = class(TfrmPadrao)
    Label1: TLabel;
    dbeCod: TDBEdit;
    Label2: TLabel;
    dbeDescr: TDBEdit;
    Label3: TLabel;
    dbeValor: TDBEdit;
    Label4: TLabel;
    dbeQtde: TDBEdit;
    procedure btnAdicionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadProduto: TfrmCadProduto;

implementation

{$R *.dfm}

uses untModulo;

procedure TfrmCadProduto.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  modulo.qryProdutoIDPRODUTO.asString := modulo.AutoNum('IDPRODUTO','PRODUTO');
end;

end.
