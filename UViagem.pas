unit uViagem;

interface

uses Uvalidacao,SysUtils, Classes,udeslocamento;

type
  Viagem = class
  private
    { Private declarations }
    IdViagem        :  Integer;
    tDeslocamento  : deslocamento;
    Data            : TDateTime;
  public
    { Public declarations }
    function setIdViagem(IdViagem:string): Boolean;
    function setIdDeslocamento(IdDeslocamento:string): Boolean;
    function setData(Data:string): Boolean;


    function getIdViagem       :Integer;
    function getIdDeslocamento   :Deslocamento;
    function getdata    :TDateTime;
  end;

var
  validar:valida;
implementation

{ Viagem }

function Viagem.getdata: TDateTime;
begin
  result:=Data;
end;

function Viagem.getIdDeslocamento: Deslocamento;
begin
  result:=tDeslocamento;
end;

function Viagem.getIdViagem: Integer;
begin
  result:=IdViagem;
end;

function Viagem.setData(Data: String): Boolean;
begin
  if validar.data(Data) then
  begin
    Self.Data:=StrToDate(Data);
    result:=true;
  end
  else
    result:=False;
end;

function Viagem.setIdDeslocamento(IdDeslocamento: string): Boolean;
begin
end;


function Viagem.setIdViagem(IdViagem: string): Boolean;
begin
  if validar.inteiro(IdViagem) then
  begin
    Self.IdViagem:=StrToInt(IdViagem);
    result:=true;
  end
  else
    result:=false;
end;


End.
