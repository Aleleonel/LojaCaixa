unit UfrmCadMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadMovimentacao = class(TForm)
    Label1: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBGrid2: TDBGrid;
    Label7: TLabel;
    txtTotaldeProdutos: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadMovimentacao: TfrmCadMovimentacao;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmCadMovimentacao.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
   if Button = nbInsert then
     begin
         DM.tbMovimentacoes.FieldByName('dataHora').Value := Now;
     end;
end;

procedure TfrmCadMovimentacao.FormShow(Sender: TObject);
begin
  DM.calcularTotais;
end;

end.
