unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Cadastros1: TMenuItem;
    Produtos1: TMenuItem;
    Movimentaes1: TMenuItem;
    GerenciarMovimentaes1: TMenuItem;
    ConsultarMovimentaes1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure GerenciarMovimentaes1Click(Sender: TObject);
    procedure ConsultarMovimentaes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UfrmCadProdutos, UfrmCadMovimentacao, UfrmConsMovimentacoes;

procedure TfrmPrincipal.ConsultarMovimentaes1Click(Sender: TObject);
begin
  frmConsMovimentacoes.ShowModal;
end;

procedure TfrmPrincipal.GerenciarMovimentaes1Click(Sender: TObject);
begin
  frmCadMovimentacao.ShowModal;
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
  frmCadProdutos.ShowModal;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
