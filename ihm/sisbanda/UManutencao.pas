unit uManutencao;

interface
uses Uvalidacao,SysUtils, Classes,uequipamento,uveiculo;
type
   Manutencao = class
  private
    { Private declarations }
    IdManutencao : Integer;
    tequipamento : equipamento;
    tveiculo     : veiculo;
    Data         : TDateTime;
    ValorTotal   : Real;

      public
    { Public declarations }
    Function setIdManutencao(IdManutencao:String): Boolean;
    Function setData(Data:String): Boolean;
    Function setValorTotal(ValorTotal:String): Boolean;
    Function getIdManutencao :Integer;
    Function getData         :TDateTime;
    Function getValorTotal   :Real;

    constructor Create;overload;
    constructor Create(idManutencao,Data,ValorTotal:string);overload;
    constructor Create(idManutencao:Integer; Data, ValorTotal:string);overload;


    function incluir:Boolean;
    function Alterar(campoBusca,valorbusca,campo,valornovo: string): Boolean;
    function excluir(idManutencao:integer):boolean;overload;
    function excluir(idManutencao:String):boolean;overload;

    function BuscarCampo(valor, campo,campoRetorno: string; contem: boolean;posicao:integer): string;

    function buscar(valor,campo: string;contem:boolean;posicao:integer):Manutencao;overload;
    function buscar(idManutencao:Integer):Manutencao; overload;
end;

Var
  Validar: Valida;

implementation
{ Manutencao }

function Manutencao.Alterar(campoBusca, valorbusca, campo,
  valornovo: string): Boolean;
begin

end;

function Manutencao.buscar(idManutencao: Integer): Manutencao;
begin

end;

function Manutencao.buscar(valor, campo: string; contem: boolean;
  posicao: integer): Manutencao;
begin

end;

function Manutencao.BuscarCampo(valor, campo, campoRetorno: string;
  contem: boolean; posicao: integer): string;
begin

end;

constructor Manutencao.Create(idManutencao: Integer; Data,
  ValorTotal: string);
begin

end;


constructor Manutencao.Create;
begin

end;

constructor Manutencao.Create(idManutencao, Data, ValorTotal: string);
begin

end;

function Manutencao.excluir(idManutencao: String): boolean;
begin

end;

function Manutencao.excluir(idManutencao: integer): boolean;
begin

end;

function Manutencao.getData: TDateTime;
begin
   Result:= Data;
end;

function Manutencao.getIdManutencao: Integer;
begin
   Result:= IdManutencao;
end;

function Manutencao.getValorTotal: Real;
begin
   Result:= ValorTotal;
end;

function Manutencao.incluir: Boolean;
begin

end;

function Manutencao.setData(Data: String): Boolean;
begin
     if validar.Data(Data) then
  begin
    Self.Data:=StrToDate(Data);
    result:=true;
  end
  else
    result:=false;
end;

function Manutencao.setIdManutencao(IdManutencao:String): Boolean;
begin
     if validar.inteiro(IdManutencao) then
  begin
    Self.IdManutencao:=StrToInt (IdManutencao);
    result:=true;
  end
  else
    result:=false;
end;

function Manutencao.setValorTotal(ValorTotal: String): Boolean;
begin
     if validar.moeda(ValorTotal) then
  begin
    Self.ValorTotal:=StrToFloat (ValorTotal);
    result:=true;
  end
  else
    result:=false;
end;

End.
