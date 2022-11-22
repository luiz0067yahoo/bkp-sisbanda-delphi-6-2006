unit Unit_endereco;

interface

uses SysUtils, Classes,Uvalidacao;

type
  Endereco = class
  private
    { Private declarations }
    IdEndereco   : Integer;
    Cidade       : String;
    UF           : string;
    Bairro       : String;
    Rua          : String;
    CEP          : Integer;
    Numero       : Integer;
  public
    { Public declarations }

    function getIdEndereco : Integer;
    function getCidade    : String;
    function getBairro    : String;
    function getRua       : String;
    function getCEP       : Integer;
    function getNumero    : Integer;
    function getUF        : String;

    function setIdEndereco (IdEndereco : String) : Boolean;overload;
    function setCidade     (Cidade     : String) : Boolean;
    function setBairro     (Bairro     : String) : Boolean;
    function setRua        (Rua        : String) : Boolean;
    function setCEP        (CEP        : String) : Boolean;overload;
    function setNumero     (Numero     : String) : Boolean;overload;
    function setUF         (UF         : String) : boolean;


    function setIdEndereco (IdEndereco  : integer) : Boolean;overload;
    function setNumero     (Numero      : integer) : Boolean;overload;
    function setCEP        (CEP         : integer) : Boolean;overload;

    constructor create;overload;
    constructor create(IdEndereco,uf,cidade,bairro,rua,cep,numero:string);overload;
    constructor create(IdEndereco:integer;uf,cidade,bairro,rua:string;cep,numero:integer);overload;

    function inserir:boolean;
    function Alterar(Campobusca,valorbusca,campo,novovalor:string):boolean;overload;
    //function Alterar(idendereco:integer;campo,novovalor:string):boolean;overload;
//    function Alterar(idendereco:string;campo,novovalor:string):boolean;overload;

    function Excluir(Idendereco:integer):boolean;overload;
    function Excluir(Idendereco:String):boolean;overload;
    function Buscar(Idendereco:string):endereco; overload;
    function Buscar(Idendereco:integer):endereco; overload;
    function buscar(Campo,valor:string;contem:boolean;proximo:integer):endereco;overload;

end;
var
  validar:valida;

implementation



{ Endereco }

constructor Endereco.create;
begin
  self.IdEndereco:=0;
  self.Cidade:='';
  Self.Bairro:='';
  self.CEP:=0;
  self.Numero:=0;
  self.Rua:='';

end;

constructor Endereco.create(IdEndereco, uf,cidade, bairro, rua, cep,
  numero: string);
begin
  setIdEndereco(idendereco);
  setCidade(cidade);
  setBairro(bairro);
  setRua(rua);
  setCEP(CEP);
  setUF(uf);
  setNumero(numero);
end;

constructor Endereco.create(IdEndereco: integer; uf,cidade, bairro,
  rua: string; cep, numero: integer);
begin
  setIdEndereco(idendereco);
  setCidade(cidade);
  setBairro(bairro);
  setRua(rua);
  setCEP(CEP);
  setUF(uf);
  setNumero(numero);
end;

function Endereco.getBairro    : String;
begin
  Result:=Bairro;
end;

function Endereco.getCEP       : Integer;
begin
  Result:=CEP;
end;

function Endereco.getCidade    : String;
begin
  Result:=Cidade;
end;

function Endereco.getIdEndereco : Integer;
begin
  Result:=idEndereco;
end;


function Endereco.getNumero    : Integer;
begin
  Result:=Numero;
end;

function Endereco.getRua       : String;
begin
  Result:=rua;
end;

function Endereco.setBairro    (Bairro     : String) : Boolean;
begin
  if validar.texto(Bairro,0,50) then
  begin
    Self.Bairro:=Bairro;
    Result:=true;
  end
  else
    Result:=false;
end;

function Endereco.setCEP       (CEP        : String) : Boolean;
var
  a{cumulador}:String;
begin
  if validar.texto(cep,9,9) then
  begin
    a:=cep;
    cep:=a[1]+a[2]+a[3]+a[4]+a[5]{-}+a[7]+a[8]+a[9];
    if validar.inteiro(cep) then
      Result:=setcep( StrToInt(cep))
    else
      Result:=false;
  end
  else
    Result:=false;
end;

function Endereco.setCEP(CEP: integer): Boolean;
begin
  if (cep > 0) and (length(inttostr(cep)) > 8) then
  begin
    Result:=true;
    self.cep:=cep;
  end
  else
    Result:=false;
end;

function Endereco.setCidade    (Cidade     : String) : Boolean;
begin
  if validar.texto(Cidade,3,50) then
  begin
    Self.Cidade:=Cidade;
    Result:=true;
  end
  else
    Result:=false;
end;

function Endereco.setIdEndereco (IdEndereco : String) : Boolean;
begin
  if validar.inteiro(IdEndereco) then
    Result:=SetIdEndereco(StrToInt(IdEndereco))
  else
    Result:=false;
end;

function Endereco.setNumero    (Numero     : String) : Boolean;
begin
  if validar.inteiro(Numero) then
    Result:=setNumero(StrToInt(Numero))
  else
    Result:=false;
end;

function Endereco.setNumero(Numero: integer): Boolean;
begin
  if numero >= 0 then
  begin
    result:=true;
    Self.Numero:=Numero
  end
  else
    Result:=false;
end;

function Endereco.setRua       (Rua        : String) : Boolean;
begin
  if validar.texto(Rua,0,50) then
  begin
    Self.Rua:=Rua;
    Result:=true;
  end
  else
    Result:=false;
end;

function Endereco.setIdEndereco(IdEndereco: integer): Boolean;
begin
  if (idendereco >0) then
  begin
    result:=true;
    self.idendereco:=idendereco;
  end
  else
    result:=false;
end;


function Endereco.Excluir(Idendereco: integer): boolean;
begin
  //result:=Tbanco.Deletar('endereco','idendereco',inttostr(idendereco))
end;

function Endereco.Excluir(Idendereco: String): boolean;
begin
  result:=Excluir(strtoint(Idendereco));
end;

function Endereco.inserir: boolean;
begin
{  setIdEndereco(Tbanco.Autoincremento('endereco','idendereco'));
  if
    setUF(getuf) and
    setCidade(getcidade) and
    setBairro(getbairro) and
    setRua(getrua) and
    setCEP(getCEP) and
    setNumero(getnumero)
  then
  begin
  Tbanco.Inserir
  (
     'endereco','',
     inttostr(getidendereco)+' , '+
     getUF+' , '+
     getCidade+' , '+
     getBairro+' , '+
     getRua+' , '+
     Inttostr(getCEP)+' , '+
     Inttostr(getNumero)
  );
  result:=true;
  end
  else if
    setUF(getuf) and
    setCidade(getcidade) and
    setBairro(getbairro) and
    setRua(getrua) and
    not (setCEP(getCEP)) and
    setNumero(getnumero)
  then
  begin
    Tbanco.Inserir
    (
       'endereco','idendereco,uf,cidade,bairro,rua,numero',
       inttostr(getidendereco)+' , '+
       getUF+' , '+
       getCidade+' , '+
       getBairro+' , '+
       getRua+' , '+
       Inttostr(getNumero)
    );
    result:=true;
  end
  else if
    setUF(getuf) and
    setCidade(getcidade) and
    setBairro(getbairro) and
    setRua(getrua) and
    setCEP(getcep) and
    not (setNumero(getnumero))
  then
  begin
    Tbanco.Inserir
    (
       'endereco','idendereco,uf,cidade,bairro,rua,Cep',
       inttostr(getidendereco)+' , '+
       getUF+' , '+
       getCidade+' , '+
       getBairro+' , '+
       getRua+' , '+
       Inttostr(getcep)
    );
    result:=true;
  end
  else if

    setUF(getuf) and
    setCidade(getcidade) and
    setBairro(getbairro) and
    setRua(getrua) and
    not (setcEP(getCEP)) and
    not (setNumero(getnumero))
  then
  begin
    Tbanco.Inserir
    (
       'endereco','idendereco,uf,cidade,bairro,rua',
       inttostr(getidendereco)+' , '+
       getUF+' , '+
       getCidade+' , '+
       getBairro+' , '+
       getRua
    );
    result:=true;
  end
  else
    result:=false;}
end;

function Endereco.Buscar(Idendereco: integer): endereco;
begin
  result:=buscar('idendereco',inttostr(Idendereco),false,1);
end;

function Endereco.Buscar(Campo, valor: string; contem: boolean;
  proximo:integer): endereco;
begin
{ result:=create
  (
    tbanco.buscar('endereco',campo,valor,'idendereco',false,proximo),
    tbanco.buscar('endereco',campo,valor,'uf',false,proximo),
    tbanco.buscar('endereco',campo,valor,'cidade',false,proximo),
    tbanco.buscar('endereco',campo,valor,'bairro',false,proximo),
    tbanco.buscar('endereco',campo,valor,'rua',false,proximo),
    tbanco.buscar('endereco',campo,valor,'cep',false,proximo),
    tbanco.buscar('endereco',campo,valor,'numero',false,proximo)
  );}
end;


function Endereco.getUF: String;
begin
  result:=uf;
end;


function Endereco.setUF(UF: String): boolean;
begin
  if validar.texto(UF,2,2) then
  begin
    result:=true;
    self.UF:=uf;
  end
  else
    result:=false;
end;

function Endereco.Alterar(Campobusca, valorbusca, campo,
  novovalor: string): boolean;
begin
//  result:= Tbanco.Alterar('endereco',Campobusca,valorbusca,campo,novovalor);
end;

function Endereco.Buscar(Idendereco: string): endereco;
var
  tendereco:endereco;
begin
  tendereco.create;
  {if tendereco.setIdEndereco(Idendereco) then
  begin
    result:=create
    (
    Tbanco.Buscar('endereco','idendereco',Idendereco,'idendereco',false,1),
    Tbanco.Buscar('endereco','idendereco',Idendereco,'uf',false,1),
    Tbanco.Buscar('endereco','idendereco',Idendereco,'cidade',false,1),
    Tbanco.Buscar('endereco','idendereco',Idendereco,'bairro',false,1),
    Tbanco.Buscar('endereco','idendereco',Idendereco,'rua',false,1),
    Tbanco.Buscar('endereco','idendereco',Idendereco,'cep',false,1),
    Tbanco.Buscar('endereco','idendereco',Idendereco,'numero',false,1)
    )
  end
  else
    result:= Endereco.create;}
end;

{function Endereco.Alterar(idendereco:integer; campo, novovalor: string):boolean;
begin
  result:=false;//  result:= Tbanco.Alterar('endereco','idendereco',inttostr(idendereco),campo,novovalor);
end;}

{function Endereco.Alterar(idendereco, campo, novovalor: string): boolean;
begin
  result:= Tbanco.Alterar('endereco','idendereco',idendereco,campo,novovalor);
end;}

end.
