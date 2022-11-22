unit Ulocacao;

interface

uses Uvalidacao,SysUtils, Classes,uequipamento,uveiculo;
 type
  locacao = class
  private
    { Private declarations }
    Idlocacao     : Integer;
    tequipamento  : equipamento;
    tveiculo      : veiculo;
    diaslocados   : integer;
    Data          : TDatetime;
    valor         : real;
  public
    { Public declarations }
    function SetIdlocacao(Idlocacao     : Integer):boolean;
    function SetIdData(IdData : Tdatetime):boolean;
    function SetIdObjeto(IdObjeto       : Integer):boolean;
    function SetValorTotal(ValorTotal    : real):boolean;
    function SetunidadeLocacao(unidadeLocacao: integer):boolean;
    function Settipo_locacao(tipo_locacao  : string):boolean;


    function getIdlocacao     : Integer;
    function getIdData        : Integer;
    function getIdObjeto      : Integer;
    function getValorTotal    : real;
    function getunidadeLocacao: integer;
    function gettipo_locacao  : string;

    function alterar(idLocacao,IdData,IdObjeto,ValorTotal,UnidadeLocacao:string):boolean;overload;
    function alterar(idLocacao:integer;Iddata:Integer;IdObjeto:Integer;Valortotal:Integer;UnidadeLocacao:String):boolean;overload;
    function excluir(idLocacao:integer):boolean;

    constructor create;overload;
    constructor create (idLocacao:integer;Iddata:Integer;IdObjeto:Integer;Valortotal:Integer;UnidadeLocacao:String);overload;
    constructor create (idLocacao,IdData,IdObjeto,ValorTotal,UnidadeLocacao:string);overload;
end;

implementation

{ locacao }

function locacao.alterar(idLocacao, Iddata, IdObjeto, Valortotal: Integer;
  UnidadeLocacao: String): boolean;
begin

end;

function locacao.alterar(idLocacao, IdData, IdObjeto, ValorTotal,
  UnidadeLocacao: string): boolean;
begin

end;

constructor locacao.create;
begin

end;

constructor locacao.create(idLocacao, IdData, IdObjeto, ValorTotal,
  UnidadeLocacao: string);
begin

end;

constructor locacao.create(idLocacao, Iddata, IdObjeto,
  Valortotal: Integer; UnidadeLocacao: String);
begin

end;

function locacao.excluir(idLocacao: integer): boolean;
begin

end;

function locacao.getIdData: Integer;
begin

end;

function locacao.getIdlocacao: Integer;
begin

end;

function locacao.getIdObjeto: Integer;
begin

end;

function locacao.gettipo_locacao: string;
begin

end;

function locacao.getunidadeLocacao: integer;
begin

end;

function locacao.getValorTotal: real;
begin

end;

function locacao.SetIdData(IdData: Tdatetime): boolean;
begin

end;

function locacao.SetIdlocacao(Idlocacao: Integer): boolean;
begin

end;

function locacao.SetIdObjeto(IdObjeto: Integer): boolean;
begin

end;

function locacao.Settipo_locacao(tipo_locacao: string): boolean;
begin

end;

function locacao.SetunidadeLocacao(unidadeLocacao: integer): boolean;
begin

end;

function locacao.SetValorTotal(ValorTotal: real): boolean;
begin

end;

end.
 