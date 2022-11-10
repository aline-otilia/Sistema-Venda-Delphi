unit untCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.MaskUtils,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadCliente = class(TfrmPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    dbeCPF: TDBEdit;
    Label5: TLabel;
    dbeFone: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    dblCidade: TDBLookupComboBox;
    procedure btnAdicionarClick(Sender: TObject);
    procedure dbeCPFEnter(Sender: TObject);
    procedure dbeFoneEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation
{$R *.dfm}

uses untModulo, untPesCliente;

{ TfrmCadCliente }

procedure TfrmCadCliente.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  modulo.qryClienteIDCLIENTE.AsString := modulo.AutoNum('IDCLIENTE','CLIENTE')
end;

procedure TfrmCadCliente.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesCliente,frmPesCliente);
  frmPesCliente.Show;
end;

procedure TfrmCadCliente.dbeCPFEnter(Sender: TObject);
begin
  inherited;
modulo.qryClienteCPFCLIENTE.EditMask:= '999.999.999-99;0;_';
end;

procedure TfrmCadCliente.dbeFoneEnter(Sender: TObject);
begin
  inherited;
  modulo.qryClienteFONECLIENTE.EditMask:= '(99)99999-9999;0;_';
end;

procedure TfrmCadCliente.FormCreate(Sender: TObject);
begin
  inherited;
  modulo.qryCidade.Open;
end;

procedure TfrmCadCliente.FormDestroy(Sender: TObject);
begin
  inherited;
  modulo.qryCidade.Open;
end;

end.
