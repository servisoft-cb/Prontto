unit uFotoUtils;

interface

uses
  Jpeg,
  Graphics,
  ExtDlgs,
  Classes,
  DB,
  SysUtils,
  ExtCtrls,
  Dialogs,
  Consts;

const
  OffsetMemoryStream: Int64 = 0;

type
  TTipoImagem = (tiBitmap, tiJpeg);

procedure ExibeFoto(DataSet: TDataSet; BlobFieldName: String; ImageExibicao: TImage);
procedure GravaFoto(DataSet: TDataSet; BlobFieldName, FileName: String);
procedure ExcluiFoto(DataSet: TDataSet; BlobFieldName: String);
procedure ExportaFoto(DataSet: TDataSet; BlobFieldName, FileName: String; TipoImagem: TTipoImagem);

var
  MemoryStream: TMemoryStream;
  Jpg: TJpegImage;
  Bitmap: TBitmap;

implementation

procedure ExibeFoto(DataSet: TDataSet; BlobFieldName: String; ImageExibicao :
TImage);
begin
  if not(DataSet.IsEmpty) and not((DataSet.FieldByName(BlobFieldName) as TBlobField).IsNull) then
    try
      MemoryStream := TMemoryStream.Create;
      Jpg := TJpegImage.Create;
      (DataSet.FieldByName(BlobFieldName) as TBlobField).SaveToStream(MemoryStream);
      MemoryStream.Position := OffsetMemoryStream;
      Jpg.LoadFromStream(MemoryStream);
      ImageExibicao.Picture.Assign(Jpg);
    finally
      Jpg.Free;
      MemoryStream.Free;
    end
  else
  // o Else faz com que, caso o campo esteja Null, o TImage seja limpado
    ImageExibicao.Picture := Nil;
end;

procedure GravaFoto(DataSet: TDataSet; BlobFieldName, FileName: String);
var
  ext: string;
begin
  if (DataSet.State in [dsEdit,dsInsert]) then
  begin
    ext := UpperCase(ExtractFileExt(FileName));
    if (ext <> '.BMP') and (ext <> '.JPG') and (ext <> '.JPEG') then begin
      raise EAccessViolation.Create('Formato de imagem não suportado! Formato suportado: Jpeg ou Bitmap');
      Abort;
    end;
    try
      Jpg := TJpegImage.Create;
      MemoryStream := TMemoryStream.Create;
      Bitmap := TBitmap.Create;
      if (ext = '.BMP') then
      begin
        Bitmap.LoadFromFile(FileName);
        Jpg.Assign(Bitmap);
        Jpg.Compress;
      end
      else
        Jpg.LoadFromFile(FileName);
      Jpg.SaveToStream(MemoryStream);
      MemoryStream.Position := OffsetMemoryStream;
      (DataSet.FieldByName(BlobFieldName) as TBlobField).BlobType := ftTypedBinary;
      (DataSet.FieldByName(BlobFieldName) as TBlobField).LoadFromStream(MemoryStream);
    finally
      MemoryStream.Free;
      Bitmap.Free;
      Jpg.Free;
    end;
  end;
end;

procedure ExcluiFoto(DataSet: TDataSet; BlobFieldName: String);
begin
  if (DataSet.State in [dsEdit,dsInsert])
  and not((DataSet.FieldByName(BlobFieldName) as TBlobField).IsNull) then
    (DataSet.FieldByName(BlobFieldName) as TBlobField).Clear;
// para limpar o TImage use
// Image1.Picture := Nil;
end;

procedure ExportaFoto(DataSet: TDataSet; BlobFieldName, FileName: string;
TipoImagem: TTipoImagem);
begin
// SERÁ IMPLEMENTADO FUTURAMENTE
// ME FALTA TEMPO :)
end;

end.
 