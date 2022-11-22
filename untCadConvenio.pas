unit untCadConvenio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadConvenio = class(TfrmPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure btnAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadConvenio: TfrmCadConvenio;

implementation

{$R *.dfm}

uses untModulo, untPesConvenio;

procedure TfrmCadConvenio.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  modulo.qryConvenioIDCONVENIO.asString := modulo.AutoNum('IDCONVENIO','CONVENIO');
end;

procedure TfrmCadConvenio.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesConvenio, frmPesConvenio);
  frmPesConvenio.Show();
end;

procedure TfrmCadConvenio.FormCreate(Sender: TObject);
begin
  inherited;
  modulo.qryCliente.Open;
end;

procedure TfrmCadConvenio.FormDestroy(Sender: TObject);
begin
  inherited;
  modulo.qryCliente.Open;
end;

end.
