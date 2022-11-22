unit Uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Pesquisa1: TMenuItem;
    Relatorio1: TMenuItem;
    Funcionario1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal : TFPrincipal;

implementation

uses UCadastroFuncionario;


{$R *.dfm}

end.
