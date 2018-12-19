unit uDisciplina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, ComCtrls, UDm1, rsDBUtils;

type
  TfDisciplina = class(TForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Fdm1: Tdm1;
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fDisciplina: TfDisciplina;

implementation


{$R *.dfm}

procedure TfDisciplina.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tDisciplina.Cancel;
  Close;
end;

procedure TfDisciplina.BitBtn1Click(Sender: TObject);
begin
  if Fdm1.tDisciplinaDESCRICAO.IsNull then
  begin
    ShowMessage('Nome deve ser preenchido!');
    Exit;
  end;
  if Fdm1.tDisciplinaSIGLA.IsNull then
  begin
    ShowMessage('Sigla deve ser preenchida!');
    Exit;
  end;
  if Fdm1.tDisciplina.State in [dsInsert] then
    Fdm1.tDisciplinaID.AsInteger := Fdm1.Incrementa('ID','DISCIPLINA');
  Fdm1.tDisciplina.Post;
  Fdm1.tDisciplina.ApplyUpdates(0);
  Close;
end;

procedure TfDisciplina.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Fdm1.tDisciplina.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tDisciplina.State in [dsBrowse] then
                CanClose := True;
             end;
      mrNo: begin
              BitBtn2.Click;
              CanClose := True;
            end;
    end;
  end
  else
    CanClose := True;
end;

procedure TfDisciplina.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfDisciplina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
