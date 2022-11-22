unit uDeslocamento;

interface

uses Uvalidacao,SysUtils, Classes,uveiculo,umanutencao,urefeicao,uendereco;

type
  Deslocamento = class
  private
    { Private declarations }
    IdDeslocamento : Integer;
    trefeicao      : refeicao;
    tVeiculo        : veiculo;
    tManutencao    : manutencao;
    EnderecoInicio : endereco;
    HorasViagem    : TDateTime;
    LitrosGastos   : Real;
    Distancia      : integer;
  public
    { Public declarations }
    Function setIdDeslocamento(IdDeslocamento:string): Boolean;
    function settrefeicao(idrefeicao:string):boolean;
    Function settVeiculo(Veiculo:string): Boolean;
    Function settManutencao(idManutencao:string): Boolean;
    Function setEnderecoInicio(EnderecoInicio:string): Boolean;
    Function setHorasViagem(HorasViagem:string): Boolean;
    Function setLitrosGastos(LitrosGastos:string): Boolean;
    Function setDistancia(Distancia:string): Boolean;

    Function getIdDeslocamento   :Integer;
    Function gettVeiculo         :Veiculo;
    Function gettManutencao      :manutencao;
    Function getEnderecoInicio   :endereco;
    Function getLitrosGastos     :Real;
    Function getDistancia        :Integer;

    constructor Create;overload;
    constructor Create(IdDeslocamento,Veiculo,Manutencao,EnderecoInicio,EnderecoFim,LitrosGastos,Distancia:string);overload;

    function incluir:Boolean;
    function Alterar(tabela,campo:string):Boolean;
    function buscar(Valor,campo: string;contem:boolean;proximo:integer):Deslocamento;
    function excluir(idDeslocamento:integer):boolean;overload;
    function excluir(idDeslocamento:String):boolean;overload;
    function BuscarCampo(valor, campo,campoRetorno: string; contem: boolean;proximo:integer): string;
  end;


implementation
{ Deslocamento }

function Deslocamento.Alterar(tabela, campo: string): Boolean;
begin

end;

function Deslocamento.buscar(Valor, campo: string; contem: boolean;
  proximo: integer): Deslocamento;
begin
  
end;

function Deslocamento.BuscarCampo(valor, campo, campoRetorno: string;
  contem: boolean; proximo: integer): string;
begin

end;

constructor Deslocamento.Create(IdDeslocamento, Veiculo, Manutencao,
  EnderecoInicio, EnderecoFim, LitrosGastos, Distancia: string);
begin

end;

constructor Deslocamento.Create;
begin

end;

function Deslocamento.excluir(idDeslocamento: String): boolean;
begin

end;

function Deslocamento.excluir(idDeslocamento: integer): boolean;
begin

end;

function Deslocamento.getDistancia: Integer;
begin

end;


function Deslocamento.getEnderecoInicio: endereco;
begin

end;

function Deslocamento.getIdDeslocamento: Integer;
begin

end;

function Deslocamento.getLitrosGastos: Real;
begin

end;

function Deslocamento.gettManutencao: Manutencao;
begin

end;

function Deslocamento.gettVeiculo: veiculo;
begin

end;

function Deslocamento.incluir: Boolean;
begin

end;

function Deslocamento.setDistancia(Distancia: string): Boolean;
begin

end;


function Deslocamento.setEnderecoInicio(EnderecoInicio: string): Boolean;
begin

end;

function Deslocamento.setHorasViagem(HorasViagem: string): Boolean;
begin

end;

function Deslocamento.setIdDeslocamento(IdDeslocamento: string): Boolean;
begin

end;

function Deslocamento.setLitrosGastos(LitrosGastos: string): Boolean;
begin

end;



function Deslocamento.settManutencao(idManutencao: string): Boolean;
begin

end;

function Deslocamento.settrefeicao(idrefeicao: string): boolean;
begin

end;

function Deslocamento.settVeiculo(Veiculo: string): Boolean;
begin

end;


End.
