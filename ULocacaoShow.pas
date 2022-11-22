unit ULocacaoShow;

interface
uses UValidacao,SysUtils,Classes,Ubanco,Variants,ulocacao;

type
  LocacaoShow = class
  private
    { Private declarations }
    IdLocacaoShow    : Integer;
//    tShow           : show;
    tLocacao        : locacao;
  public
    { Public declarations }
//    function getShow          : show;
    function getLocacao       : locacao;

//    function SetLocacaoShow (IdLocacaoShow : String) : Boolean;overload;
///    function SetShow        (idshow    : string): Boolean;overload;
//    function SetLocacao     (Locacao   : String) : Boolean;overload;

//    function setIdLocacaoShow (IdLocacaoShow : Integer) : Boolean;overload;
//    function setShow  (Show  : Integer) : Boolean;overload;
//    function setLocacao   (Locacao : Integer ) : Boolean;overload;
//    function setShow  (tShow  : show) : Boolean;overload;
//    function setLocacao   (tLocacao : locacao ) : Boolean;overload;



//    constructor Create;overload;
//    constructor Create(idLocacao,Show,Locacao:string);overload;
//    constructor Create(Show:Integer);overload;
//    constructor Create(idLocacaoShow:integer; Show:Integer;Locacao:Integer);overload;

    function incluir:Boolean;
    function Alterar(tabela,campo:string):Boolean;
    function buscar(valor,campo: string;contem:boolean;proximo:integer):LocacaoShow;
    function excluir(idLocacaoShow:integer):boolean;overload;
    function excluir(idLocacaoShow:String):boolean;overload;
    function BuscarCampo(valor, campo,campoRetorno: string; contem: boolean;proximo:integer): string;
end;


var
  validar:valida;
  tbanco:TDM;
implementation

{ LocacaoShow }


{ LocacaoShow }

function LocacaoShow.Alterar(tabela, campo: string): Boolean;
begin

end;

function LocacaoShow.buscar(valor, campo: string; contem: boolean;
  proximo: integer): LocacaoShow;
begin

end;

function LocacaoShow.BuscarCampo(valor, campo, campoRetorno: string;
  contem: boolean; proximo: integer): string;
begin

end;

function LocacaoShow.excluir(idLocacaoShow: String): boolean;
begin

end;

function LocacaoShow.excluir(idLocacaoShow: integer): boolean;
begin

end;

function LocacaoShow.getLocacao: locacao;
begin

end;

function LocacaoShow.incluir: Boolean;
begin

end;

end.
