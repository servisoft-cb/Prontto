unit uUtil;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ShellAPI;

  function fnc_Retornar_TotalHora(DtInicial, DtFinal, HrInicial, HrFinal: TDateTime): Real;
  function fnc_Montar_Campo(): String;
  function TirarAcento(texto: string): string;

var
  vUsuario2: String;
  vEmail_Fortes, vEmail_Assunto_Fortes: String;
  vEmail_Fortes_Corpo: WideString;
  vRegistro_CSV: String;

implementation

/////////////////////////////////////////////////////////////
///// ABRE O ARQUIVO ESPECIFICADO CONFORME O SEU PADRÃO /////
/////////////////////////////////////////////////////////////
procedure AbreArquivo(arquivo: string);
begin
  if FileExists(arquivo) then
  begin
    arquivo := '"' + arquivo + '"';
      //fonte: http://www.mail-archive.com/delphi-br@yahoogrupos.com.br/msg58385.html
      //declar no uses ShellApi
    ShellExecute(Application.Handle, 'open', PChar(arquivo), nil, nil, SW_SHOWMAXIMIZED);
  end
  else
    ShowMessage('Arquivo não encontrado!');
end;                                         

////////////////////////////////////////////////////////////////////
//////////////////// RETORNAR O TOTAL DE HORAS  ////////////////////
////////////////////////////////////////////////////////////////////
function fnc_Retornar_TotalHora(DtInicial, DtFinal, HrInicial, HrFinal: TDateTime): Real;
var
  vQtdDias: Currency;
  vQtdHoras, vAux: Currency;
  vHrInicioAux: TDateTime;
  vHrAux: TDateTime;
begin
  Result := 0;
  vQtdDias     := DtFinal - DtInicial;
  vQtdHoras    := 0;
  vAux         := 0;
  vHrInicioAux := 0;
  if (HrInicial > HrFinal) or
     (DtInicial <> DtFinal) then
  begin
    vHrInicioAux := StrToTime('23:59');
    vHrAux       := StrToTime('00:01');
    vQtdHoras    := ((vHrInicioAux + vHrAux) - HrInicial) * 24;
    vQtdHoras    := vQtdHoras + (HrFinal * 24);
  end
  else
    vQtdHoras := ((HrFinal - HrInicial) * 24);

  if vQtdDias > 1 then
  begin
    vAux      := 24 * (vQtdDias - 1);
    vQtdHoras := vQtdHoras + vAux;
  end;
  Result := StrToFloat(FormatFloat('0.00',vQtdHoras));
end;

function fnc_Montar_Campo(): String;
var
  i, X : Integer;
  vTexto : String;
begin
  Result := '';
  i      := pos(';',vRegistro_CSV);
  if i = 0 then
    i := Length(vRegistro_CSV) + 1;
  Result := Copy(vRegistro_CSV,1,i-1);
  vTexto := Result;
  Delete(vRegistro_CSV,1,i);
  for x := 1 to Length(vTexto) do
  begin
    if Pos(vTexto[x],'''"') > 0 then
    begin
      vTexto[x] := ' ';
    end;
  end;
  if trim(copy(vTexto,1,1)) = '' then
    Delete(vTexto,1,1);
  if trim(copy(vTexto,Length(vTexto),1)) = '' then
    Delete(vTexto,Length(vTexto),1);

   Result := vTexto;
end;

function TirarAcento(Texto: String): String;
var
  i: Integer;
begin
  Texto := Trim(AnsiUpperCase(Texto));
  for i := 1 to Length(texto) do
  begin
    if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
    begin
      case Texto[i] of
        'Á', 'À', 'Â', 'Ä', 'Ã': Texto[i] := 'A';
        'É', 'È', 'Ê', 'Ë': Texto[i] := 'E';
        'Í', 'Ì', 'Î', 'Ï': Texto[i] := 'I';
        'Ó', 'Ò', 'Ô', 'Ö', 'Õ': Texto[i] := 'O';
        'Ú', 'Ù', 'Û', 'Ü': Texto[i] := 'U';
        'Ç': Texto[i] := 'C';
        'Ñ': Texto[i] := 'N';
      else
        Texto[i] := ' ';
      end;
    end;
  end;
  Texto := StringReplace(Texto, '&', 'e',[rfReplaceAll, rfIgnoreCase]);
  Result := AnsiUpperCase(Texto);
end;

end.

