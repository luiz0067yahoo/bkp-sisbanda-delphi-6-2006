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
    function texto   (campo,texto : string;minimo,maximo:integer)                : boolean;
    function inteiro (campo,texto : string)                                      : boolean; overload;
    function inteiro (campo,texto : string;valor:integer;minimo_maximo:boolean)  : boolean; overload;
    function moeda   (campo,texto : string)                                      : boolean;
    function data    (campo,texto : string)                                      : boolean;
  end;

implementation

{ valida }

function valida.data    (campo,texto : string)                          : boolean;
var
  acumulador : boolean;
begin
  acumulador:=true;
  try
    StrToDate(texto);
    MessageDlg('O Valor '+QuotedStr(texto)+' é inválido'+#13+
               'Por favor preencha o '+QuotedStr(campo)+' com Datas válidas',
               mtError,mbOKCancel,1);
  except
    acumulador:=False;
  end;
    result:=acumulador;
end;


function valida.inteiro(campo,texto: string; valor: integer;
  minimo_maximo: boolean): boolean;

 var
  resultado:boolean;
  numero:integer;
begin
  resultado:=true;

  try
    begin
      numero:=strtoint(texto);
      if minimo_maximo then
      begin
        if (StrToInt(texto)) < valor then
        begin
          MessageDlg('O Valor '+QuotedStr(texto)+' é inválido'+#13+
                     'Por favor preencha o '+QuotedStr(campo)+' com numeros maiores que '+QuotedStr(IntToStr(valor)),
                     mtError,mbOKCancel,1);
          resultado:=false;
        end
        else
          resultado:=true;
      end
      else
      begin
        if (StrToInt(texto)) > valor then
        begin
          MessageDlg('O Valor '+QuotedStr(texto)+' é inválido'+#13+
                     'Por favor preencha o '+QuotedStr(campo)+' com numeros menores que '+QuotedStr(IntToStr(valor)),
                     mtError,mbOKCancel,1);
          resultado:=false;
        end
        else
          resultado:=true;
      end;
    end;
  except
    MessageDlg('O Valor '+QuotedStr(texto)+' é inválido'+#13+
               'Por favor preencha o '+campo+' com apenas numeros inteiros',
               mtError,mbOKCancel,1);

    resultado:=false;
  end;
  Result:=resultado;
end;

function valida.inteiro(campo, texto: string): boolean;
var
  resultado:boolean;
begin
  resultado:=true;
  try
    StrToint(texto);
    resultado:=true;
  except
    MessageDlg('O Valor '+QuotedStr(texto)+' é inválido'+#13+
               'Por favor preencha o '+campo+' com apenas numeros inteiros',
               mtError,mbOKCancel,1);
    resultado:=False;
  end;
  Result:=resultado;
end;

function valida.moeda   (campo,texto: string)                           : boolean;
var
  moeda:real;
  resultado:Boolean;
begin
  try
    moeda:=StrToFloat(texto);
    texto:= floattostrf(moeda,ffFixed,15,2);
    resultado:=true;
  except
    MessageDlg('O Valor '+QuotedStr(texto)+' é inválido'+#13+
               'Por favor preencha o '+campo+' com valores monetários',
                mtError,mbOKCancel,1);
    resultado:=false;
  end;
    Result:=resultado;
end;

function valida.texto   (campo,texto : string; minimo,maximo : integer) : boolean;
var
 acumulador:boolean;
begin
  acumulador:=true;
  if minimo <> maximo then
  begin
    if minimo = length(texto) then
      acumulador:=true
    else if (minimo > Length(texto)) then
    begin
      MessageDlg('O Valor '+QuotedStr(texto)+' é inválido'+#13+
                 'Por favor preencha o '+campo+' com mais de '+quotedstr(inttostr(minimo))+' caracteres',
                 mtError,mbOKCancel,1);
      acumulador:=false;
    end
    else if (maximo < Length(texto)) then
    begin
      MessageDlg('O Valor '+QuotedStr(texto)+' é inválido'+#13+
                 'Por favor preencha o '+campo+' com menos de '+quotedstr(inttostr(maximo))+' caracteres',
                 mtError,mbOKCancel,1);
      acumulador:=false;
    end;
  end
  else
  begin
    MessageDlg('O Valor '+QuotedStr(texto)+' é inválido'+#13+
               'Por favor preencha o '+campo+' com somente '+quotedstr(inttostr(maximo))+' caracteres',
               mtError,mbOKCancel,1);
    acumulador:=false;
  end;
  result:= acumulador;
end;

end.
