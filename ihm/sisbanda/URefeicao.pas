unit URefeicao;

interface

uses Uvalidacao,SysUtils, Classes,uendereco;

type
  Refeicao = class
  private
    { Private declarations }
    IdRefeicao         : Integer;
    tEdereco           : endereco;
    Custobebida        : real;
    QuantidadeRefeicao : integer;
    CustoRefeicao      : real;
    ValorTotal         : real;
  public
    { Public declarations }
    function getIdRefeicao         : Integer;
    function getEdereco          : endereco;
    function getCustobebida        : real;
    function getQuantidadeRefeicao : integer;
    function getCustoRefeicao      : real;
    function getValorTotal         : real;

    function setIdRefeicao         (IdRefeicao         : string):boolean;overload;
    function settEdereco           (idendereco          : string):boolean;overload;
    function setCustobebida        (Custobebida        : string):boolean;overload;
    function setQuantidadeRefeicao (QuantidadeRefeicao : string):boolean;overload;
    function setCustoRefeicao      (CustoRefeicao      : string):boolean;overload;
    function setValorTotal         (ValorTotal         : string):boolean;overload;

    function setIdRefeicao         (IdRefeicao         : integer):boolean;overload;
    function settEdereco           (idendereco          : integer):boolean;overload;
    function setCustobebida        (Custobebida        : real):boolean;overload;
    function setQuantidadeRefeicao (QuantidadeRefeicao : integer):boolean;overload;
    function setCustoRefeicao      (CustoRefeicao      : real):boolean;overload;
    function setValorTotal         (ValorTotal         : real):boolean;overload;

    function settEdereco           (tendereco          : endereco):boolean;overload;

    constructor create;overload;
    constructor create(IdRefeicao,idendereco,custobebida,quantidaderefeiao,custorefeicao,valortotal:string);overload;
    constructor create(IdRefeicao,idendereco:integer;custobebida:real;quantidaderefeiao:integer;custorefeicao,valortotal:real);overload;
    constructor create(IdRefeicao,tendereco:endereco;custobebida:real;quantidaderefeiao:integer;custorefeicao,valortotal:real);overload;

    function inserir:boolean;
    function Alterar(Campobusca,valorbusca,campo,novovalor:string):refeicao;overload;
    function Alterar(idrefeicao,campo,novovalor:string):refeicao;overload;
    function Alterar(idrefeicao:integer;campo,novovalor:string):refeicao;overload;
    function Excluir(Idrefeicao:integer):boolean;overload;
    function Excluir(Idrefeicao:String):boolean;overload;
    function Buscar(Idrefeicao:integer):endereco; overload;
    function buscar(Campo,valor:string;contem:boolean;proximo:integer):refeicao;overload;
    function buscarCampo(Campo,valor,camporetorno:string;contem:boolean;proximo:integer):String;

end;


var
  validar:valida;


implementation

{ Clube }
{ Refeicao }

function Refeicao.Alterar(idrefeicao: integer; campo,
  novovalor: string): refeicao;
begin

end;

function Refeicao.Alterar(idrefeicao, campo, novovalor: string): refeicao;
begin

end;

function Refeicao.Alterar(Campobusca, valorbusca, campo,
  novovalor: string): refeicao;
begin

end;

function Refeicao.Buscar(Campo, valor: string; contem: boolean;
  proximo: integer): refeicao;
begin

end;

function Refeicao.Buscar(Idrefeicao: integer): endereco;
begin

end;

function Refeicao.buscarCampo(Campo, valor, camporetorno: string;
  contem: boolean; proximo: integer): String;
begin

end;

constructor Refeicao.create(IdRefeicao, idendereco: integer;
  custobebida: real; quantidaderefeiao: integer; custorefeicao,
  valortotal: real);
begin

end;

constructor Refeicao.create(IdRefeicao, tendereco: endereco;
  custobebida: real; quantidaderefeiao: integer; custorefeicao,
  valortotal: real);
begin

end;

constructor Refeicao.create(IdRefeicao, idendereco, custobebida,
  quantidaderefeiao, custorefeicao, valortotal: string);
begin

end;

constructor Refeicao.create;
begin

end;

function Refeicao.Excluir(Idrefeicao: integer): boolean;
begin

end;

function Refeicao.Excluir(Idrefeicao: String): boolean;
begin

end;

function Refeicao.getCustobebida: real;
begin

end;

function Refeicao.getCustoRefeicao: real;
begin

end;

function Refeicao.getEdereco: endereco;
begin

end;


function Refeicao.getIdRefeicao: Integer;
begin

end;

function Refeicao.getQuantidadeRefeicao: integer;
begin

end;

function Refeicao.getValorTotal: real;
begin

end;

function Refeicao.inserir: boolean;
begin

end;

function Refeicao.setCustobebida(Custobebida: string): boolean;
begin
  if validar.moeda(Custobebida) then
  begin
    Self.Custobebida:=StrToFloat   (Custobebida);
    Result:=true;
  end
  else
    Result:=false;

end;

function Refeicao.setCustoRefeicao(CustoRefeicao: string): boolean;
begin
  if validar.moeda(CustoRefeicao) then
  begin
    Self.CustoRefeicao:=StrTofloat(CustoRefeicao);
    Result:=true;
  end
  else
    Result:=false;

end;


function Refeicao.setIdRefeicao(IdRefeicao: string): boolean;
begin
  if validar.Inteiro(IdRefeicao) then
  begin
    Self.IdRefeicao:=StrToInt(IdRefeicao);
    Result:=true;
  end
  else
    Result:=false;

end;

function Refeicao.setQuantidadeRefeicao(
  QuantidadeRefeicao: string): boolean;
begin
  if validar.Inteiro(QuantidadeRefeicao) then
  begin
    Self.QuantidadeRefeicao:=StrToInt(QuantidadeRefeicao);
    Result:=true;
  end
  else
    Result:=false;

end;

function Refeicao.setValorTotal(ValorTotal: string): boolean;
begin
  if validar.moeda(ValorTotal) then
  begin
    Self.ValorTotal:=StrToInt(ValorTotal);
    Result:=true;
  end
  else
    Result:=false;
end;

function Refeicao.setCustobebida(Custobebida: real): boolean;
begin

end;

function Refeicao.setCustoRefeicao(CustoRefeicao: real): boolean;
begin

end;

function Refeicao.setIdRefeicao(IdRefeicao: integer): boolean;
begin

end;

function Refeicao.setQuantidadeRefeicao(
  QuantidadeRefeicao: integer): boolean;
begin

end;

function Refeicao.settEdereco(idendereco: integer): boolean;
begin

end;

function Refeicao.settEdereco(tendereco: endereco): boolean;
begin

end;

function Refeicao.settEdereco(idendereco: string): boolean;
begin

end;

function Refeicao.setValorTotal(ValorTotal: real): boolean;
begin

end;

end.
