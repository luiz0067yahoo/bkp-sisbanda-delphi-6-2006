unit UFixo;


interface

uses UValidacao,SysUtils,Classes,Ubanco,Variants,ufuncionario;

type
  Fixo = class
  private
    { Private declarations }
    Idfixo           : Integer;
    valor            : real;
    data             : TDateTime;
    Tfuncionario     : funcionario;
  public
    { Public declarations }
    function getIdFixo : Integer;
    function getValor  : Real;
    function getData   : TDateTime;
    function gettfuncionario   : Funcionario;

    function setIdFixo (IdFixo : String) : Boolean;overload;
    function setValor  (Valor  : String) : Boolean;overload;
    function setData   (Data   : String) : Boolean;overload;
    function settfuncionario(iduncionario   : string):boolean;overload;

    function setIdFixo (IdFixo : Integer) : Boolean;overload;
    function setValor  (Valor  : real) : Boolean;overload;
    function setData   (Data   : TDateTime) : Boolean;overload;
    function settfuncionario(idfuncionario   : integer):boolean;overload;

    function settfuncionario(tfuncionario   : Funcionario):boolean;overload;


    constructor Create;overload;
    constructor Create(idfixo,idfuncionario,valor,data:string);overload;
    constructor Create(idfixo,idfuncionario:integer; valor:real;data:TDateTime);overload;
    constructor Create(idfixo:integer;tfuncionario:Funcionario; valor:real;data:TDateTime);overload;

    function incluir:Boolean;
    function Alterar(tabela,campo:string):Boolean;
    function buscar(valor,campo: string;contem:boolean;proximo:integer):fixo;
    function excluir(idfixo:integer):boolean;overload;
    function excluir(idfixo:String):boolean;overload;
    function BuscarCampo(valor, campo,campoRetorno: string; contem: boolean;proximo:integer): string;
end;


var
  validar:valida;
  tbanco:TDM;
implementation
  { fixo }

constructor Fixo.Create(idfixo,idfuncionario, valor, data: string);
begin
  setData(data);
  setValor(valor);
  setIdFixo(tbanco.Autoincremento('Fixo','idfixo'));
end;

constructor Fixo.Create;
begin
  Idfixo:=0;
  valor:=0;
  data:=StrToDate('01/01/0001');
end;

constructor Fixo.Create(idfixo,idfuncionario: Integer; valor: real; data: TDateTime);
begin
  setData(data);
  setValor(valor);
  setIdFixo(idfixo);
end;

function Fixo.getData   : TDateTime;
begin
  Result:=Data;
end;

function Fixo.getIdFixo : Integer;
begin
  Result:=IdFixo;
end;

function Fixo.getValor  : Real;
begin
  Result:=Valor;
end;

function Fixo.setData   (Data   : String) : Boolean;
begin
  if validar.data(Data) then
    Result:=setData(strtodate(data))
  else
    Result:=false;
end;

function Fixo.setidfixo (IdFixo : String) : Boolean;
begin
  if validar.inteiro(IdFixo) then
    Result:=setIdFixo(strtoInt(idFixo))
  else
    Result:=false;
end;

function Fixo.setValor  (Valor  : String) : Boolean;
begin
  if validar.moeda(Valor) then
  begin
    Self.Valor:=StrTofloat(Valor);
    Result:=true;
  end
  else
    Result:=false;
end;

function Fixo.setData(Data: TDateTime): Boolean;
begin
  if (strtodate(FormatDateTime('dd/mm/yyyy',data)) <> strtodate('01/01/0000')) then
    Self.data:=strtodate(FormatDateTime('dd/mm/yyyy',data));
end;

function Fixo.setIdFixo(IdFixo: Integer): Boolean;
begin
  if IdFixo > 0 then
  begin
    Result:=True;
    self.Idfixo:=IdFixo
  end
  else
   Result:=false;
end;

function Fixo.setValor(Valor: real): Boolean;
begin
  if Valor >= 0 then
  begin
    Result:=True;
    self.valor:=Valor;
  end
  else
   Result:=false;
end;

function Fixo.Alterar(tabela, campo: string): Boolean;
begin

end;

function Fixo.excluir(idfixo:integer): boolean;
begin
  Result:=excluir(IntToStr(idfixo));
end;

function Fixo.incluir: Boolean;
begin
  setdata(date());
  setIdFixo(tbanco.Autoincremento('fixo','idfixo'));

  if setValor(getvalor) then
    result:=tbanco.Inserir
    ('fixo','',
    IntToStr(getIdFixo)+','
    +floattostrf(getValor,ffFixed,15,2)+','
    +QuotedStr(datetostr(getdata))
    );
end;


function Fixo.excluir(idfixo: String): boolean;
begin
  Result:=tbanco.Deletar('FIXO','IdFixo',IdFixo);
end;

function Fixo.buscar(valor, campo: string;contem:boolean;proximo:integer): fixo;
begin
  result:=Create
  (
  BuscarCampo(valor,campo,'idfixo',contem,proximo),
  BuscarCampo(valor,campo,'Valor',contem,proximo),
  BuscarCampo(valor,campo,'data',contem,proximo),
  BuscarCampo(valor,campo,'idfuncionario',contem,proximo)
  );
end;

function Fixo.BuscarCampo(valor, campo,campoRetorno: string; contem: boolean;proximo:integer): string;
begin
  result:=tbanco.Buscar('FIXO',CAMPO,VALOR,Camporetorno,contem,proximo);
end;


constructor Fixo.Create(idfixo: integer; tfuncionario: Funcionario;
  valor: real; data: TDateTime);
begin
  setIdFixo(idfixo);
  settfuncionario(tfuncionario);
  setValor(valor);
  setData(data);
end;

function Fixo.gettfuncionario: Funcionario;
begin
  Result:=Tfuncionario;
end;

function Fixo.settfuncionario(iduncionario: string): boolean;
var
 ofunionario:Funcionario;
begin
  ofunionario.Create;
  //ofunionario
end;

function Fixo.settfuncionario(tfuncionario: Funcionario): boolean;
begin

end;

function Fixo.settfuncionario(idfuncionario: integer): boolean;
begin

end;

end.
