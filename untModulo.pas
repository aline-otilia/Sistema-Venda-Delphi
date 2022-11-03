unit untModulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  Tmodulo = class(TDataModule)
    conexao: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    qryCidade: TFDQuery;
    qryCidadeIDCIDADE: TIntegerField;
    qryCidadeNOMECIDADE: TStringField;
    qryCidadeSIGLAESTADO: TStringField;
    qryAutoNum: TFDQuery;
    qryProduto: TFDQuery;
    qryProdutoIDPRODUTO: TIntegerField;
    qryProdutoDESCRPRODUTO: TStringField;
    qryProdutoVALORPRODUTO: TBCDField;
    qryProdutoQTDEPRODUTO: TIntegerField;
    qryCliente: TFDQuery;
    qryClienteIDCLIENTE: TIntegerField;
    qryClienteNOMECLIENTE: TStringField;
    qryClienteENDERCLIENTE: TStringField;
    qryClienteCPFCLIENTE: TStringField;
    qryClienteFONECLIENTE: TStringField;
    qryClienteIDCIDADE: TIntegerField;
    qryClienteNOMECIDADE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    function AutoNum(id,tabela:string):string;
  end;

var
  modulo: Tmodulo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ Tmodulo }

function Tmodulo.AutoNum(id, tabela: string): string;
var vSQL:string;
begin
     vSQL := '';
     qryAutoNum.Close;

     vSQL := 'SELECT MAX('+ id + ') + 1 FROM '+ tabela;
     qryAutoNum.SQL.CommaText := vSQL;
     qryAutoNum.Open;

     if qryAutoNum.Fields[0].AsString = '' then
     AutoNum := '1'
     else
     AutoNum := qryAutoNum.fields[0].AsString;

end;

end.
