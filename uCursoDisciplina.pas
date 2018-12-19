unit uCursoDisciplina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, JvDBCtrl, UCBase,
  UDm1, rsDBUtils, JvLookup, Mask, DBCtrls;

type
  TfCursoDisciplina = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure JvDBLookupCombo1Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure JvDBLookupCombo1Change(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;   
  end;

var
  fCursoDisciplina: TfCursoDisciplina;

implementation

uses uDisciplina;

{$R *.dfm}

procedure TfCursoDisciplina.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  fdm1.tDisciplina.Open;
end;

procedure TfCursoDisciplina.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tCursoDisciplina.Cancel;
  Close;
end;

procedure TfCursoDisciplina.BitBtn1Click(Sender: TObject);
begin
  if Fdm1.tCursoDisciplinaDISCIPLINA_ID.IsNull then
  begin
    ShowMessage('Selecione a disciplina!');
    JvDBLookupCombo1.SetFocus;
    Exit;
  end;
  Fdm1.tCursoDisciplinaDESCRICAO.AsString := JvDBLookupCombo1.Text;
  fdm1.tCursoDisciplinaCARGA_HORARIA.AsString := fdm1.tDisciplinaCARGA_HORARIA.AsString;
  Fdm1.tCursoDisciplina.Post;
  Fdm1.tCursoDisciplina.ApplyUpdates(0);
  Close;
end;

procedure TfCursoDisciplina.JvDBLookupCombo1Enter(Sender: TObject);
begin
  Fdm1.tDisciplina.IndexFieldNames := 'DESCRICAO';
end;

procedure TfCursoDisciplina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fdm1.tDisciplina.Close;
  Action := caFree;
end;

procedure TfCursoDisciplina.Label3Click(Sender: TObject);
begin
  fDisciplina := TfDisciplina.Create(Self);
  fDisciplina.Dm1 := fdm1;
  fdm1.tDisciplina.Insert;
  fDisciplina.ShowModal;
end;

procedure TfCursoDisciplina.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Fdm1.tCursoDisciplina.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tCursoDisciplina.State in [dsBrowse] then
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

procedure TfCursoDisciplina.JvDBLookupCombo1Change(Sender: TObject);
begin
  Fdm1.tCursoDisciplinaCARGA_HORARIA.AsString := fdm1.tDisciplinaCARGA_HORARIA.AsString;
end;

end.
