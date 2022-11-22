unit UFuncionario;


interface

uses Uvalidacao,SysUtils,Classes,upessoa,uendereco,ubanco;

type
  Funcionario = class(pessoa)
  private
    { Private declarations }
    IdFuncionario :Integer;
    TEndereco     : endereco;
    //TGrupo       : Grupo;

  public
    { Public declarations }
    function getIdFuncionario : Integer;
    function getEndereco : endereco;
    //function getIdGrupo  : grupo;

    function setIdFuncionario (idFuncionario : String)   : Boolean;overload;
    function setEndereco      (tendereco     : endereco): boolean;overload;
    // function setIdGrupo       (tGrupo  : grupo): boolean;overload;

    function setIdFuncionario (idFuncionario : integer)  : Boolean; overload;
    function setEndereco(idEndereco: integer): Boolean;overload;
    function setEndereco(idEndereco: string): Boolean;overload;
    //function setIdGrupo       (idGrupo  : integer): boolean;overload;
    //function setIdGrupo       (idgrupo  : string): boolean;overload;


    constructor Create;overload;
    constructor Create(idfuncionario,idendereco,idsalario,nome,sexo,telefone:string);overload;
    constructor Create(idfuncionario, idendereco,idsalario: integer; nome ,sexo, telefone:  string);overload;
    //constructor Create(idfuncionario:integer;Tendereco:endereco;Tsalario:salario;nome,sexo,telefone: String);overload;


    function incluir:Boolean;
    function Alterar(campoBusca,valorbusca,campo,valornovo: string): Boolean;
    function excluir(idfuncionario:integer):boolean;overload;
    function excluir(idfuncionario:String):boolean;overload;

    function BuscarCampo(valor, campo,campoRetorno: string; contem: boolean;posicao:integer): string;

    function buscar(valor,campo: string;contem:boolean;posicao:integer):funcionario;overload;
    function buscar(idfuncionario:Integer):funcionario; overload;
end;

var
  validar:valida;
  tbaco :  tdm;

implementation



{ Funcionario }

function Funcionario.getEndereco: endereco;
begin
  Result:=TEndereco;
end;

function Funcionario.getIdFuncionario: Integer;
begin
  Result:=IdFuncionario
end;


function Funcionario.setIdFuncionario(idFuncionario: String): Boolean;
begin
  if validar.inteiro(idFuncionario) then
    result:=setidfuncionario(strtoint(idfuncionario))
  else
    result:=false;
end;



function Funcionario.setEndereco(tendereco: endereco): boolean;
begin
  if
  (
    tendereco.setIdEndereco(tendereco.getIdEndereco) and
    tendereco.setUF(tendereco.getUF)                 and
    tendereco.setCidade(tendereco.getCidade)         and
    tendereco.setBairro(tendereco.getBairro)         and
    tendereco.setNumero(tendereco.getNumero)         and
    tendereco.setCEP(tendereco.getCEP)
  )
  then
  begin
    self.tendereco:=tendereco;
    Result:=true;
  end
  else
    Result:=False;
end;

function Funcionario.setEndereco(idEndereco: integer): Boolean;
var
  tendereco:endereco;
begin
 tendereco.create;

 result:=setEndereco(tendereco.Buscar(idEndereco));
end;

function Funcionario.setIdFuncionario(idFuncionario: integer): Boolean;
begin
   if idFuncionario >0 then
   begin
     self.IdFuncionario:=idFuncionario;
     result:=true;
   end
   else
     result:=false;
end;

constructor Funcionario.Create(idfuncionario, idendereco, idsalario, nome,
  sexo, telefone: string);
begin
  setIdFuncionario(idfuncionario);
  setEndereco(idendereco);
  setnome(nome);
  setsexo(sexo);
  settelefone(telefone);
end;

constructor Funcionario.Create;
begin
  self.IdFuncionario:=0;
  self.TEndereco:=Endereco.create;
end;

(*constructor Funcionario.Create(idfuncionario: integer; Tendereco: endereco;
  Tsalario: salario; nome, sexo,  telefone: String);
begin
  setIdFuncionario(idfuncionario);
  setEndereco(tendereco);
  setnome(nome);
  setsexo(sexo);
  settelefone(telefone);
end;*)

constructor Funcionario.Create(idfuncionario, idendereco,
  idsalario: integer; nome ,sexo, telefone:  string);
begin
  setIdFuncionario(idfuncionario);
  setEndereco(idendereco);
  setnome(nome);
  setsexo(sexo);
  settelefone(telefone);
end;

function Funcionario.setEndereco(idEndereco: String): Boolean;
begin
  if validar.inteiro(idEndereco) then
    result:=setEndereco(strtoint(idendereco))
  else
    Result:=false;
end;

function Funcionario.Alterar(campoBusca,valorbusca,campo,valornovo: string): Boolean;
begin
  result:=Tbanco.Alterar ('funcionario',campobusca,valorbusca,campo,valornovo);
end;

function Funcionario.excluir(idfuncionario: integer): boolean;
begin
  result:=Tbanco.Deletar('funcionario','idfuncionario',inttostr(idfuncionario))
end;

function Funcionario.excluir(idfuncionario: String): boolean;
begin
  if validar.inteiro(idfuncionario) then
    result:=excluir(strtoint(idfuncionario))
  else
    result:=false;
end;

function Funcionario.incluir: Boolean;
begin
  setIdFuncionario(Tbanco.Autoincremento('funcionario','idfuncionario'));
  if
    setEndereco(getEndereco) and
    setNome(getnome) and
    setsexo(getSexo) and
    setTelefone(getTelefone)
  then
  begin
  Tbanco.Inserir
  (
     'endereco','',
    inttostr(getidfuncionario)+' , '+
    inttostr(getEndereco.getIdEndereco)+' , '+
    getnome +' , '+
    getSexo +' , '+
    getTelefone
  );
  result:=true;
  end
  else
    result:=false;
end;

function Funcionario.buscar(valor, campo: string; contem: boolean;posicao: integer): funcionario;
begin
  result:=create
  (
  BuscarCampo(valor,campo,'idfuncionario',contem,posicao),
  BuscarCampo(valor,campo,'idendereco',contem,posicao),
  BuscarCampo(valor,campo,'idsalario',contem,posicao),
  BuscarCampo(valor,campo,'nome',contem,posicao),
  BuscarCampo(valor,campo,'sexo',contem,posicao),
  BuscarCampo(valor,campo,'telefone',contem,posicao)
  )
end;

function Funcionario.buscar(idfuncionario: Integer): funcionario;
begin
  result:=buscar(inttostr(idfuncionario),'idfuncionario',false,1);
end;

function Funcionario.BuscarCampo(valor, campo, campoRetorno: string;
  contem: boolean; posicao: integer): string;
begin
  Tbanco.Buscar('Funcionario',campo,valor,campoRetorno,contem,posicao);
  result:=campoRetorno;
end;


end.
