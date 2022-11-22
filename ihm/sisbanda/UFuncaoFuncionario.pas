unit UFuncaoFuncionario;

interFace

uses Uvalidacao,SysUtils,Classes,ufuncionario,ufuncao;


type
  FuncaoFuncionario = class
  private
    { Private declarations }
    IdFuncaoFuncionario : Integer;
    tFuncao            : funcao;
    tfuncionario       : funcionario;
  public
    { Public declarations }
    function getIdFuncaoFuncionario : Integer;
    function gettFuncao            : funcao;
    function getTFuncionario: funcionario;

    function setTFuncaoFuncionario (IdFuncaoFuncionario : String) : Boolean;overload;
    function setTFuncao            (IdFuncao            : String) : Boolean;overload;

    function setTFuncaoFuncionario (IdFuncaoFuncionario : integer) : Boolean;overload;
    function setTFuncao            (IdFuncao            : integer) : Boolean;overload;

    function SetTFuncionario(TFuncionario:funcionario): boolean;overload;
    function SetTFuncao(Tfuncao:funcao): boolean;overload;

    constructor create;overload;
    constructor create(idfuncao,idfuncionario,idfuncaofuncionario:integer);overload;
    constructor create(idfuncao,idfuncionario,idfuncaofuncionario:string);overload;
    constructor create(tfuncao:funcao;tfuncionario:funcionario;idfuncaofuncionario:integer);overload;

    function incluir:Boolean;
    function Alterar(campobusca,valorbuca,campo,novovalor:string):Boolean;
    function buscar(Valor,campo: string;contem:boolean;proximo:integer):funcaofuncionario;
    function excluir(idfuncaofuncionario:integer):boolean;overload;
    function excluir(idfuncaofuncionario:String):boolean;overload;
    function BuscarCampo(valor, campo,campoRetorno: string; contem: boolean;proximo:integer): string;
end;

var
  validar:valida;

implementation

uses UPessoa;

{ FuncaoFuncionario }





function FuncaoFuncionario.gettFuncao: funcao;
begin
  Result:=tFuncao;
end;

function FuncaoFuncionario.getIdFuncaoFuncionario: integer;
begin
  Result:=IdFuncaoFuncionario;
end;



function FuncaoFuncionario.settFuncao(idFuncao: string): Boolean;
var
  tfuncao:funcao;
begin
  if validar.inteiro(IdFuncao) then
  begin
    Self.tFuncao:=tFuncao.buscar(IdFuncao,'idfuncao',false,1);
    Result:=true;
  end
  else
    Result:=false;
end;

function FuncaoFuncionario.settFuncaoFuncionario (IdFuncaoFuncionario : string) : Boolean;
begin
  if validar.inteiro(IdFuncaoFuncionario) then
  begin
    Self.IdFuncaoFuncionario:=StrToInt(IdFuncaoFuncionario);
    Result:=true;
  end
  else
    Result:=false;
end;



function FuncaoFuncionario.SetTFuncionario(tfuncionario: funcionario): boolean;
begin
  result:=
  (
    TFuncionario.setIdFuncionario(TFuncionario.getidfuncionario)
    and TFuncionario.Setnome(TFuncionario.getnome)
    and TFuncionario.Settelefone(TFuncionario.gettelefone)
    and TFuncionario.Setsexo(TFuncionario.getsexo)
    and TFuncionario.setIdGrupo(TFuncionario.getIdGrupo)
    and TFuncionario.setEndereco(TFuncionario.getEndereco)
  );
  self.tfuncionario:=tfuncionario;

end;


function FuncaoFuncionario.Alterar(campobusca, valorbuca, campo,
  novovalor: string): Boolean;
begin

end;

function FuncaoFuncionario.buscar(Valor, campo: string; contem: boolean;
  proximo: integer): funcaofuncionario;
begin

end;

function FuncaoFuncionario.BuscarCampo(valor, campo, campoRetorno: string;
  contem: boolean; proximo: integer): string;
begin

end;

constructor FuncaoFuncionario.create;
begin

end;

constructor FuncaoFuncionario.create(tfuncao: funcao;
  tfuncionario: funcionario; idfuncaofuncionario: integer);
begin

end;

constructor FuncaoFuncionario.create(idfuncao, idfuncionario,
  idfuncaofuncionario: string);
begin

end;

constructor FuncaoFuncionario.create(idfuncao, idfuncionario,
  idfuncaofuncionario: integer);
begin

end;

function FuncaoFuncionario.excluir(idfuncaofuncionario: integer): boolean;
begin

end;

function FuncaoFuncionario.excluir(idfuncaofuncionario: String): boolean;
begin

end;

function FuncaoFuncionario.incluir: Boolean;
begin

end;

function FuncaoFuncionario.setTFuncao(Tfuncao: funcao): boolean;
begin

end;

function FuncaoFuncionario.setTFuncao(IdFuncao: integer): Boolean;
begin

end;

function FuncaoFuncionario.setTFuncaoFuncionario(
  IdFuncaoFuncionario: integer): Boolean;
begin

end;

function FuncaoFuncionario.getTFuncionario: funcionario;
begin

end;

end.

