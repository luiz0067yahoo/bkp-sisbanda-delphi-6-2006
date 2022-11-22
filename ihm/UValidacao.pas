unit UValidacao;

interface

uses  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids,
  Buttons ;
type
  valida = class
  private
    { Private declarations }
  public
    { Public declarations }
    function texto   (texto : string;minimo,maximo:integer) : boolean;
    function inteiro (texto : string)                       : boolean;
    function moeda   (texto : string)                       : boolean;
    function data    (texto : string)                       : boolean;
  end;

implementation

{ valida }

function valida.data    (texto : string)                          : boolean;
begin
  try
    StrToDate(texto);
    Result:=true;
  except
    Result:=False;
  end;
end;

function valida.inteiro (texto : string)                          : boolean;
begin
  try
    StrToint(texto);
    Result:=true;
  except
    Result:=False;
  end;
end;

function valida.moeda   (texto: string)                           : boolean;
var
  moeda:real;
begin
  try
    moeda:=StrToFloat(texto);
    texto:= floattostrf(moeda,ffFixed,15,2);
    Result:=true;
  except
    ShowMessage('o valor '+ texto+' informado é invalido não é um valor inteiro');
    Result:=False;
  end;
end;

function valida.texto   (texto : string; minimo,maximo : integer) : boolean;
var
 acumulador:boolean;
begin
  if minimo = maximo then
  begin
    if minimo = length(texto) then
      acumulador:=true
    else
    begin
      ShowMessage('o valor '+ texto+' informado é invalido não tem '+inttostr(minimo)+' caracteres');
      acumulador:=false;
    end;
  end
  else if ((minimo < Length(texto)) and (Length(texto) < maximo)) then
    acumulador:=true
  else
  begin
    if (minimo > Length(texto)) then
    begin
      ShowMessage('o valor '+ texto+' informado é invalido tem menos de '+inttostr(minimo)+' caracteres');
      acumulador:=false;
    end
    else if (Length(texto) > maximo) then
      begin
        ShowMessage('o campo '+ texto+' informado é invalido tem mais de '+inttostr(maximo)+' caracteres');
        acumulador:=false;
      end;
  end;
  result:= acumulador;
end;

end.
