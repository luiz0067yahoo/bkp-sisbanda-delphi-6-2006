unit UShow;

interface

uses Uvalidacao,SysUtils, Classes,urepresentante;


type
Show = class
  private
    { Private declarations }
    IdShow      : Integer;
    trepresentante : representante;
    descricao      :  string;
    ValorBruto  : Real;
    Custo       : Real;
    Liquido     : Real;
    Data        : TDateTime;

  public
    { Public declarations }
    function getIdShow     : Integer;
    function getValorBruto : Real;
    function getCusto      : Real;
    function getData       : TDateTime;
    function getLiquido    : Real;


    function setIdShow     (IdShow     : String) : Boolean;overload;
    function setValorBruto (ValorBruto : String) : Boolean;overload;
    function setCusto      (Custo      : String) : Boolean;overload;
    function setData       (Data       : String) : Boolean;overload;
    function setLiquido    (Liquido    : String) : Boolean;overload;

    function setIdShow     (IdShow     : integer) : Boolean;overload;
    function setValorBruto (ValorBruto : real) : Boolean;overload;
    function setCusto      (Custo      : real) : Boolean;overload;
    function setData       (Data       : tdatetime) : Boolean;overload;
    function setLiquido    (Liquido    : real) : Boolean;overload;

    constructor create;overload;
    constructor create(idshow,valorbruto,custo,data,liquido:string);overload;
    constructor create(idshow:integer;valorbruto,custo:real;data:tdatetime;liquido:real);overload;

    function inserir:boolean;
    function Alterar(Campobusca,valorbusca,campo,novovalor:string):show;overload;
    function Alterar(idshow,campo,novovalor:string):show;overload;
    function Alterar(idshow:integer;campo,novovalor:string):show;overload;
    function Excluir(idshow:integer):boolean;overload;
    function Excluir(idshow:String):boolean;overload;
    function Buscar(idshow:integer):show; overload;

end;

var
  validar:valida;

implementation

{ Show }

function Show.GetCusto      : Real;
begin
  Result:=Custo;
end;

function Show.GetData       : TDateTime;
begin
  Result:=Data;
end;


function Show.GetIdShow     : Integer;
begin
  Result:=IdShow;
end;

function Show.GetLiquido    : real;
begin
  Result:=Liquido;
end;

function Show.GetValorBruto : Real;
begin
  Result:=ValorBruto;
end;

function Show.SetCusto      (Custo      : String) : Boolean;
begin
  if validar.moeda(Custo) then
  begin
    Self.Custo:=StrToFloat(Custo);
    Result:=True;
  end
  else
    Result:=False;
end;

function Show.SetData       (Data       : String) : Boolean;
begin
  if validar.data(data) then
  begin
    Self.Data:=StrToDate(Data);
    Result:=True;
  end
  else
    Result:=False;
end;


function Show.SetIdShow     (IdShow     : String) : Boolean;
begin
  if validar.inteiro(IdShow) then
  begin
    Self.IdShow:=StrToInt(IdShow);
    Result:=True;
  end
  else
    Result:=False;
end;

function Show.SetLiquido    (Liquido    : String) : Boolean;
begin
  if validar.moeda(Liquido) then
  begin
    Self.Liquido:=StrToFloat(Liquido);
    Result:=True;
  end
  else
    Result:=False;
end;

function Show.SetValorBruto (ValorBruto : String) : Boolean;
begin
  if validar.moeda(ValorBruto) then
  begin
    Self.ValorBruto:=StrToFloat(ValorBruto);
    Result:=True;
  end
  else
    Result:=False;
end;

function Show.setCusto(Custo: real): Boolean;
begin

end;

function Show.setData(Data: tdatetime): Boolean;
begin

end;

function Show.setIdShow(IdShow: integer): Boolean;
begin

end;

function Show.setLiquido(Liquido: real): Boolean;
begin

end;

function Show.setValorBruto(ValorBruto: real): Boolean;
begin

end;

function Show.Alterar(Campobusca, valorbusca, campo,
  novovalor: string): show;
begin

end;

function Show.Alterar(idshow, campo, novovalor: string): show;
begin

end;

function Show.Alterar(idshow: integer; campo, novovalor: string): show;
begin

end;

function Show.Buscar(idshow: integer): show;
begin

end;

constructor Show.create(idshow: integer; valorbruto, custo: real;
  data: tdatetime; liquido: real);
begin

end;

constructor Show.create;
begin

end;

constructor Show.create(idshow, valorbruto, custo, data, liquido: string);
begin

end;

function Show.Excluir(idshow: String): boolean;
begin

end;

function Show.Excluir(idshow: integer): boolean;
begin

end;

function Show.inserir: boolean;
begin

end;

end.




