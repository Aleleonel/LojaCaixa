unit UfrmConsMovimentacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmConsMovimentacoes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    txtDataInicial: TMaskEdit;
    txtDataFinal: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    btConsultar: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    lblTotal: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsMovimentacoes: TfrmConsMovimentacoes;

implementation

{$R *.dfm}

uses UDM;

end.
