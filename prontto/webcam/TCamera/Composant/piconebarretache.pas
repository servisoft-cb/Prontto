unit PiconeBarreTache;
//http://perso.wanadoo.fr/bardou/michel/

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  iniFiles, Menus, extctrls, ShellAPI;


Const WM_MYMESSAGE=WM_USER+100; // numéro de message utilisé plus bas.

type

  // Seul un objet possédant un Handle peut recevoir les messages souris lorsque l'on
  // passe ou clique sur l'icone (affichage du Hint ou du menu pop)
  // C'est le cas d'un TWinControl mais pas d'un TComponent
  // On aurait pu dériver TPiconeBarreTache directement d'un TWinControl
  // et ainsi bénéficier par héritage d'un Handle
  // mais lorsque l'on pose le composant sur la fiche, un twinControl ne se voit pas (ou presque)
  // C'est le Handle de PourHandle de type TPourHandle qui sera donné à Windows comme devant recevoir les messages
  // ainsi, A chaque fois que Windows aura un message à emettre causé par le passage de la souris
  // au dessus de l'icone ou par un clique de souris sur l'icone, la procédure TrayMessage sera ainsi déclenchée.

  TPourHandle =class(TWinControl)
  private
    procedure TrayMessage(var Msg: TMessage); message WM_MYMESSAGE;
    // cette procédure sera déclenché à chaque fois que Windows envera un message de type WM_MYMESSAGE
  end;

  TPiconeBarreTache = class(TComponent)
  private
    FTPopupMenu: TPopupMenu;
    FReduireSiFin: Boolean;
    FGrandeIconeVisible: Boolean;
    FPetiteIconeVisible: Boolean;
    FApplicationCachee: Boolean;
    FIcone: TIcon;
    FHint: string;
    NotifyStruc : TNotifyIconData; // "structure" de l'icône
    PourHandle:TPourHandle;// composant de type TWinControl uniquement pour se servir de son Handle
    PetiteIconeAffichee:Boolean;// indique en permanence si la petite icone est affichée
    DejaLoaded:Boolean;//indique si on est déjà passé dan sla procedure loaded
    procedure TPopupMenu(const Value: TPopupMenu);
    procedure SetReduireSiFin(const Value: Boolean);
    procedure SetGrandeIconeVisible(const Value: Boolean);
    procedure SetPetiteIconeVisible(const Value: Boolean);
    procedure SetApplicationCachee(const Value: Boolean);
    procedure SetIcone(const Value: TIcon);
    procedure SetHint(const Value: string);
  protected
    FormAOwner:TForm;
    FormOldClose:TCloseEvent;
    ApplicationOldActivate:TNotifyEvent;
    procedure LaFormClose(Sender: TObject; var Action: TCloseAction);
    procedure ApplicationActivate(Sender: TObject);
    procedure loaded; override;
  public
     Constructor Create(AOwner:TComponent); override;
     destructor destroy; override;
  published
    Property MenuPop:TPopupMenu read FTPopupMenu write TPopupMenu;
    Property ReduireSiFin:Boolean read FReduireSiFin write SetReduireSiFin;
    Property PetiteIconeVisible:Boolean read FPetiteIconeVisible write SetPetiteIconeVisible;
    Property GrandeIconeVisible:Boolean read FGrandeIconeVisible write SetGrandeIconeVisible;
    Property ApplicationCachee:Boolean read FApplicationCachee write SetApplicationCachee;
    Property Icone: TIcon read FIcone write SetIcone;
    Property Hint: string read FHint write SetHint;
  end;

procedure Register;

implementation

Constructor TPiconeBarreTache.Create(AOwner:TComponent);
begin
  FIcone:=TIcon.create;
  PourHandle:=TPourHandle.Create(self);
  PourHandle.Parent:=TWinControl(AOwner); // en réalité AOwner est la fiche sur laquelle on a posé le composant.
  PetiteIconeAffichee:=false;
  DejaLoaded:=false;
  Inherited;
  if (csDesigning in ComponentState) then // si on est en mode conception
  begin
    FReduireSiFin:=False;
    PetiteIconeVisible:=True;
    GrandeIconeVisible:=True;
    ApplicationCachee:=False;
  end
  else //si on est pas en mode conception
  begin
    FIcone.Assign(Application.Icon);
    FormAOwner:=TForm(AOwner);// la forme propriétaire de notre composant
    FormOldClose          :=FormAOwner.OnClose; //on mémorise le OnClose d'origine de façon à pouvoir le déclencher lorsqu'on le désirera
    FormAOwner.OnClose    :=LaFormClose; // on redirige l'événement OnClose vers LaFormShow
    ApplicationOldActivate:= Application.OnActivate;// on mémorise le OnActivate d'origine
    Application.OnActivate:=ApplicationActivate;// on redirige l'événement OnActivate de l'application
  end;
end;


procedure TPiconeBarreTache.loaded;
//loaded est appelée automatiquement par Delphi lorsque tous les créate ont eu lieu
begin
  inherited;
  if not(csDesigning in ComponentState) then // si on est pas en mode conception
  begin
    notifyStruc.cbSize:=SizeOf(notifyStruc);
    notifyStruc.Wnd:=PourHandle.Handle;
    notifyStruc.uID:=1;
    NotifyStruc.uFlags := NIF_ICON or NIF_TIP or NIF_MESSAGE;
    NotifyStruc.uCallbackMessage := WM_MYMESSAGE;
    // choix de l'icone à afficher
    NotifyStruc.hIcon :=Ficone.Handle;
    DejaLoaded:=true;
    if PetiteIconeVisible then
    begin
      Shell_NotifyIcon(NIM_ADD,@NotifyStruc);//ajoute la petite icône dans la barre des taches
      PetiteIconeAffichee:=true;
    end;
  end;
end;


procedure TPiconeBarreTache.ApplicationActivate(Sender: TObject);
{on a redirigé l'évènement application.onActivate vers cette procédure    }
{ car le ShowWindow ci dessous ne peut être fait dans le loaded (trop tot)}
begin
  if not(csDesigning in ComponentState) then // si on est en mode exécution
  begin
    if assigned(ApplicationOldActivate)then ApplicationOldActivate(Sender);
    if not FGrandeIconeVisible then  ShowWindow(Application.Handle, SW_HIDE); // retirer la grande icône de la barre des tâches
  end;    
end;


Destructor TPiconeBarreTache.Destroy;
begin
  if PetiteIconeAffichee then
  begin
    Shell_NotifyIcon(NIM_DELETE,@NotifyStruc);//retire la petite icône de la barre des taches;
    PetiteIconeAffichee:=false;
  end;
  FIcone.Free;
  FIcone:=nil;
  // on ne met pas de PourHandle.free car son Owner est la fiche sur laquelle le composant est placé.
  // ainsi, PourHandle sera détruit lorsque la fiche le sera.
  Inherited ;
end;




procedure TPiconeBarreTache.LaFormClose(Sender: TObject; var Action: TCloseAction);
begin
  if assigned(FormOldClose)then FormOldClose(Sender,Action);
  if ReduireSiFin then
  begin
    ShowWindow(Application.Handle, SW_HIDE); // retirer la grande icône de la barre des tâches
    FormAOwner.Visible:=false; //cacher la fiche
    Action:=caNone;
  end;
end;



procedure TPourHandle.TrayMessage(var Msg: TMessage);// message WM_MYMESSAGE;
// cette procédure est déclenché à chaque fois que la souris est sur l'icone ou à chaque fois que l'on clique sur l'icone
var
  coordonnes_souris :TPoint;
begin
  //Bouton droit pressé
  if (Msg.LParam=WM_RBUTTONDOWN) then
  begin
    GetCursorPos(coordonnes_souris);//récupération de la position de la souris
    if Assigned(TPiconeBarreTache(Owner).MenuPop) then
          TPiconeBarreTache(Owner).MenuPop.Popup(coordonnes_souris.x,coordonnes_souris.y); //affichage du menu  }
  end;
  if (Msg.LParam=WM_LBUTTONDOWN) then { Bouton gauche }
  begin
    Application.MainForm.Visible:=true;
    ShowWindow(Application.Handle, SW_SHOW);
  end;
end;

procedure TPiconeBarreTache.TPopupMenu(const Value: TPopupMenu);
begin
  FTPopupMenu := Value;
end;

procedure TPiconeBarreTache.SetReduireSiFin(const Value: Boolean);
begin
  FReduireSiFin := Value;
end;

procedure TPiconeBarreTache.SetGrandeIconeVisible(const Value: Boolean);
begin
  FGrandeIconeVisible := Value;
  if not(csDesigning in ComponentState) then // si on est en mode execution
  begin
    if FGrandeIconeVisible then  ShowWindow(Application.Handle, SW_SHOW)// affiche la grande icone de la barre des taches
    else  ShowWindow(Application.Handle, SW_HIDE); // retirer la grande icône de la barre des tâches
  end;
end;

procedure TPiconeBarreTache.SetPetiteIconeVisible(const Value: Boolean);
begin
  if FPetiteIconeVisible<>Value then // si ça a changé
  begin
    FPetiteIconeVisible := Value;
    if not(csDesigning in ComponentState)and DejaLoaded then // si on est en mode execution
    begin
      if  FPetiteIconeVisible and not PetiteIconeAffichee then
      begin
        notifyStruc.cbSize:=SizeOf(notifyStruc);
        notifyStruc.Wnd:=PourHandle.Handle;
        notifyStruc.uID:=1;
        NotifyStruc.uFlags := NIF_ICON or NIF_TIP or NIF_MESSAGE;
        NotifyStruc.uCallbackMessage := WM_MYMESSAGE;
        NotifyStruc.hIcon :=  FIcone.Handle;
        Shell_NotifyIcon(NIM_ADD,@NotifyStruc);//ajoute la petite icône dans la barre des taches
        PetiteIconeAffichee:=true;
      end
      else
      begin
        if PetiteIconeAffichee then Shell_NotifyIcon(NIM_DELETE,@NotifyStruc);
        PetiteIconeAffichee:=false;
      end;
    end;//fin si on est en mode exécution
  end; // fin si ça a changé
end;

procedure TPiconeBarreTache.SetApplicationCachee(const Value: Boolean);
begin
  FApplicationCachee := Value;
// si on est en mode execution
  if not(csDesigning in ComponentState) then
  begin
    if FApplicationCachee then
      if Application.MainForm<>nil then Application.MainForm.Visible:=false
         else Application.ShowMainForm :=false
    else
      if Application.MainForm<>nil then Application.MainForm.Visible:=true;
  end;
// partie valable aussi bien en mode conception qu'en mode exécution :
end;  

procedure TPiconeBarreTache.SetIcone(const Value: TIcon);
begin
  FIcone.Assign(Value);
 if not(csDesigning in ComponentState) then // si on est en mode execution
  begin
    if assigned(Ficone) then NotifyStruc.hIcon :=Ficone.Handle
      else NotifyStruc.hIcon :=application.Icon.Handle;
    if PetiteIconeAffichee then Shell_NotifyIcon(NIM_MODIFY,@NotifyStruc);
  end;
end;

procedure TPiconeBarreTache.SetHint(const Value: string);
var j:integer;
begin
  FHint := Value;
 if not(csDesigning in ComponentState) then // si on est en mode execution
 begin
    for j:=0 to length(FHint)-1 do NotifyStruc.szTip[j] := FHint[j+1];
    NotifyStruc.szTip[length(FHint)]:=#0;
    if PetiteIconeAffichee then Shell_NotifyIcon(NIM_MODIFY,@NotifyStruc);
 end;
end;

procedure Register;
begin
  RegisterComponents('Perso', [TPiconeBarreTache]);
end;



end.
