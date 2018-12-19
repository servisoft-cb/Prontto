unit uViatura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls,
  uDmViatura, RxDBComb;

type
  TfViatura = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    btSalvar: TBitBtn;
    btCancelar: TBitBtn;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
    fDmViatura: TDmViatura;
  end;

var
  fViatura: TfViatura;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfViatura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfViatura.btSalvarClick(Sender: TObject);
begin
  fDmViatura.cdsViatura.Post;
  fDmViatura.cdsViatura.ApplyUpdates(0);
  Close;
end;

procedure TfViatura.btCancelarClick(Sender: TObject);
begin
  fDmViatura.cdsViatura.Cancel;
  Close;
end;

procedure TfViatura.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmViatura);
end;

end.
