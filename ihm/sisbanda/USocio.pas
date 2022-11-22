unit USocio;

interface
uses UValidacao,SysUtils,Classes,Ubanco,Variants,upessoa;

type
  Socio = class(pessoa)
  private
    { Private declarations }
    IdSocio          : Integer;
  public
    { Public declarations }
    function getIdSocio : Integer;

    function setIdSocio (IdSocio : Integer) : Boolean;overload;
    function setIdSocio (IdSocio : string) : Boolean;overload;


    constructor Create;overload;
    constructor Create(idSocio,Nome,sexo,telefone:string);overload;
    constructor Create(idSocio:integer;Nome, sexo,telefone:String);overload;

    function incluir:Boolean;
    function Alterar(tabela,campo:string):Boolean;
    function buscar(valor,campo: string;contem:boolean;proximo:integer):Socio;
    function excluir(idSocio:integer):boolean;overload;
    function excluir(idSocio:String):boolean;overload;
    function BuscarCampo(valor, campo,campoRetorno: string; contem: boolean;proximo:integer): string;
end;


var
  validar:valida;
  tbanco:TDM;
implementation

{ Socio }

function Socio.Alterar(tabela, campo: string): Boolean;
begin

end;

function Socio.buscar(valor, campo: string; contem: boolean;
  proximo: integer): Socio;
begin

end;

function Socio.BuscarCampo(valor, campo, campoRetorno: string;
  contem: boolean; proximo: integer): string;
begin

end;

constructor Socio.Create;
begin

end;


constructor Socio.Create(idSocio: integer; Nome,sexo,telefone: String);
begin

end;

constructor Socio.Create(idSocio, Nome,sexo,telefone: string);
begin

end;

function Socio.excluir(idSocio: String): boolean;
begin

end;

function Socio.excluir(idSocio: integer): boolean;
begin

end;


function Socio.getIdSocio: Integer;
begin

end;


function Socio.incluir: Boolean;
begin

end;

function Socio.setIdSocio(IdSocio: Integer): Boolean;
begin

end;



function Socio.setIdSocio(IdSocio: string): Boolean;
begin

end;

end.
