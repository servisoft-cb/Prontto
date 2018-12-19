{
Exemplo de uso:
  with TSendMail.Create(Self) do
    try
      Subject:='Hello World!';
      Body   :='E aí?';
      Recipients.Add('fulano1@dominio1.com.br');
      Recipients.Add('CC:fulano2@dominio2.com.br');
      Attachments.Add('LivroCaixa.pdf');
      EditDialog:=true;
      Send;
    finally
      Free;
    end;
}
unit SendMail;

interface

uses
  Classes, Dialogs, RzSndMsg, JvMail;

  //, , , , , , , , Forms, , xmldom, XMLIntf, msxmldom, XMLDoc,
  //StdCtrls, oxmldom, Buttons, Mask, ToolEdit, DB, DBClient, IdIOHandler, IdIOHandlerSocket, IdBaseComponent, IdComponent, URelCCe,
  //IdTCPConnection, IdTCPClient, RzButton, RzSndMsg, RzTabs, ExtCtrls, IdCoder, IdCoder3to4, IdCoderMIME, IdSSLOpenSSL, IdMessageClient,
  //IdSMTP, IdMessage, JvComponent, JvMail, , , RLMetaFile, DBTables, UDMCadNotaFiscal, UCBase, UDMCadNFe_Inutilizacao, UDMNFe,
  //UDMRel;

type
  TSendMail=class(TComponent)
  private
    { Private declarations }
    fLastError: integer;
    fSubject: string;
    fBody: string;
    fSenderName: string;
    fSenderAddress: string;
    fRecipients: TStrings;
    fAttachments: TStrings;
    fEditDialog: boolean;
    //
    procedure SetRecipients(Value:TStrings);
    procedure SetAttachments(Value:TStrings);
  protected
    { Protected declarations }
  public
    { Public declarations }
    vTipo_Email: String;
    constructor Create(aOwner:TComponent); override;
    destructor  Destroy; override;
    //
    function Send:boolean;
    property LastError:integer read fLastError;
  published
    { Published declarations }
    property Subject: string read fSubject write fSubject;
    property Body: string read fBody write fBody;

    property Recipients: TStrings read fRecipients write SetRecipients;
    property Attachments: TStrings read fAttachments write SetAttachments;

    property EditDialog: boolean read fEditDialog write fEditDialog;

    property SenderName: string read fSenderName write fSenderName;
    property SenderAddress: string read fSenderAddress write fSenderAddress;
  end;

function SendEMailByMAPI(const SenderName,SenderAddress,Subject,Body:string; Recipients,Attachments:TStrings; WithOpenMessage:boolean):integer;
function SendEMailByMAPI2(const SenderName,SenderAddress,Subject,Body:string; Recipients,Attachments:TStrings; WithOpenMessage:boolean):integer;

implementation

uses
  MAPI, SysUtils, Forms, uUtil;

function SendEMailByMAPI(const SenderName,SenderAddress,Subject,Body:string; Recipients,Attachments:TStrings; WithOpenMessage:boolean):integer;
var
  Msg: TRzSendMessage;

begin
  Msg := TRzSendMessage.Create(nil);
  try
    Msg.Attachments.Assign( Attachments );
    Msg.ToRecipients.Assign( Recipients );
    Msg.Subject := Subject;
    Msg.MessageText.Text := Body;
    Msg.Review := WithOpenMessage;
    Msg.Send;
  finally
    FreeAndNil(Msg);
  end;
end;

function SendEMailByMAPI2(const SenderName,SenderAddress,Subject,Body:string; Recipients,Attachments:TStrings; WithOpenMessage:boolean):integer;
const
	olMailItem = 0;
var
  Email: String;
  vNomeArquivo: String;
  JvMail1: TJvMail;
begin
  try
    JvMail1 := TJvMail.Create(nil);

    JvMail1.Clear;
    JvMail1.Attachment.Clear;
    JvMail1.Recipient.AddRecip(vEmail_Fortes);

    vNomeArquivo := Attachments[0];
    JvMail1.Subject := Subject;
    JvMail1.Attachment.Clear;
    JvMail1.Attachment.Add(vNomeArquivo);
    JvMail1.Body.Clear;
    JvMail1.Body.Add(Body);
    JvMail1.Body.Add('');

    //*************
    JvMail1.Body.Add('');
    JvMail1.SendMail(True);
  finally
    FreeAndNil(JvMail1);
  end;
end;

{ TSendMail }

constructor TSendMail.Create(aOwner:TComponent);
begin
  inherited;
  EditDialog  := True;
  fRecipients := TStringList.Create;
  fAttachments:= TStringList.Create;
end;

destructor TSendMail.Destroy;
begin
  fRecipients.free;
  Attachments.free;
  inherited;
end;

procedure TSendMail.SetRecipients(Value:TStrings);
begin
  fRecipients.Assign(Value);
end;

procedure TSendMail.SetAttachments(Value:TStrings);
begin
  Attachments.Assign(Value);
end;

function TSendMail.Send:boolean;
begin
  if vTipo_Email = '1' then
    fLastError:=SendEMailByMAPI2(SenderName,SenderAddress,Subject,Body,Recipients,Attachments,EditDialog)
  else
    fLastError:=SendEMailByMAPI(SenderName,SenderAddress,Subject,Body,Recipients,Attachments,EditDialog);
  result :=(LastError=SUCCESS_SUCCESS);
end;

end.

