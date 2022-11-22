unit UEquipamento;

interface

uses Uvalidacao,SysUtils, Classes,uloja;

type
  Equipamento = class
  private
    { Private declarations }
    IdEquipamento  : Integer;
    tloja          : loja;
    Nome           : String;
    valorunitario  :  real;
    alugado        :  char;
    dataaquisicao  :  TDateTime;
 public
    { Public declarations }
    function getIdEquipamento  : Integer;
    function getNome           : String;

    function setIdEquipamento (IdEquipamento  : String):boolean;
    function setNome          (Nome           : String):boolean;

    constructor Create;overload;
    constructor Create(idEquipamento,Nome:string);overload;
    constructor Create(idEquipamento,Nome:Integer);overload;

    function incluir:Boolean;
    function Alterar(tabela,campo:string):Boolean;
    function buscar(valor,campo: string;contem:boolean):Equipamento;
    function excluir(idEquipamento:integer):boolean;overload;
    function excluir(idEquipamento:String):boolean;overload;
    function BuscarCampo(valor, campo,campoRetorno: string; contem: boolean): string;

end;


var
  validar:valida;


implementation

{ Equipamento }



function Equipamento.Alterar(tabela, campo: string): Boolean;
begin

end;

function Equipamento.buscar(valor, campo: string;
  contem: boolean): Equipamento;
begin
   result:=Create
  (
  BuscarCampo(valor,campo,'idEquipamento',contem),
  BuscarCampo(valor,campo,'Nome',contem)
  );
end;

function Equipamento.BuscarCampo(valor, campo, campoRetorno: string;
  contem: boolean): string;
begin
  Result:=tbanco.BuscarDados('Equipamento',CAMPO,VALOR,Camporetorno,contem,1)
end;

constructor Equipamento.Create(idEquipamento, Nome: Integer);
begin
//  setIdClube(idEquipamento);
//  settNome(Nome);
end;

constructor Equipamento.Create(idEquipamento, Nome: string);
begin
//  setIdShowClube(IdEquipamento);
//  settNome(Nome);
end;

constructor Equipamento.Create;
begin
  idEquipamento:=0;
end;

function Equipamento.excluir(idEquipamento: String): boolean;
begin
//   Result:=tbanco.DeletarDados('Equipamento','IdEquipamento','IdEquipamento);
end;

function Equipamento.excluir(idEquipamento: integer): boolean;
begin
  Result:=excluir(IntToStr(idEquipamento));
end;

function Equipamento.getIdEquipamento: Integer;
begin
  Result:=IdEquipamento;
end;

function Equipamento.getNome: String;
begin
  Result:=Nome;
end;


function Equipamento.incluir: Boolean;
begin

end;

function Equipamento.setIdEquipamento(IdEquipamento: String): boolean;
begin
  if validar.inteiro(IdEquipamento) then
  begin
    Self.IdEquipamento:=StrToint(IdEquipamento);
    Result:=true;
  end
  else
    Result:=false;
end;

function Equipamento.setNome(Nome: String): boolean;
begin
  if validar.texto(Nome,5,50) then
  begin
    Self.Nome:=Nome;
    Result:=true;
  end
  else
    Result:=false;
end;

end.
