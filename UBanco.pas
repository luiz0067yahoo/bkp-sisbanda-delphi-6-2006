unit UBanco;

interface

uses
  SysUtils, Messages,Dialogs,Classes, DB, IBDatabase, IBCustomDataSet, IBQuery;

type
  TDM = class(TDataModule)
    IbQuery: TIBQuery;
    banco: TIBDatabase;
    trasacao: TIBTransaction;
    DataSource: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    function SelectMax              (tabela , campo : string)                   : String;
    function Autoincremento         (tabela , campo : string)                   : String;
    function valorExistente         (tabela , campo : string ; valor : integer) : boolean;
    function setSQL                 (SQL : String ; executa : boolean)          : Boolean;
    function Listatabelas                                               :string;
    function ListarCamposDatabela (tabela:string):string;

    function Inserir(tabela,campos,dados:string):Boolean;
    function Deletar(tabela,CAMPO,VALOR:string):boolean;
    function Buscar(tabela,CampoBusca,VALOR: string;CampoRetorno:string;contem:boolean;proximo:integer): string;
    function Alterar(tabela,campobusca,valorbusca,campo,NovoValor:string):boolean;
end;


var
  DM: TDM;

implementation

{$R *.dfm}

{ TDM }

function TDM.setSQL(SQL: String; executa:boolean): Boolean;
begin
  try
    ibQuery.close;
    ibQuery.SQL.Clear;
    ibQuery.SQL.Add(sql);
                              InputBox('asd','asd',sql);
    ibQuery.Prepare;
    if executa then
      ibQuery.ExecSQL
    else
      ibQuery.Open;

    Result:=true;
  except
    Result:=false;
  end;
end;

function TDM.selectmax(tabela, campo: string): String;
begin
  if setSQL('select '+campo+' from '+tabela+' where ('+campo+' = (select max('+campo+') from '+tabela+'))',false) then
  begin
    try
      ibQuery.FieldByName(campo).AsInteger;
      result:= ibQuery.FieldByName(campo).AsString;
    except
      result:='null';
    end;
  end
  else
    result:='Erro na setSQl';
end;

function TDM.Autoincremento(tabela , campo: string): String;
begin
  if setSQL('select '+campo+' from '+tabela+' where ('+campo+' = (select max('+campo+') from '+tabela+'))',false) then
  begin
    try
      result:= IntToStr(ibQuery.FieldByName(campo).AsInteger+1);
      //PARAMBYNAME TA COM ERRO MUITO LOKO TEM ATÉ UM PRINT SCREEN DESSA BOSTA ALGUEM ME AJUDE
    except
      result:='1';
    end;
  end
  else
    result:='Erro na setSQl';
end;

function TDM.Deletar(tabela,CAMPO,VALOR:string): boolean;
begin
  Result:=setSQL('DELETE FROM '+tabela+' WHERE ('+CAMPO+' = '+VALOR+');',True);
end;

function TDM.Inserir(tabela,campos,dados:string): Boolean;
begin
 if campos = '' then
   result:=setSQL('INSERT INTO '+tabela+' ('+ListarCamposDatabela(tabela)+') VALUES ('+dados+')',True)
 else
   result:=setSQL('INSERT INTO '+tabela+' ('+campos+') VALUES ('+dados+')',True)
end;

function TDM.Alterar(tabela, campobusca, valorbusca, campo,
  NovoValor: string): boolean;
begin
  RESULT:=setSQL('update '+tabela+' set '+campo+' = '+NovoValor+' where ('+campobusca+' = '+valorbusca+');',FALSE)
end;

function TDM.Buscar(tabela,CampoBusca,VALOR: string; CampoRetorno:string;contem:boolean;proximo:integer): string;
var
  sql:String;
begin
  if not contem then
    sql:='Select '+CampoRetorno+' FROM '+tabela+' WHERE ('+CampoBusca+' = '+VALOR+');'
  else
    sql:='Select '+CampoRetorno+' FROM '+tabela+' like ('+CampoBusca+' = %'+QuotedStr(VALOR)+'%);';

  if setSQL(sql,false) then
  begin
    IbQuery.Prior;
    IbQuery.MoveBy(proximo);
    result:=IbQuery.FieldByName(CampoRetorno).AsString;
  end
  else
    result:='';
end;

function TDM.valorexistente(tabela, campo : string ; valor : integer) : boolean;
begin
  if setSQL('select '+campo+' from '+tabela+' where ('+campo+' = '+IntToStr(valor),false) then
    try
      Result:=(ibQuery.FieldByName(campo).AsInteger = valor);
    except
      result:=false;
    end;
end;

function TDM.Listatabelas: string;
begin
  //if setSQL('select RDB$Relation_name from RDB$USER_PRIVILEGES where (rdb$privilege = '+Quoat('i')+' ) and (RDB$Relation_name <> 'RDB$ROLES')',false) then
end;

function TDM.ListarCamposDatabela(tabela:string): string;
var
  acumulador,acumulador1:string;
  i:integer;
begin
  acumulador:='';
  if setSQL('select RDB$CHECK_CONSTRAINTS.RDB$TRIGGER_NAME from RDB$CHECK_CONSTRAINTS,RDB$RELATION_CONSTRAINTS where(RDB$RELATION_CONSTRAINTS.RDB$CONSTRAINT_NAME = RDB$CHECK_CONSTRAINTS.RDB$CONSTRAINT_NAME) AND (RDB$RELATION_CONSTRAINTS.RDB$RELATION_NAME = '+QuotedStr(tabela)+' );',false) then
  begin
    IbQuery.prior;
    while not IbQuery.Eof do
    begin
      acumulador:=acumulador+','+IbQuery.FieldByName('RDB$CHECK_CONSTRAINTS.RDB$TRIGGER_NAME').AsString;
      IbQuery.Next;
    end;
    acumulador1:='';
    for i:=2 to length(acumulador) do
      acumulador1:=acumulador1+acumulador[i];
    Result:=acumulador1;
  end;
end;

end.
