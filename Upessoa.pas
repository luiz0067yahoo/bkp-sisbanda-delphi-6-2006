unit UPessoa;

interface

uses Uvalidacao,SysUtils, Classes,Messages,Dialogs;
 type
  pessoa = class
  private
    { Private declarations }
    sexo:char;
    nome: string;
    telefone :string;

  public
    { Public declarations }
    function Setnome(nome     : string):boolean;
    function Setsexo(sexo : string):boolean;
    function Settelefone(telefone       : string):boolean;

    function getnome: string;
    function getsexo: string;
    function gettelefone: string;

    constructor create;overload;
    constructor create(nome,sexo,telefone:string);overload;
  end;

var
  validar:valida;
implementation

{ pessoa }

constructor pessoa.create(nome, sexo, telefone: string);
begin
  Setnome(nome);
  Setsexo(sexo);
  Settelefone(telefone);
end;

constructor pessoa.create;
begin
  Self.nome:='';
  Self.sexo:=' ';
  Self.telefone:='';
end;

function pessoa.getnome: string;
begin
  Result:=nome;
end;

function pessoa.getsexo: string;
begin
  Result:=sexo;
end;

function pessoa.gettelefone: string;
var
  a{acumulador}:string;
begin
  a:=telefone;
  if length(a) = 11 then
  begin
    a:='('+a[1]+a[2]+a[3]+')'+a[4]+a[5]+a[6]+a[8]+'-'+a[9]+a[10]+a[11]+a[12];
    Result:=a;
  end
  else
    Result:='';
end;

function pessoa.Setnome(nome: string): boolean;
begin
if validar.texto(nome,5,50) then
  begin
    result:=true;
    Self.nome:=nome;
  end
  else
    result:=false;
end;

function pessoa.Setsexo(sexo: string): boolean;
begin
  if validar.texto(sexo,1,1) then
  begin
    if UpCase(sexo[1]) in ['M','F'] then
    begin
      result:=true;
      Self.sexo:=sexo[1];
    end
    else
    begin
      ShowMessage('Selecio os valores ''M'' para Masculino ''F'' Feminino');
      result:=false;
    end;
  end
  else
    result:=false;
end;

function pessoa.Settelefone(telefone: string): boolean;
var
a{acumulador}:string;
begin
  a:=Trim(a);
  if validar.texto(telefone,14,14) then
  begin
    a:=telefone;
    a:={(}a[2]+a[3]+a[4]{)}+a[6]+a[7]+a[8]+a[9]{-}+a[11]+a[12]+a[13]+a[14];
    ShowMessage(a);
    if validar.inteiro(a) then
    begin
      Self.telefone:=telefone;
      result:=true;
    end
    else
    begin
      result:=false;
    end;
  end
  else
    result:=false;
end;

end.
