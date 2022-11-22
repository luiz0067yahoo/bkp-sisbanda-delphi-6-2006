unit UShowClube;

interface
uses Uvalidacao,SysUtils,UFuncao,UBanco, Classes,uclube,ushow;

 type
  ShowClube = class
  private
    { Private declarations }
    IdShowClube     : Integer;
    tClube         : clube;
    tShow          : show;

  public
    { Public declarations }
    function getIdShowClube     : Integer;
    function getIdClube         : Clube;
    function getIdShow          : Show;



    function setIdShowClube( IdShowClube : String):Boolean;overload;
    function settClube(IdClube          : String):Boolean;overload;
    function settShow(IdShow            : String):Boolean;overload;

    function setIdShowClube( IdShowClube : Integer):Boolean;overload;
    function settClube(IdClube          : Integer):Boolean;overload;
    function settShow(IdShow            : Integer):Boolean;overload;


    constructor Create;overload;
    constructor Create(idShowClube,IdClube,IdShow:string);overload;
    constructor Create(idShowClube,IdClube,IdShow:Integer);overload;

    function incluir:Boolean;
    function Alterar(tabela,campo:string):Boolean;
    function buscar(valor,campo: string;contem:boolean):ShowClube;
    function excluir(idShowClube:integer):boolean;overload;
    function excluir(idShowClube:String):boolean;overload;
    function BuscarCampo(valor, campo,campoRetorno: string; contem: boolean): string;

end;

var
  validar:valida;
  TBanco:TDM;
implementation

{ ShowClube }

function ShowClube.getIdClube: clube;
begin
  Result:=tClube;
end;

function ShowClube.getIdShowClube: Integer;
begin
  Result:=IdShowClube;
end;

function ShowClube.getIdShow: Show;
begin
  Result:=tShow;
end;

function ShowClube.settClube(IdClube: String): Boolean;
begin
end;

function ShowClube.setIdShowClube(IdShowClube: String): Boolean;
begin
  if validar.Inteiro(IdShowClube) then
  begin
    Self.IdShowClube:=StrToInt(IdShowClube);
    Result:= true;
  end
  else
    Result:=false;
end;

function ShowClube.settShow(IdShow: String): Boolean;
begin
end;

function ShowClube.Alterar(tabela, campo: string): Boolean;
begin
 
end;

function ShowClube.buscar(valor, campo: string; contem: boolean): ShowClube;
begin
  result:=Create
  (
  BuscarCampo(valor,campo,'idShowClube',contem),
  BuscarCampo(valor,campo,'IdClube',contem),
  BuscarCampo(valor,campo,'IdShow',contem)
  );
end;

function ShowClube.BuscarCampo(valor, campo, campoRetorno: string;
  contem: boolean): string;
begin
    Result:=tbanco.BuscarDados('ShowClube',CAMPO,VALOR,Camporetorno,contem,1)
end;

constructor ShowClube.Create(idShowClube, IdClube, IdShow: string);
begin
 setIdShowClube(idShowClube);
 settClube(IdClube);
 settShow(IdShow);
end;

constructor ShowClube.Create;
begin
  idShowClube:=0;
end;

constructor ShowClube.Create(idShowClube, IdClube, IdShow: Integer);
begin
 setIdShowClube(idShowClube);
 settClube(IdClube);
 settShow(IdShow);
end;

function ShowClube.excluir(idShowClube: String): boolean;
begin
  Result:=tbanco.DeletarDados('ShowClube','IdShowClube',IdShowClube);
end;

function ShowClube.excluir(idShowClube: integer): boolean;
begin
  Result:=excluir(IntToStr(idShowClube));
end;

function ShowClube.incluir: Boolean;
begin
//  setIdShowClube(tbanco.Autoincremento('ShowClube','idShowClube'));
//  if setIdShow(getIdShow)and setIdClube(getIdClube) then
//    result:=tbanco.InserirDados
//    ('fixo','',
//    IntToStr(getIdShowClube)+','
///    +inttostr(getIdClube)+','
//    +inttostr(getIdShow)
//    );
end;


function ShowClube.settShow(IdShow: Integer): Boolean;
begin
end;

function ShowClube.setIdShowClube(IdShowClube: Integer): Boolean;
begin
  if IdShowClube>0 Then
  begin
    Result:= true;
    Self.IdShowClube:=IdShowClube;
  end
  else
    Result:=false;
end;

function ShowClube.settClube(IdClube: Integer): Boolean;
begin

end;

end.
