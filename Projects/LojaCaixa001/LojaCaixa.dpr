program LojaCaixa;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  UfrmCadProdutos in 'UfrmCadProdutos.pas' {frmCadProdutos},
  UfrmCadMovimentacao in 'UfrmCadMovimentacao.pas' {frmCadMovimentacao},
  UfrmConsMovimentacoes in 'UfrmConsMovimentacoes.pas' {frmConsMovimentacoes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadProdutos, frmCadProdutos);
  Application.CreateForm(TfrmCadMovimentacao, frmCadMovimentacao);
  Application.CreateForm(TfrmConsMovimentacoes, frmConsMovimentacoes);
  Application.Run;
end.
