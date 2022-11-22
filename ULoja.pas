unit ULoja;

interface
uses UValidacao,SysUtils,Classes,Ubanco,Variants,uendereco;

type
  Loja = class
  private
    { Private declarations }
    IdLoja           : Integer;
    tEndereco       : endereco;
    Nome             : String;
  public
    { Public declarations }
    function getIdLoja      : Integer;
    function gettEndereco  : endereco;
    function getNome        : String;


    function setIdLoja (IdLoja : String) : Boolean;overload;
    function settEndereco  (IdEnderco  : String) : Boolean;overload;
    function setNome   (Nome   : String) : Boolean;overload;

    function setIdLoja (IdLoja : Integer) : Boolean;overload;
    function settEndereco (IdEndereco  : Integer) : Boolean;overload;
    function settEndereco (tendereco  : endereco) : Boolean;overload;

    constructor Create;overload;
    constructor Create(IdLoja,IdEndereco,Nome:string);overload;
    constructor Create(idLoja:integer; IdEndereco:Integer;Nome:String);overload;

    function incluir:Boolean;
    function Alterar(tabela,campo:string):Boolean;
    function buscar(Valor,campo: string;contem:boolean;proximo:integer):Loja;
    function excluir(idLoja:integer):boolean;overload;
    function excluir(idLoja:String):boolean;overload;
    function BuscarCampo(valor, campo,campoRetorno: string; contem: boolean;proximo:integer): string;
end;


var
  validar:valida;
  tbanco:TDM;
implementation

{ Loja }

function Loja.Alterar(tabela, campo: string): Boolean;
begin

end;

function Loja.buscar(Valor, campo: string; contem: boolean;
  proximo: integer): Loja;
begin

end;

function Loja.BuscarCampo(valor, campo, campoRetorno: string;
  contem: boolean; proximo: integer): string;
begin

end;

constructor Loja.Create;
begin

end;


constructor Loja.Create(idLoja, IdEndereco: Integer; Nome: String);
begin

end;

constructor Loja.Create(IdLoja, IdEndereco, Nome: string);
begin

end;

function Loja.excluir(idLoja: String): boolean;
begin

end;

function Loja.excluir(idLoja: integer): boolean;
begin

end;


function Loja.gettEndereco: endereco;
begin

end;


function Loja.getIdLoja: Integer;
begin

end;

function Loja.getNome: String;
begin

end;


function Loja.incluir: Boolean;
begin

end;

function Loja.settEndereco(IdEndereco: Integer): Boolean;
begin

end;


function Loja.settEndereco(IdEnderco: String): Boolean;
begin

end;

function Loja.settEndereco(tendereco: endereco): Boolean;
begin

end;

function Loja.setIdLoja(IdLoja: Integer): Boolean;
begin

end;

function Loja.setIdLoja(IdLoja: String): Boolean;
begin

end;

function Loja.setNome(Nome: String): Boolean;
begin

end;

end.
