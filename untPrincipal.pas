unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Menus,
  Vcl.Imaging.jpeg;

type
  TfrmPrincipal = class(TForm)
    menu: TMainMenu;
    Cadastros1: TMenuItem;
    Cidade1: TMenuItem;
    Cidade2: TMenuItem;
    Produto1: TMenuItem;
    Venda1: TMenuItem;
    Venda2: TMenuItem;
    stsBar: TStatusBar;
    Timer: TTimer;
    Image1: TImage;
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.TimerTimer(Sender: TObject);
begin
    stsBar.Panels[0].Text := DateToStr(Date);
    stsBar.Panels[1].Text := FormatDateTime('hh:mm',Time);
end;

end.
