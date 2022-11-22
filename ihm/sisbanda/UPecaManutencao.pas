unit uPecaManutencao;

interface

uses Uvalidacao,SysUtils, Classes;

type
  PecaManutencao = class
  private
    { Private declarations }
    IdPecaManutencao     : Integer;
    IdPeca               : Integer;
    IdManutencao         : Integer;

  public
    { Public declarations }
    function setIdPecaManutencao(IdPecaManutencao:String): Boolean;
    function setIdPeca(IdPeca:String): Boolean;
    function setIdManutencao(IdManutencao:String): Boolean;

    function getIdPecaManutencao    :Integer;
    function getIdPeca              :Integer;
    function getIdManutencao        :Integer;

    
    constructor Create;overload;
    constructor Create(idPecaMunutencao,IdPeca,idMunutencao:string);overload;


    function incluir:Boolean;
    function Alterar(campoBusca,valorbusca,campo,valornovo: string): Boolean;
    function excluir(idPecaMunutencao:integer):boolean;overload;
    function excluir(idPecaMunutencao:String):boolean;overload;

    function BuscarCampo(valor, campo,campoRetorno: string; contem: boolean;posicao:integer): string;

   end;

 Var
  Validar: Valida;

implementation

{ PecaManutencao }


function PecaManutencao.Alterar(campoBusca, valorbusca, campo,
  valornovo: string): Boolean;
begin

end;



function PecaManutencao.BuscarCampo(valor, campo, campoRetorno: string;
  contem: boolean; posicao: integer): string;
begin

end;


constructor PecaManutencao.Create(idPecaMunutencao, IdPeca,
  idMunutencao: string);
begin

end;

constructor PecaManutencao.Create;
begin

end;

function PecaManutencao.excluir(idPecaMunutencao: String): boolean;
begin

end;

function PecaManutencao.excluir(idPecaMunutencao: integer): boolean;
begin

end;

function PecaManutencao.getIdManutencao: Integer;
begin
  Result:=IdManutencao;
end;

function PecaManutencao.getIdPeca: Integer;
begin
   Result:=IdPeca;
end;

function PecaManutencao.getIdPecaManutencao: Integer;
begin
   Result:=IdPecaManutencao;
end;



function PecaManutencao.incluir: Boolean;
begin

end;

function PecaManutencao.setIdManutencao(IdManutencao: String): Boolean;
begin
  if validar.inteiro (IdManutencao) Then
  begin
    Self.IdManutencao:=StrToInt(IdManutencao);
    Result:=true;
  end
  else
    Result:=false;
end;

function PecaManutencao.setIdPeca(IdPeca: String): Boolean;
begin
  if validar.Inteiro(IdPeca)Then
  begin
     Self.IdPeca:=StrToInt(IdPeca);
     Result:= true;
  end
  else
    Result:=false;
end;

function PecaManutencao.setIdPecaManutencao(IdPecaManutencao: String): Boolean;
begin
  if validar.inteiro(IdPecaManutencao) Then
  begin
    Self.IdPecaManutencao:=StrToInt(IdPecaManutencao);
    Result:= true;
    end
    else
      Result:=false;
  end;

End.
