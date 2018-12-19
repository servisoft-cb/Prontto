unit uCustoHomem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, JvLookup, JvDBComb,
  UDm1, rsDBUtils;

type
  TfCustoHomem = class(TForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label12: TLabel;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    JvDBComboBox4: TJvDBComboBox;
    JvDBComboBox1: TJvDBComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fCustoHomem: TfCustoHomem;

implementation


{$R *.dfm}

procedure TfCustoHomem.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tCustoHomem.Cancel;
  Close;
end;

procedure TfCustoHomem.BitBtn1Click(Sender: TObject);
begin
  if Fdm1.tCustoHomemNOME.IsNull then
  begin
    ShowMessage('Nome deve ser preenchido!');
    Exit;
  end;
  if (Fdm1.tCustoHomemVALOR.IsNull) or (Fdm1.tCustoHomemVALOR.AsCurrency < 0.01) then
  begin
    ShowMessage('Valor deve ser preenchido!');
    Exit;
  end;
  if Fdm1.tCustoHomem.State in [dsInsert] then
  begin
    Fdm1.qInc.Close;
    Fdm1.qInc.SQL.Clear;
    Fdm1.qInc.SQL.Add('SELECT MAX(ID) ULT FROM CUSTO_HOMEM');
    Fdm1.qInc.Open;
    Fdm1.tCustoHomemID.AsInteger := Fdm1.qInc.fieldByName('ULT').AsInteger + 1;
    Fdm1.qInc.Close;
  end;
  if Fdm1.tCustoHomem.State in [dsInsert,dsEdit] then
  begin
    Fdm1.tCustoHomem.Post;
    Fdm1.tCustoHomem.ApplyUpdates(0);
  end;
  Close;
end;

procedure TfCustoHomem.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tCustoHomem.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tCustoHomem.State in [dsBrowse] then
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

procedure TfCustoHomem.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
