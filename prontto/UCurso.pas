unit UCurso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, RzPanel, RzTabs, StdCtrls,
  JvEdit, JvTypedEdit, JvLookup, Mask, JvToolEdit, Grids, DBGrids, SMDBGrid, Buttons, AngleLbl, JvDBCtrl, DBCtrls, Menus,
  RzDBGrid, JvDBComb, VerificaCPF, VerificaCGC, DB, JvCombobox, UDM1, rsDBUtils, ComCtrls;

type
  TfCurso = class(TForm)
    Panel2: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DBEdit1: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    Label3: TLabel;
    Label1: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    Label2: TLabel;
    JvDBComboBox2: TJvDBComboBox;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    JvDBComboBox3: TJvDBComboBox;
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    Fdm1: Tdm1;
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;   
  end;

var
  fCurso: TfCurso;

implementation

uses uCursoDisciplina, uCursoC;

{$R *.dfm}

procedure TfCurso.BitBtn6Click(Sender: TObject);
begin
  if fDM1.tCurso.State in [dsInsert, dsEdit] then
    fDM1.tCurso.CancelUpdates;
  Close;
end;

procedure TfCurso.BitBtn5Click(Sender: TObject);
begin
  if (fdm1.tCursoTIPO.AsString = 'R') and (fdm1.tCursoRECICLAGEM_COD.IsNull) then
  begin
    ShowMessage('Preencha o tipo de reciclagem!');
    JvDBComboBox2.SetFocus;
    Exit;
  end;
  fDM1.Gravar_Curso;
  Close;
end;

procedure TfCurso.BitBtn1Click(Sender: TObject);
begin
  fCursoDisciplina := TfCursoDisciplina.Create(Self);
  fCursoDisciplina.Dm1 := fDm1;
  Fdm1.tCursoDisciplina.Insert;
  Fdm1.tCursoDisciplinaCURSO_ID.AsInteger := fdm1.tCursoID.AsInteger;
  fCursoDisciplina.ShowModal;
end;

procedure TfCurso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fdm1.tCursoDisciplina.Close;
end;

procedure TfCurso.FormShow(Sender: TObject);
begin
  fdm1.tCursoDisciplina.Close;
  fdm1.CursoDisciplina.ParamByName('C1').AsInteger := Fdm1.tCursoID.AsInteger;
  fdm1.tCursoDisciplina.Open;
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfCurso.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tCurso.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn5.Click;
              if Fdm1.tCurso.State in [dsBrowse] then
                CanClose := True;
             end;
      mrNo: begin
              BitBtn6.Click;
              CanClose := True;
            end;
    end;
  end
  else
    CanClose := True;
end;

procedure TfCurso.BitBtn2Click(Sender: TObject);
begin
  if not Fdm1.tCursoDisciplina.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      fDM1.tCursoDisciplina.Delete;
      Fdm1.tCursoDisciplina.ApplyUpdates(0);
    end;
end;

end.
