unit Escala;

interface

uses
  Classes;


implementation

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure Alerta.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ Alerta }


end.
 