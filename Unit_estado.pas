unit Unit_estado;

interface

uses Uvalidacao,SysUtils,Classes,ubanco;

type
  Estado = class
  private
    { Private declarations }
    IdEstado   : Integer;
    nome       : String;
  public
    { Public declarations }
    function getIdEstado : Integer;
    function getNome    : String;

    function setIdEstado (IdEstado : String) : Boolean;overload;
    function setnome   (nome     : String) : Boolean;

    function setIdEstado (IdEstado  : integer) : Boolean;overload;

    constructor create;overload;
    constructor create(IdEstado,Nome:string);overload;
    constructor create(IdEstado:integer;nome:string);overload;

    function inserir:boolean;
    function Alterar(Campobusca,valorbusca,campo,novovalor:string):boolean;overload;
    function Alterar(idendereco:integer;campo,novovalor:string):boolean;overload;
    function Alterar(idendereco:string;campo,novovalor:string):boolean;overload;

    function Excluir(Idendereco:integer):boolean;overload;
    function Excluir(Idendereco:String):boolean;overload;
    function Buscar(Idendereco:string):Estado; overload;
    function Buscar(Idendereco:integer):Estado; overload;
    function buscar(Campo,valor:string;contem:boolean;proximo:integer):Estado;overload;
end;

var
  validar:valida;
  Tbanco:tdm;
implementation

{ Endereco }

constructor Estado.create;
begin
  validar:=valida.Create;
  self.IdEstado:=0;
  self.Nome:='';
end;

constructor Estado.create(IdEstado,Nome: string);
begin
  setIdEstado(idEstado);
  setnome(Nome);
end;

constructor Estado.create(IdEstado: integer; nome : string);
begin
  setIdEstado(idEstado);
  setNome(nome);
end;



function Estado.getNome    : String;
begin
  Result:=nome;
end;

function Estado.getIdEstado : Integer;
begin
  Result:=idEstado;
end;






function Estado.setNome    (Nome     : String) : Boolean;
begin
  if validar.texto('Nome',nome,3,50) then
  begin
    Self.nome:=Nome;
    Result:=true;
  end
  else
    Result:=false;
end;

function Estado.setIdEstado (IdEstado : String) : Boolean;
var
  resultado:boolean;
begin
  resultado:=true;
  if validar.inteiro('IdTipo',IdEstado) then
    Resultado:=SetIdEstado(StrToInt(IdEstado))
  else
    Resultado:=false;
  result:=resultado;
end;



function Estado.setIdEstado(IdEstado: integer): Boolean;
var
  resultado:boolean;
begin
  if  validar.inteiro('IdTipo',inttostr(IdEstado),0,true) then
    begin
      resultado:=true;
      self.idEstado:=idEstado;
    end
    else
    begin
      resultado:=false;
    end;
  result:=resultado;
end;


function Estado.Excluir(Idendereco: integer): boolean;
begin
  result:=Tbanco.Deletar('endereco','idendereco',inttostr(idendereco))
end;

function Estado.Excluir(Idendereco: String): boolean;
begin
  result:=Excluir(strtoint(Idendereco));
end;

function Estado.inserir: boolean;
begin
  setIdEstado(Tbanco.Autoincremento('endereco','idendereco'));
  if
    setNome(getNome)
  then
  begin
  Tbanco.Inserir
  (
     'endereco','',
     inttostr(getidEstado)+' , '+
     getNome+' , '
  );
  result:=true;
  end
  else if
    setNome(getNome)
  then
  begin
    Tbanco.Inserir
    (
       'endereco','idendereco,uf,cidade,bairro,rua,numero',
       inttostr(getidEstado)+' , '+
       getnome+' , '
    );
    result:=true;
  end;
  begin
    Tbanco.Inserir
    (
       'endereco','idendereco,uf,cidade,bairro,rua,Cep',
       inttostr(getidEstado)+' , '+
       getnome+' , '
    );
    result:=true;
  end
end;

function Estado.Buscar(Idendereco: integer): Estado;
begin
  result:=buscar('idendereco',inttostr(Idendereco),false,1);
end;

function Estado.Buscar(Campo, valor: string; contem: boolean;
  proximo:integer): Estado;
begin
 result:=create
  (
    tbanco.buscar('endereco',campo,valor,'idTipo',false,proximo),
    tbanco.buscar('endereco',campo,valor,'Nome',false,proximo)
  );
end;




function Estado.Alterar(Campobusca, valorbusca, campo,
  novovalor: string): boolean;
begin
  result:= Tbanco.Alterar('endereco',Campobusca,valorbusca,campo,novovalor);
end;

function Estado.Buscar(Idendereco: string): Estado;
var
  tendereco:Estado;
begin
  tendereco.create;
  if tendereco.setIdEstado(Idendereco) then
  begin
    result:=create
    (
    Tbanco.Buscar('endereco','idendereco',Idendereco,'idTipo',false,1),
    Tbanco.Buscar('endereco','idendereco',Idendereco,'Nome',false,1)
    )
  end
  else
    result:= Estado.create;
end;

function Estado.Alterar(idendereco:integer; campo, novovalor: string):boolean;
begin
  result:= Tbanco.Alterar('endereco','idendereco',inttostr(idendereco),campo,novovalor);
end;

function Estado.Alterar(idendereco, campo, novovalor: string): boolean;
begin
  result:= Tbanco.Alterar('endereco','idendereco',idendereco,campo,novovalor);
end;

end.
