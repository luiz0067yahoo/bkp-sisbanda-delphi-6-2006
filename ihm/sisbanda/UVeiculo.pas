unit uVeiculo;

interface

uses Uvalidacao,SysUtils, Classes,uloja;

type
  Veiculo = class
  private
    { Private declarations }
    IdVeiculo    : Integer;
    tloja        : loja;
    Valor        : Real;
    Modelo       : string;
    Placa        : String;
    IdEgreso     : Integer;
    Marca        : String;
  public
    { Public declarations }
    function getIdVeiculo  :Integer;
    function getValor      :Real;
    function getModelo     :string;
    function getPlaca      :string;
    function getMarca      :String;

    function setIdVeiculo(IdVeiculo: String): Boolean;overload;
    function setValor(Valor:String): Boolean;overload;
    function setModelo(Modelo:String): Boolean;
    function SetPlaca(Placa: String): Boolean;
    function SetMarca(Marca:String): Boolean;

    function setIdVeiculo(IdVeiculo: integer): Boolean;overload;
    function setValor(Valor:real): Boolean;overload;

    constructor Create(idVeiculo,Valor,Modelo,Placa,Marca:string);overload;
    constructor Create(idVeiculo,Valor,Modelo,Placa,Marca:Integer);overload;

    function incluir:Boolean;
    function Alterar(tabela,campo:string):Boolean;
    function buscar(valor,campo: string;contem:boolean):Veiculo;
    function excluir(idVeiculo:integer):boolean;overload;
    function excluir(idVeiculo:String):boolean;overload;
    function BuscarCampo(valor, campo,campoRetorno: string; contem: boolean): string;

end;

var
  validar:valida;
implementation

{ Veiculo }

function Veiculo.Alterar(tabela, campo: string): Boolean;
begin

end;

function Veiculo.buscar(valor, campo: string; contem: boolean): Veiculo;
begin
  result:=Create
  (
  BuscarCampo(valor,campo,'idVeiculo',contem),
  BuscarCampo(valor,campo,'Valor',contem),
  BuscarCampo(valor,campo,'Modelo',contem),
  BuscarCampo(valor,campo,'Placa',contem),
  BuscarCampo(valor,campo,'Marca',contem)
  );
end;

function Veiculo.BuscarCampo(valor, campo, campoRetorno: string;
  contem: boolean): string;
begin
   Result:=tbanco.BuscarDados('Veiculo',CAMPO,VALOR,Camporetorno,contem,1)
end;

constructor Veiculo.Create(idVeiculo, Valor, Modelo, Placa, Marca: integer);
begin
  setIdVeiculo(idVeiculo);
 setValor(Valor);
// setModelo(Modelo);
// setPlaca(Placa);
// settMarca(Marca);
end;
constructor Veiculo.Create(idVeiculo, Valor, Modelo, Placa, Marca: string);
begin
  setIdVeiculo(idVeiculo);
 setValor(Valor);
 setModelo(Modelo);
 setPlaca(Placa);
 setMarca(Marca);

//constructor Veiculo.Create;
//begin
//  idVeiculo:=0;
//end;
end;

function Veiculo.excluir(idVeiculo: String): boolean;
begin
//   Result:=tbanco.DeletarDados('Veiculo','Valor','Modelo','Placa','Marca);
end;

function Veiculo.excluir(idVeiculo: integer): boolean;
begin
  Result:=excluir(IntToStr(idVeiculo));
end;


function Veiculo.getIdVeiculo: Integer;
begin
  Result:=IdVeiculo;
end;


function Veiculo.getMarca: String;
begin
  Result:=Marca;
end;

function Veiculo.getModelo: string;
begin
   Result:=Modelo;
end;

function Veiculo.getPlaca: string;
begin
   Result:=Placa;
end;

function Veiculo.getValor: Real;
begin
   Result:=Valor;
end;

function Veiculo.incluir: Boolean;
begin

end;


function Veiculo.setIdVeiculo(IdVeiculo: String): Boolean;
begin
   if validar.Inteiro(IdVeiculo)Then
  begin
     Self.IdVeiculo:=StrToInt(IdVeiculo);
     Result:= true;
  end
  else
    Result:=false;
end;


function Veiculo.setIdVeiculo(IdVeiculo: integer): Boolean;
begin

end;

function Veiculo.SetMarca(Marca: String): Boolean;
begin
   if validar.Inteiro(Marca)Then
  begin
     Self.Marca:=Marca;
     Result:= true;
  end
  else
    Result:=false;
end;

function Veiculo.setModelo(Modelo: string): Boolean;
begin
   if validar.Texto (Modelo,3,50)Then
  begin
     Self.Modelo:=(Modelo);
     Result:= true;
  end
  else
    Result:=false;
end;

function Veiculo.SetPlaca(Placa: string): Boolean;
begin
   if validar.Texto(Placa,9,9)Then
  begin
     Self.Placa:=Placa;
     Result:= true;
  end
  else
    Result:=false;
end;

function Veiculo.setValor(Valor: String): Boolean;
begin
   if validar.moeda(Valor) Then
  begin
     Self.Valor:=StrToFloat(Valor);
     Result:= true;
  end
  else
    Result:=false;
  end;

function Veiculo.setValor(Valor: real): Boolean;
begin

end;

End.

