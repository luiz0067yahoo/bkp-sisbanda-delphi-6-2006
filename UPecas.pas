unit uPecas;

interface


uses Uvalidacao,SysUtils, Classes,uloja;

type
Pecas = class
  private
    { Private declarations }
    IdPecas            : Integer;
    LojaPeca           : loja;
    Data               : TDateTime;
    Loja               : string;
    Valor              : Real;
    Descricao          : string;
  public
    { Public declarations }
    Function setIdPecas(IdPecas:Integer): Boolean;
    Function setEnderecoDaLojaPeca(EnderecoDaLojaPeca:Integer): Boolean;
    Function setData(Data:TDateTime): Boolean;
    Function setLoja(Loja:string): Boolean;
    Function SetValor(Valor:Real): Boolean;
    Function setDescricao(Descricao:string):Boolean;
    Function getIdPecas           :Integer;
    Function getEnderecoDaLojaPeca:Integer;
    Function getData              :TDateTime;
    Function getLoja              :string;
    Function getValor             :Real;
    Function getDescricao         :string;


    constructor Create;overload;
    constructor Create(idPeca,idLoja,Data,Loja,Valor,Descricao:string);overload;
    constructor Create(idPeca:Integer;idLoja:integer;Data:tdatetime;Loja:integer;Valor,Descricao:string);overload;
    constructor Create(idPeca:Integer;tLoja:loja;Data:tdatetime;Loja:loja;Valor,Descricao:string);overload;


    function inserir:boolean;
    function Alterar(Campobusca,valorbusca,campo,novovalor:string):boolean;overload;
    function Alterar(idpecas:integer;campo,novovalor:string):boolean;overload;
    function Alterar(idpecas:string;campo,novovalor:string):boolean;overload;
    function Excluir(idpecas:integer):boolean;overload;
    function Excluir(idpecas:String):boolean;overload;
    function Buscar(idpecas:string):pecas; overload;
    function Buscar(idpecas:integer):pecas; overload;
    function buscar(Campo,valor:string;contem:boolean;proximo:integer):pecas;overload;


  end;


implementation
{ Pecas }




function Pecas.Alterar(idpecas, campo, novovalor: string): boolean;
begin

end;

function Pecas.Alterar(idpecas: integer; campo,
  novovalor: string): boolean;
begin

end;

function Pecas.Alterar(Campobusca, valorbusca, campo,
  novovalor: string): boolean;
begin

end;

function Pecas.Buscar(Idpecas: string): pecas;
begin

end;

function Pecas.Buscar(Campo, valor: string; contem: boolean;
  proximo: integer): pecas;
begin

end;

function Pecas.Buscar(idpecas: integer): pecas;
begin

end;



constructor Pecas.Create;
begin

end;






constructor Pecas.Create(idPeca, idLoja, Data, Loja, Valor,
  Descricao: string);
begin

end;

constructor Pecas.Create(idPeca, idLoja: integer; Data: tdatetime;
  Loja: integer; Valor, Descricao: string);
begin

end;

constructor Pecas.Create(idPeca: Integer; tLoja: loja; Data: tdatetime;
  Loja: loja; Valor, Descricao: string);
begin

end;

function Pecas.Excluir(Idpecas: String): boolean;
begin

end;

function Pecas.Excluir(Idpecas: integer): boolean;
begin

end;

function Pecas.getData: TDateTime;
begin

end;

function Pecas.getDescricao: string;
begin

end;

function Pecas.getEnderecoDaLojaPeca: Integer;
begin

end;

function Pecas.getIdPecas: Integer;
begin

end;

function Pecas.getLoja: string;
begin

end;

function Pecas.getValor: Real;
begin

end;


function Pecas.inserir: boolean;
begin

end;

function Pecas.setData(Data: TDateTime): Boolean;
begin

end;

function Pecas.setDescricao(Descricao: string): Boolean;
begin

end;

function Pecas.setEnderecoDaLojaPeca(EnderecoDaLojaPeca: Integer): Boolean;
begin

end;

function Pecas.setIdPecas(IdPecas: Integer): Boolean;
begin

end;

function Pecas.setLoja(Loja: string): Boolean;
begin

end;

function Pecas.SetValor(Valor: Real): Boolean;
begin

end;


End.
