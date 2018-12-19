unit uPessoaAnamnese;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, JvLookup, UDm1, rsDBUtils;

type
  TfPessoaAnamnese = class(TForm)
    Label3: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    JvDBLookupCombo1: TJvDBLookupCombo;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fPessoaAnamnese: TfPessoaAnamnese;

implementation


{$R *.dfm}

procedure TfPessoaAnamnese.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tAnamnese.Cancel;
  Close;
end;

procedure TfPessoaAnamnese.BitBtn1Click(Sender: TObject);
begin
  if Fdm1.tPessoaAnamneseANAMNESE_ID.IsNull then
  begin
    ShowMessage('Anamnese deve ser preenchida!');
    Exit;
  end;
  if Fdm1.tPessoaAnamnese.State in [dsInsert] then
    Fdm1.tPessoaAnamnesePESSOA_ID.AsInteger := Fdm1.tPessoaID.AsInteger;
  Fdm1.tPessoaAnamneseNOME.AsString := JvDBLookupCombo1.Text;
  Fdm1.tPessoaAnamnese.Post;
  Fdm1.tPessoaAnamnese.ApplyUpdates(0);
  Close;
end;

procedure TfPessoaAnamnese.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tPessoaAnamnese.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tPessoaAnamnese.State in [dsBrowse] then
                CanClose := True;
             end;
      mrNo: begin
              BitBtn2.Click;
              CanClose := true;
            end;
    end;
  end
  else
    CanClose := True;
end;

procedure TfPessoaAnamnese.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tAnamnese.Close;
end;

procedure TfPessoaAnamnese.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  Fdm1.tAnamnese.Open;
end;

end.
