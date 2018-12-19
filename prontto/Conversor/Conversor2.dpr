program Conversor2;

uses
  Forms,
  uConv1 in 'uConv1.pas' {Form1},
  uDmProntto in 'uDmProntto.pas' {dmProntto: TDataModule},
  uDmFacil in 'uDmFacil.pas' {dmFacil: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdmProntto, dmProntto);
  Application.CreateForm(TdmFacil, dmFacil);
  Application.Run;
end.
