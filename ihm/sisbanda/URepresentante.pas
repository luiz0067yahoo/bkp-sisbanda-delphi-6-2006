unit URepresentante;

interface

uses Uvalidacao,SysUtils, Classes,upessoa,uendereco;

type  Representante = class(pessoa)
  private
    { Private declarations }
    IdRepresentante : Integer;
    tEndereco    : endereco;
    nomeclube    : string;
  public
    { Public declarations }
    function getIdRepresentante  : Integer;
    function gettEndereco : endereco;
    function getnome : string;

    function setIdRepresentante  (IdRepresentante  : String) : Boolean;overload;
    function settEndereco (IdEndereco : String) : Boolean;overload;
    function setNome (Nome : String) : Boolean;overload;

    function setIdRepresentante  (IdRepresentante  : integer) : Boolean;overload;
    function settEndereco (IdEndereco : integer) : Boolean;overload;

    function settEndereco (IdEndereco : endereco) : Boolean;overload;

    constructor create;overload;
    constructor create(idrepresentante,IdEndereco,nomeclube,nome,sexo,telefone:string);overload;
    constructor create(idrepresentante,IdEndereco:integer;nomeclube,nome:string;sexo:char;telefone:string);overload;
    constructor create(idrepresentante:integer;IdEndereco:endereco;nomeclube,nome:string;sexo:char;telefone:string);overload;

    function inserir:boolean;
    function Alterar(Campobusca,valorbusca,campo,novovalor:string):representante;overload;
    function Alterar(idrepresentante,campo,novovalor:string):representante;overload;
    function Alterar(idrepresentante:integer;campo,novovalor:string):representante;overload;
    function Excluir(idrepresentante:integer):boolean;overload;
    function Excluir(idrepresentante:String):boolean;overload;
    function Buscar(idrepresentante:integer):Representante; overload;
end;


var
  validar:valida;

implementation

{ Representante }

function Representante.gettEndereco : endereco;
begin
  Result:=tEndereco;
end;

function Representante.getIdRepresentante  : Integer;
begin
  Result:=IdRepresentante;
end;






function Representante.settEndereco(idEndereco: String): Boolean;
begin
end;

function Representante.setIdRepresentante(IdRepresentante: String): Boolean;
begin
  if validar.inteiro(IdRepresentante) then
  begin
    self.IdRepresentante:=StrToInt(IdRepresentante);
    Result:=True;
  end
  else
    Result:=False;
end;




function Representante.Alterar(idrepresentante: integer; campo,
  novovalor: string): representante;
begin

end;

function Representante.Alterar(idrepresentante, campo,
  novovalor: string): representante;
begin

end;

function Representante.Alterar(Campobusca, valorbusca, campo,
  novovalor: string): representante;
begin

end;



constructor Representante.create(idrepresentante, IdEndereco, nomeclube,
  nome, sexo, telefone: string);
begin

end;

constructor Representante.create(idrepresentante: integer;
  IdEndereco: endereco; nomeclube, nome: string; sexo: char;
  telefone: string);
begin

end;

constructor Representante.create(idrepresentante, IdEndereco: integer;
  nomeclube, nome: string; sexo: char; telefone: string);
begin

end;

constructor Representante.create;
begin

end;

function Representante.Excluir(idrepresentante: integer): boolean;
begin

end;

function Representante.Excluir(idrepresentante: String): boolean;
begin

end;

function Representante.getnome: string;
begin

end;

function Representante.inserir: boolean;
begin

end;

function Representante.setIdRepresentante(
  IdRepresentante: integer): Boolean;
begin

end;

function Representante.setNome(Nome: String): Boolean;
begin

end;

function Representante.settEndereco(IdEndereco: integer): Boolean;
begin

end;

function Representante.settEndereco(IdEndereco: endereco): Boolean;
begin

end;


function Representante.Buscar(idrepresentante: integer): Representante;
begin

end;

End.