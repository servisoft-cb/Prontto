unit uCelular;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls,
  uDmCelular, RxDBComb;

type
  TfCelular = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    btSalvar: TBitBtn;
    btCancelar: TBitBtn;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmCelular: TDmCelular;
  end;

var
  fCelular: TfCelular;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfCelular.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfCelular.btSalvarClick(Sender: TObject);
begin
  fDmCelular.cdsCelular.Post;
  fDmCelular.cdsCelular.ApplyUpdates(0);
  Close;
end;

procedure TfCelular.btCancelarClick(Sender: TObject);
begin
  fDmCelular.cdsCelular.Cancel;
  Close;
end;

procedure TfCelular.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmCelular);
end;

end.
