unit UClube;

interface

uses Uvalidacao,SysUtils, Classes;

type
  Clube = class
  private
    { Private declarations }
    IdClube           : Integer;
    IdRepresentante   : Integer;
    Nome              : String;
    IdEndereco        :Integer;
  public
    { Public declarations }




    function Alterar(tabela,campo:string):Boolean;
    function BuscarCampo(valor, campo,campoRetorno: string; contem: boolean): string;


end;


var
  validar:valida;


implementation

{ Clube }

function Clube.Alterar(tabela, campo: string): Boolean;
begin

end;

//function Clube.buscar(valor, campo: string; contem: boolean): Clube;
///begin
  ///result:=Create
 /// (
//  BuscarCampo(valor,campo,'idClube',contem),
///  BuscarCampo(valor,campo,'IdRepresentante',contem),
///  BuscarCampo(valor,campo,'Nome',contem)
//  BuscarCampo(valor,campo,'IdEndereco',contem)
 // );
//end;

function Clube.BuscarCampo(valor, campo, campoRetorno: string;
  contem: boolean): string;
begin
//  Result:=tbanco.BuscarDados('Clube',CAMPO,VALOR,Camporetorno,contem,1)
end;

//constructor Clube.Create(idClube, IdRepresentante, Nome,
//  IdEndereco: Integer);
//begin
//// setIdClube(idClube);
/// settIdRepresentante(IdRepresentante);
// settNome(Nome);
// settIdEndereco(IdEndereco);
//end;

//constructor Clube.Create(idClube, IdRepresentante, Nome,
//  IdEndereco: string);
//begin
// setIdShowClube(IdClube);
// settIdRepresentante(IdRepresentante);
/// settNome(Nome);
/// settIdEndereco(IdEndereco);

///constructor Clube.Create;
///begin
//   idClube:=0;
//end;

///function Clube.excluir(idClube: String): boolean;
//begin
//  Result:=tbanco.DeletarDados('Clube','IdClube','IdClube);
//end;

//function Clube.excluir(idClube: integer): boolean;
//begin
//  Result:=excluir(IntToStr(idClube));
//end;

//function Clube.getIdClube: Integer;
//begin
///  Result:=IdClube;
//end;

//function Clube.getIdEndereco: Integer;
//begin
//  Result:=IdEndereco;
//end;

//function Clube.getIdRepresentante: Integer;
//begin
//  Result:=IdRepresentante;
//end;

///function Clube.getNome: String;
//begin
///   Result:=Nome;
//end;

///function Clube.incluir: Boolean;
//begin

//end;

//function Clube.setIdClube(IdClube: String): Boolean;
//begin
//  if validar.Inteiro(IdClube) then
///  begin
//    Self.IdClube:=StrToInt(IdClube);
//    Result:=true;
//  end
//  else
  //  Result:=false;
//end;


//function Clube.setIdEndereco(IdEndereco: String): Boolean;
//begin
//     if validar.inteiro(IdEndereco) then
//  begin
//    Self.Idendereco:=StrToInt(IdEndereco);
//    Result:=true;
//  end
//  else
//    Result:=false;
//end;


//function Clube.setIdRepresentante(IdRepresentante: String): Boolean;
//begin
//     if validar.inteiro(IdRepresentante) then
//  begin
//    Self.IdRepresentante:=StrToInt(IdRepresentante);
//    Result:=true;
//  end
//  else
//    Result:=false;
//end;

//function Clube.setNome(Nome: String): Boolean;
//begin
//     if validar.Texto(Nome,5,50) then
//  begin
//    Self.Nome:=Nome;
 //   Result:=true;
//  end
//  else
//    Result:=false;
//end;

end.
