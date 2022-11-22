unit Unit_estados;

interface

uses Uvalidacao,SysUtils,Classes,ubanco;

type
  estados = class
  private
    { Private declarations }
    codigo   : Integer;
    Nome     : String;
    sigla   : string;

  public
    { Public declarations }
    function getcodigo : Integer;
    function getNome    : String;
    function getsigla    : String;

    function setcodigo (codigo   : String ) : Boolean;overload;
    function setnome   (nome     : String ) : Boolean;
    function setsigla  (sigla    : String ) : Boolean;

    function setcodigo (codigo   : integer) : Boolean;overload;


    constructor create;overload;
    constructor create(codigo,Nome,Sigla:string);overload;
    constructor create(codigo:integer;nome,Sigla:string);overload;

    function inserir:boolean;
    function Alterar(Campobusca,valorbusca,campo,novovalor:string):boolean;overload;
    function Alterar(codigo:integer;campo,novovalor:string):boolean;overload;
    function Alterar(codigo:string;campo,novovalor:string):boolean;overload;

    function Excluir(codigo:integer):boolean;overload;
    function Excluir(codigo:String):boolean;overload;
    function Buscar(codigo:string):Estados; overload;
    function Buscar(codigo:integer):Estados; overload;
    function buscar(Campo,valor:string;contem:boolean;proximo:integer):Estados;overload;
end;

var
  validar:valida;
  Tbanco:tdm;
implementation

{ Endereco }

constructor Estados.create;
begin
  validar:=valida.Create;
  Tbanco:=DM;
  self.codigo:=0;
  self.Nome:='';
end;

constructor Estados.create(codigo,Nome,Sigla: string);
begin
  validar:=valida.Create;
  setcodigo(codigo);
  setnome(Nome);
  setsigla(sigla);
end;

constructor Estados.create(codigo: integer; nome,Sigla : string);
begin
  validar:=valida.Create;
  setcodigo(codigo);
  setNome(nome);
  setsigla(sigla);
end;



function Estados.getNome    : String;
begin
  Result:=nome;
end;

function Estados.getcodigo : Integer;
begin
  Result:=codigo;
end;

function Estados.setNome    (Nome     : String) : Boolean;
begin
  if validar.texto('NOME',nome,3,50) then
  begin
    Self.nome:=Nome;
    Result:=true;
  end
  else
    Result:=false;
end;

function Estados.setcodigo (codigo : String) : Boolean;
var
  resultado:boolean;
begin
  resultado:=true;
  if validar.inteiro('CODIGO',codigo) then
    Resultado:=Setcodigo(StrToInt(codigo))
  else
    Resultado:=false;
  result:=resultado;
end;

function Estados.setcodigo(codigo: integer): Boolean;
var
  resultado:boolean;
begin
  if  validar.inteiro('CODIGO',inttostr(codigo),1,true) then
    begin
      resultado:=true;
      self.codigo:=codigo;
    end
    else
    begin
      resultado:=false;
    end;
  result:=resultado;
end;

function Estados.Excluir(codigo: integer): boolean;
begin
  result:=Tbanco.Deletar('ESTADO','CODIGO',inttostr(codigo))
end;

function Estados.Excluir(codigo: String): boolean;
begin
  result:=Excluir(strtoint(codigo));
end;

function Estados.inserir: boolean;
begin
  setcodigo(Tbanco.Autoincremento('ESTADO','CODIGO'));

  if setNome(getNome) then
  begin
    Tbanco.Inserir
      (
         'ESTADO','',
         inttostr(getcodigo)+' , '+
         getNome+' '
      );
    result:=true;
  end
  else
    result:=false;
end;

function Estados.Buscar(codigo: integer): Estados;
begin
  result:=buscar('CODIGO',inttostr(codigo),false,1);
end;

function Estados.Buscar(Campo, valor: string; contem: boolean;
  proximo:integer): Estados;
begin
 result:=create
  (
    tbanco.buscar('ESTADO',campo,valor,'CODIGO',false,proximo),
    tbanco.buscar('ESTADO',campo,valor,'NOME',false,proximo),
    tbanco.buscar('ESTADO',campo,valor,'SIGLA',false,proximo)
  );
end;




function Estados.Alterar(Campobusca, valorbusca, campo,
  novovalor: string): boolean;
begin
  result:= Tbanco.Alterar('ESTADO',Campobusca,valorbusca,campo,novovalor);
end;

function Estados.Buscar(codigo: string): Estados;
var
  tendereco:Estados;
begin
  tendereco.create;
  if tendereco.setcodigo(codigo) then
  begin
    result:=create
    (
    Tbanco.Buscar('ESTADO','CODIGO',codigo,'CODIGO',false,1),
    Tbanco.Buscar('ESTADO','CODIGO',codigo,'NOME',false,1),
    Tbanco.Buscar('ESTADO','CODIGO',codigo,'NOME',false,1)
    )
  end
  else
    result:= Estados.create;
end;

function Estados.Alterar(codigo:integer; campo, novovalor: string):boolean;
begin
  result:= Tbanco.Alterar('ESTADO','CODIGO',inttostr(codigo),campo,novovalor);
end;

function Estados.Alterar(codigo, campo, novovalor: string): boolean;
begin
  result:= Tbanco.Alterar('ESTADO','CODIGO',codigo,campo,novovalor);
end;

function estados.getsigla: String;
begin
  Result:=Self.sigla;
end;

function estados.setsigla(sigla: String): Boolean;
begin
  if validar.texto('SIGLA',nome,2,2) then
  begin
    Self.nome:=Nome;
    Result:=true;
  end
  else
    Result:=false;
end;


end.
