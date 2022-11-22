unit UFuncao;

interface

uses Uvalidacao,SysUtils,Classes;

 type
  Funcao = class
  private
    { Private declarations }
    IdFuncao     : Integer;
    Descricao    : string;

  public
    { Public declarations }
    function getIdFuncao  : Integer;
    function getDrescricao : String;

    function setIdFuncao   (IdFuncao  : String) : Boolean;
    function setDrescricao (Descricao : String) : Boolean;

    constructor create;overload;
    constructor create(idfuncao:integer;descricao:string);overload;
    constructor create(idfuncao,descricao:string);overload;

    function incluir:Boolean;
    function Alterar(campobusca,valorbuca,campo,novovalor:string):Boolean;
    function buscar(Valor,campo: string;contem:boolean;proximo:integer):funcao;
    function excluir(idfuncao:integer):boolean;overload;
    function excluir(idfuncao:String):boolean;overload;
    function BuscarCampo(valor, campo,campoRetorno: string; contem: boolean;proximo:integer): string;
end;

var
  validar:valida;

implementation

{ funcao }

function Funcao.Alterar(campobusca, valorbuca, campo,
  novovalor: string): Boolean;
begin

end;

function Funcao.buscar(Valor, campo: string; contem: boolean;
  proximo: integer): funcao;
begin

end;

function Funcao.BuscarCampo(valor, campo, campoRetorno: string;
  contem: boolean; proximo: integer): string;
begin

end;

constructor Funcao.create(idfuncao, descricao: string);
begin

end;

constructor Funcao.create(idfuncao: integer; descricao: string);
begin

end;

constructor Funcao.create;
begin

end;

function Funcao.excluir(idfuncao: String): boolean;
begin

end;

function Funcao.excluir(idfuncao: integer): boolean;
begin

end;

function Funcao.getDrescricao : String;
begin
  Result:=Descricao;
end;

function Funcao.getIdFuncao  : Integer;
begin
  Result:=IdFuncao
end;

function Funcao.incluir: Boolean;
begin

end;

function Funcao.setDrescricao (Descricao : String) : Boolean;
begin
  if validar.texto(Descricao,0,250) then
  begin
    Self.Descricao:=Descricao;
    Result:=true;
  end
  else
    Result:=false;
end;

function Funcao.setIdfuncao  (IdFuncao  : String) : Boolean;
begin
  if validar.inteiro(IdFuncao) then
  begin
    Self.IdFuncao:=StrToInt(IdFuncao);
    Result:=true;
  end
  else
    Result:=false;
end;

end.
