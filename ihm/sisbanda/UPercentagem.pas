unit UPercentagem;

interface

uses Uvalidacao,SysUtils, Classes,ufuncionario,ubanco;

type
  Percentagem = class
  private
    { Private declarations }
    IdPercentagem: Integer;
    tfuncionario : funcionario;
    Data         :  TDateTime;
    Percentagem  : integer;
    Bruto        : Real;
    Liquido      : Real;

  public
    { Public declarations }
    function getIdPercentagem : Integer;
    function getData          : TDateTime;
    function getPercetagem    : Real;
    function getBruto         : Real;
    function getLiquido       : Real;

    function setIdPercentagem (IdPercentagem : String) : Boolean;
    function setData          (Data          : String) : Boolean;
    function setPercetagem    (Percetagem    : String) : Boolean;
    function setBruto         (Bruto         : String) : Boolean;
    function setLiquido       (Liquido       : String) : Boolean;


    constructor Create;overload;
    constructor Create(idPercentagem,Data,Percentagem,Bruta,Liquida:string);overload;
//    constructor Create(idPercentagem:Integer;Data:DateTime;Percentagem:Real;Bruta:Real;Liquida:Real);overload;
//    constructor Create(idPercentagem:integer;TData:Data;TPercentagem:Percentagem;Bruta,Liquida: Integer);overload;


    function incluir:Boolean;
    function Alterar(campoBusca,valorbusca,campo,valornovo: string): Boolean;
    function excluir(idPercentagem:integer):boolean;overload;
    function excluir(idPercentagem:String):boolean;overload;

    function BuscarCampo(valor, campo,campoRetorno: string; contem: boolean;posicao:integer): string;

    function buscar(valor,campo: string;contem:boolean;posicao:integer):Percentagem;overload;
    function buscar(idPercentagem:Integer):Percentagem; overload;


end;

var
  validar:valida;
  Tbanco :tdm;
implementation


{ Percentagem }

function Percentagem.Alterar(campoBusca, valorbusca, campo,
  valornovo: string): Boolean;
begin
  result:=Tbanco.Alterar('percentagem',campobusca,valorbusca,campo,valornovo);
end;

function Percentagem.buscar(idPercentagem: Integer): Percentagem;
begin
   result:=buscar(inttostr(idPercentagem),'idPercentagem',false,1);
end;

function Percentagem.buscar(valor, campo: string; contem: boolean;
  posicao: integer): Percentagem;
begin
//  Tbanco.BuscarDados('Percentagem',campo,valor,campoRetorno,contem,posicao);
//  result:=campoRetorno;
end;

function Percentagem.BuscarCampo(valor, campo, campoRetorno: string;
  contem: boolean; posicao: integer): string;
begin

end;

//constructor Percentagem.Create(idPercentagem: Integer; Data: DateTime;
//  Percentagem, Bruta, Liquida: Real);
//begin

//end;

//constructor Percentagem.Create(idPercentagem: integer; TData: Data;
//  TPercentagem: Percentagem; Bruta, Liquida: Integer);
//begin

///end;

constructor Percentagem.Create;
begin

end;

constructor Percentagem.Create(idPercentagem, Data, Percentagem, Bruta,
  Liquida: string);
begin

end;

function Percentagem.excluir(idPercentagem: String): boolean;
begin

end;

function Percentagem.excluir(idPercentagem: integer): boolean;
begin

end;

function Percentagem.getBruto: Real;
begin
  Result:=Bruto;
end;

function Percentagem.getData          : TDateTime;
begin
  Result:=Data;
end;

function Percentagem.getIdPercentagem : Integer;
begin
  Result:=IdPercentagem;
end;

function Percentagem.getLiquido: Real;
begin

end;

function Percentagem.getPercetagem    : Real;
begin
  Result:=Percentagem;
end;

function Percentagem.incluir: Boolean;
begin

end;

function Percentagem.setBruto(Bruto: String): Boolean;
begin
   if validar.moeda(Bruto) then
  begin
    Self.Bruto:=strtoint(Bruto);
    Result:=true;
  end
  else
    Result:=false;
end;


function Percentagem.setData          (Data          : String) : Boolean;
begin
  if validar.data(Data) then
  begin
    Self.Data:=StrToDate(Data);
    Result:=true;
  end
  else
    Result:=false;
end;

function Percentagem.setIdPercentagem (IdPercentagem : String) : Boolean;
begin
  if validar.inteiro(IdPercentagem) then
  begin
    Self.IdPercentagem:=StrToInt(IdPercentagem);
    Result:=true;
  end
  else
    Result:=false;
end;

function Percentagem.setLiquido(Liquido: String): Boolean;
begin

end;

function Percentagem.setPercetagem    (Percetagem    : String) : Boolean;
begin
   if validar.inteiro(Percetagem) then
  begin
    Self.Percentagem:=StrToInt(Percetagem);
    Result:=true;
  end
  else
    Result:=false;
end;

end.


