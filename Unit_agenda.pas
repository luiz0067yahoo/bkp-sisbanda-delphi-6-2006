unit Unit_agenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Unit_tipo, Uvalidacao,ubanco, ExtCtrls, Buttons, Grids;

type
  Ttela_principal = class(TForm)
    Panel_menu: TPanel;
    Pesquisa: TPanel;
    Panel_de_cima_cadastro_StringGrid_grande: TPanel;
    Edit_nome_telefone_pesquisa: TEdit;
    ComboBox_grupo_contato_pesquisa: TComboBox;
    ComboBox_tipo_teltefone_pesquisa: TComboBox;
    SpeedButton_cancelar_grupo_pesquisa: TSpeedButton;
    SpeedButton_cancelar_pesquisa: TSpeedButton;
    SpeedButton_excluir_contato_pesquisa: TSpeedButton;
    SpeedButton_novo_contato_pesquisa: TSpeedButton;
    SpeedButton_Sair_pesquisa: TSpeedButton;
    Panel_dados_contato: TPanel;
    Pessoa: TPanel;
    SpeedButton_alterar_contato_pesquisa: TSpeedButton;
    PANEL_DO_GRID: TPanel;
    speedButton_ajuda: TSpeedButton;
    speedButton_sair: TSpeedButton;
    speedButton_Excluir_Numero: TSpeedButton;
    speedButton_Alterar_numero: TSpeedButton;
    speedButton_Excluir_contato: TSpeedButton;
    speedButton_Novo_numero: TSpeedButton;
    SpeedButton_imprimir: TSpeedButton;
    speedButton_incluir_contato: TSpeedButton;
    speedButton_alterar_cadastro: TSpeedButton;
    SpeedButton_novo_cotato: TSpeedButton;
    StringGrid_DADOS_PESSOA: TStringGrid;
    panel_dados_cadastrados: TPanel;
    Panel_meios_contato: TPanel;
    Panel_adicionar_remover_meios_contatos: TPanel;
    speedButton_Adicionar_telefone: TSpeedButton;
    SpeedButton_REMOVER_TELEFONE: TSpeedButton;
    SpeedButton_adicionar_email: TSpeedButton;
    SpeedButton_remover_email: TSpeedButton;
    SpeedButton_Adicionar_icq: TSpeedButton;
    SpeedButton_remover_icq: TSpeedButton;
    SpeedButton_adicionar_home_page: TSpeedButton;
    SpeedButton_remover_home_page: TSpeedButton;
    StringGrid_home_page: TStringGrid;
    StringGrid_icq: TStringGrid;
    StringGrid_Email: TStringGrid;
    StringGrid_telefones: TStringGrid;
    Panel_meno_anotacoes: TPanel;
    Panel_do_label_anotacoes: TPanel;
    Label1: TLabel;
    Memo_anotacoes: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SpeedButton_cancelar_pesquisaClick(Sender: TObject);
    procedure SpeedButton_novo_cotatoMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure speedButton_incluir_contatoMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure speedButton_alterar_cadastroMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure speedButton_Excluir_contatoMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_imprimirMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure speedButton_Novo_numeroMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure speedButton_Alterar_numeroMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure speedButton_Excluir_NumeroMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure speedButton_ajudaMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure speedButton_sairMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_cancelar_grupo_pesquisaMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_cancelar_pesquisaMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_excluir_contato_pesquisaMouseMove(
      Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_novo_contato_pesquisaMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_alterar_contato_pesquisaMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_Sair_pesquisaClick(Sender: TObject);
    procedure SpeedButton_Sair_pesquisaMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_REMOVER_TELEFONEMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure speedButton_Adicionar_telefoneMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_adicionar_emailMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_remover_emailMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_remover_icqMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_Adicionar_icqMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_adicionar_home_pageMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton_remover_home_pageMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure Edit_nome_telefone_pesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    altura,
    largura :integer;
    function Icones(imagem:TImage;linha1,linha2,local:string;fonte:TFont):TImage;
  end;

var
  tela_principal: Ttela_principal;
  Um_Tipo : tipo;
  Uma_validacao : valida;
  UM_banco : tdm;
implementation

uses Consts, Unit_estado;

{$R *.dfm}

procedure Ttela_principal.FormCreate(Sender: TObject);
var
  fonte:TFont;
begin

  //redimencionamento da janela    #####################################################

    tela_principal.Width:=400;
    tela_principal.Height:=300;
    tela_principal.WindowState:=wsMaximized;

  //#################################################################





  // fazendo as tabelas #############################################

  with StringGrid_DADOS_PESSOA do
  begin
    Cells[{coluna}0,{linha}0]:='Nome';
    //Cols[0].StringsAdapter.ReferenceStrings(Cols[0]);
    //cols[0].StringsAdapter.ReleaseStrings;
    //Cols[0].CommaText:='asdasdasdasd';
//     Cols[0].DelimitedText:='asdasdasdasdasdasdasdsadasd';

    Cols[0].
    Cells[{coluna}1,{linha}0]:='Grupo';
    //Cols[1].StringsAdapter.ReferenceStrings(Cols[1]);
    Cells[{coluna}2,{linha}0]:='Data nascimento';
  end;

  //################################################################






  //instanciando as classes       #####################################################

    Um_Tipo:=Tipo.create;

  //#######################################################################






  //carregando figuras       #####################################################

    fonte:=TFont.Create;
    fonte.Color:=clBlack;
    fonte.Size:=12;
    fonte.Name:='Arial';//'Courier New';
    fonte.Style:=[fsbold];
    //instaciação de fonte   #####################################################


    {novo_Contato     :=      Icones(novo_Contato    ,'Novo'     ,'Contato'  ,'.\figuras\novo.bmp',fonte);
    alterar_contato  :=      Icones(alterar_Contato ,'Alterar'  ,'Contato'  ,'.\figuras\Alterar.bmp',fonte);
    excluir_contato  :=      Icones(excluir_contato ,'Excluir'  ,'Contato'  ,'.\figuras\excluir.bmp',fonte);
    buscar_contato   :=      Icones(buscar_contato  ,'Buscar'   ,'Contato'  ,'.\figuras\Buscar.bmp',fonte);
    Grupos           :=      Icones(grupos          ,'Grupos'   ,''         ,'.\figuras\grupos.bmp',fonte);
    imprimir         :=      Icones(imprimir        ,'Imprimir' ,''         ,'.\figuras\imprimir.bmp',fonte);

    novo_telefone    :=      Icones(novo_telefone    ,'Novo'    ,'Telefone','.\figuras\novo.bmp',fonte);
    alterar_telefone :=      Icones(alterar_telefone ,'Alterar' ,'Telefone','.\figuras\Alterar.bmp',fonte);
    excluir_telefone :=      Icones(excluir_telefone ,'Excluir' ,'Telefone','.\figuras\excluir.bmp',fonte);

    ajuda            :=      Icones(ajuda            ,'Ajuda'    ,''       ,'.\figuras\Ajuda.bmp',fonte);
    senhas           :=      Icones(senhas           ,'Senhas'   ,''        ,'.\figuras\Senhas.bmp',fonte);
    Sair             :=      Icones(Sair             ,'Sair'     ,''        ,'.\figuras\Sair.bmp',fonte);}


  //ASDASDSADASDASDSADSADASDASDASDASDAS     #####################################################

end;



procedure Ttela_principal.Button1Click(Sender: TObject);

begin
    showmessage(dm.SelectMax('TIPO','IDTIPO'));
    Um_Tipo.Buscar('idtipo','1',true,1);
end;

procedure Ttela_principal.FormResize(Sender: TObject);
  var
    razao_largura:real;
    razao_altura:real;
    idcomponente:integer;

begin
  razao_largura := largura /tela_principal.Width;
  razao_altura  := altura  /tela_principal.Height;

  {with form1 do
  begin
    for idcomponente:=1 to ComponentCount do
    begin
      ComponentIndex:=idcomponente;
      //ComponentState.Height := ComponentState.Height * razao_largura;
      //ComponentState.Width  := ComponentState.Width  * razao_altura;
    end;
    largura:=Width;
    altura:=Height;
  end;}
end;
function Ttela_principal.Icones(imagem: TImage; linha1, linha2,
  local: string; fonte: TFont): TImage;
begin
  with imagem do
  begin
    Picture.LoadFromFile(local);
    Canvas.Font.name:=Fonte.name;
    Canvas.Font.Color:=Fonte.Color;
    Canvas.Font.Size:=Fonte.Size;
    canvas.Font.Style:=Fonte.Style;
    Canvas.TextOut(2,1   ,linha1);
    Canvas.TextOut(2,45  ,linha2);
  end;
end;


procedure Ttela_principal.SpeedButton_cancelar_pesquisaClick(Sender: TObject);
begin
  //DADOS_PESSOA.Cells[0,0]:='asd';//nome da coluna
  //DADOS_PESSOA.Cells[0,0]:='asd';//primeiro dado abaixo da coluna

{procedure DeleteRow(yourStringGrid: TStringGrid; ARow: Integer);
var i, j: Integer;
begin
  with yourStringGrid do
  begin
    for i := ARow to RowCount-2 do
      for j := 0 to ColCount-1 do
        Cells[j, i] := Cells[j, i+1];
    RowCount := RowCount - 1
  end;
end;}
end;

procedure Ttela_principal.SpeedButton_novo_cotatoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton_novo_cotato.Flat:=not SpeedButton_novo_cotato.Flat;
end;

procedure Ttela_principal.speedButton_incluir_contatoMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  speedButton_incluir_contato.Flat:=not speedButton_incluir_contato.Flat;
end;

procedure Ttela_principal.speedButton_alterar_cadastroMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  speedButton_alterar_cadastro.Flat:=not speedButton_alterar_cadastro.Flat;
end;

procedure Ttela_principal.speedButton_Excluir_contatoMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton_excluir_contato_pesquisa.Flat:=not SpeedButton_excluir_contato_pesquisa.Flat;
end;

procedure Ttela_principal.SpeedButton_imprimirMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton_imprimir.Flat:=not SpeedButton_imprimir.Flat;
end;

procedure Ttela_principal.speedButton_Novo_numeroMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  speedButton_Novo_numero.Flat:= not speedButton_Novo_numero.Flat;
end;

procedure Ttela_principal.speedButton_Alterar_numeroMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  speedButton_Alterar_numero.Flat:=not speedButton_Alterar_numero.Flat;
end;

procedure Ttela_principal.speedButton_Excluir_NumeroMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  speedButton_Excluir_Numero.Flat:=not speedButton_Excluir_Numero.Flat;
end;

procedure Ttela_principal.speedButton_ajudaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  speedButton_ajuda.Flat:=not speedButton_ajuda.Flat;
end;

procedure Ttela_principal.speedButton_sairMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  speedButton_sair.Flat:=not speedButton_sair.Flat;
end;

procedure Ttela_principal.SpeedButton_cancelar_grupo_pesquisaMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton_cancelar_grupo_pesquisa.Flat:=not SpeedButton_cancelar_grupo_pesquisa.Flat;
end;

procedure Ttela_principal.SpeedButton_cancelar_pesquisaMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton_cancelar_pesquisa.Flat := not SpeedButton_cancelar_pesquisa.Flat;
end;

procedure Ttela_principal.SpeedButton_excluir_contato_pesquisaMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton_excluir_contato_pesquisa.Flat:=not SpeedButton_excluir_contato_pesquisa.Flat;
end;

procedure Ttela_principal.SpeedButton_novo_contato_pesquisaMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton_novo_contato_pesquisa.Flat:=not SpeedButton_novo_contato_pesquisa.Flat;
end;

procedure Ttela_principal.SpeedButton_alterar_contato_pesquisaMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton_alterar_contato_pesquisa.Flat:=not SpeedButton_alterar_contato_pesquisa.Flat;
end;

procedure Ttela_principal.SpeedButton_Sair_pesquisaClick(Sender: TObject);
begin
  SpeedButton_sair_pesquisa.Flat:=not SpeedButton_sair_pesquisa.Flat;
end;

procedure Ttela_principal.SpeedButton_Sair_pesquisaMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton_Sair_pesquisa.Flat:=not SpeedButton_Sair_pesquisa.Flat;
end;

procedure Ttela_principal.SpeedButton_REMOVER_TELEFONEMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton_REMOVER_TELEFONE.Flat:=not SpeedButton_REMOVER_TELEFONE.Flat;
end;

procedure Ttela_principal.speedButton_Adicionar_telefoneMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  speedButton_Adicionar_telefone.Flat:=not speedButton_Adicionar_telefone.Flat;
end;

procedure Ttela_principal.SpeedButton_adicionar_emailMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton_adicionar_email.Flat:=not SpeedButton_adicionar_email.Flat;
end;

procedure Ttela_principal.SpeedButton_remover_emailMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton_remover_email.Flat:=not SpeedButton_remover_email.Flat;
end;

procedure Ttela_principal.SpeedButton_remover_icqMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton_remover_icq.Flat:=SpeedButton_remover_icq.Flat;
end;

procedure Ttela_principal.SpeedButton_Adicionar_icqMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton_Adicionar_icq.Flat:=not SpeedButton_Adicionar_icq.Flat;
end;

procedure Ttela_principal.SpeedButton_adicionar_home_pageMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton_adicionar_home_page.flat:= not SpeedButton_adicionar_home_page.flat;
end;

procedure Ttela_principal.SpeedButton_remover_home_pageMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton_remover_home_page.Flat:=not SpeedButton_remover_home_page.Flat;
end;

procedure Ttela_principal.Edit_nome_telefone_pesquisaChange(
  Sender: TObject);
begin
  ShowMessage('fazer a busca dessa coisa');
end;

end.

//criar todas as outras telas
//cliar todas as outras classes
//ciar a função de redimencionamento de componentes
//ciar uma funçã para manipular dados dostring grid
