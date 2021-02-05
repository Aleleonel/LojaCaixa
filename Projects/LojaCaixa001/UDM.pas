unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Vcl.Dialogs;

type
  TDM = class(TDataModule)
    conexao: TFDConnection;
    tbProdutos: TFDTable;
    dsProdutos: TDataSource;
    tbMovimentacoes: TFDTable;
    dsMovimentacoes: TDataSource;
    tbMovProdutos: TFDTable;
    dsMovProdutos: TDataSource;
    sqlAumentaEstoque: TFDCommand;
    sqlDiminuiEstoque: TFDCommand;
    sqlMovimentacoes: TFDQuery;
    dsSqlMovimentacoes: TDataSource;
    tbProdutosid: TFDAutoIncField;
    tbProdutosnome: TStringField;
    tbProdutosfabricante: TStringField;
    tbProdutosvalidade: TDateField;
    tbProdutosestoqueAtual: TIntegerField;
    tbMovProdutosid: TFDAutoIncField;
    tbMovProdutosidmovimentacao: TIntegerField;
    tbMovProdutosidproduto: TIntegerField;
    tbMovProdutosqtd: TIntegerField;
    tbMovProdutosnomeProduto: TStringField;
    procedure tbMovProdutosAfterPost(DataSet: TDataSet);
    procedure tbMovProdutosAfterDelete(DataSet: TDataSet);
    procedure calcularTotais;
    procedure tbMovimentacoesAfterScroll(DataSet: TDataSet);
    procedure tbMovProdutosBeforeDelete(DataSet: TDataSet);
    procedure tbMovimentacoesBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UfrmCadMovimentacao;

{$R *.dfm}

procedure TDM.calcularTotais;
var
  totais : Integer;

begin
  if tbMovProdutos.State in [dsBrowse] then
    begin
      tbMovProdutos.First;
      while not tbMovProdutos.Eof do
        begin
            totais := totais + tbMovProdutos.FieldByName('qtd').Value;
            tbMovProdutos.Next;
        end;
          frmCadMovimentacao.txtTotaldeProdutos.Caption := IntToStr(totais);
    end;
end;

procedure TDM.tbMovimentacoesAfterScroll(DataSet: TDataSet);
begin
  calcularTotais;
end;

procedure TDM.tbMovimentacoesBeforeDelete(DataSet: TDataSet);
begin
  if tbMovProdutos.RecordCount > 0 then
    begin
      ShowMessage('Existem produtos cadastrados nessa movimenta��o. Por favor Exclua-os primeiro!');
      Abort;
    end;


end;

procedure TDM.tbMovProdutosAfterDelete(DataSet: TDataSet);
begin
  calcularTotais;
end;

procedure TDM.tbMovProdutosAfterPost(DataSet: TDataSet);
begin
  calcularTotais;

  if (tbMovimentacoes.FieldByName('tipo').Value = 'Entrada em Estoque') then
    begin
      sqlAumentaEstoque.ParamByName('pId').Value := tbMovProdutos.FieldByName('idProduto').Value;
      sqlAumentaEstoque.ParamByName('pQtd').Value := tbMovProdutos.FieldByName('qtd').Value;
      sqlAumentaEstoque.Execute;
    end;

  if (tbMovimentacoes.FieldByName('tipo').Value = 'Sa�da do Estoque') then
    begin
      sqlDiminuiEstoque.ParamByName('pId').Value := tbMovProdutos.FieldByName('idProduto').Value;
      sqlDiminuiEstoque.ParamByName('pQtd').Value := tbMovProdutos.FieldByName('qtd').Value;
      sqlDiminuiEstoque.Execute;

    end;

end;

procedure TDM.tbMovProdutosBeforeDelete(DataSet: TDataSet);
begin
  if (tbMovimentacoes.FieldByName('tipo').Value = 'Entrada em Estoque') then
      begin
        sqlDiminuiEstoque.ParamByName('pId').Value := tbMovProdutos.FieldByName('idProduto').Value;
        sqlDiminuiEstoque.ParamByName('pQtd').Value := tbMovProdutos.FieldByName('qtd').Value;
        sqlDiminuiEstoque.Execute;
      end;

    if (tbMovimentacoes.FieldByName('tipo').Value = 'Sa�da do Estoque') then
      begin
        sqlAumentaEstoque.ParamByName('pId').Value := tbMovProdutos.FieldByName('idProduto').Value;
        sqlAumentaEstoque.ParamByName('pQtd').Value := tbMovProdutos.FieldByName('qtd').Value;
        sqlAumentaEstoque.Execute;

      end;
end;

end.
