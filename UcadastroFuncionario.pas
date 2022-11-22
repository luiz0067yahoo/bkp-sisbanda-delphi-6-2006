unit UcadastroFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids,
  Buttons ;

type
  TFrmcadfuncionario = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    nome: TEdit;
    TELEFONE1: TMaskEdit;
    l: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    cidade: TEdit;
    bairro: TEdit;
    rua: TEdit;
    proximidade: TEdit;
    CEP: TMaskEdit;
    Numero: TMaskEdit;
    Estado: TMaskEdit;
    Panel3: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    adicionar: TButton;
    remover: TButton;
    salario: TEdit;
    FIXO1: TRadioButton;
    PORCENTAGEM1: TRadioButton;
    Button1: TButton;
    funcaofuncionario: TListBox;
    Grupo: TComboBox;
    Panel4: TPanel;
    bbconfirmar: TBitBtn;
    bbcancelar: TBitBtn;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure nomeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TelefoneKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure estadoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cidadeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bairroKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ruaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CEPKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure numeroKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure proximidadeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure funcaofuncionarioKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GrupoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FIXO1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PORCENTAGEM1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure salarioKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cadastrarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure nomeExit(Sender: TObject);
    procedure adicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TELEFONE1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TELEFONE1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation


uses UFuncao, UEndereco,
  UPercentagem, Ufixo , ufuncionario;

var
 tfuncionario: Funcionario;
 Tfixo    :fixo;
 Tendereco:endereco;

{$R *.dfm}



procedure TFrmcadfuncionario.nomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmcadfuncionario.TelefoneKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmcadfuncionario.estadoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmcadfuncionario.cidadeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmcadfuncionario.bairroKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmcadfuncionario.ruaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmcadfuncionario.CEPKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmcadfuncionario.numeroKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmcadfuncionario.proximidadeKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmcadfuncionario.funcaofuncionarioKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmcadfuncionario.GrupoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmcadfuncionario.FIXO1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmcadfuncionario.PORCENTAGEM1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmcadfuncionario.salarioKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmcadfuncionario.cadastrarKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmcadfuncionario.Button2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmcadfuncionario.nomeExit(Sender: TObject);
begin
  if not tFuncionario.setnome(nome.text) then
    Nome.SetFocus;
end;

procedure TFrmcadfuncionario.adicionarClick(Sender: TObject);
begin


end;

procedure TFrmcadfuncionario.FormCreate(Sender: TObject);
begin
  tfuncionario:= Funcionario.Create;
  Tfixo:= Fixo.Create;
  Tendereco:= Endereco.Create;
end;

procedure TFrmcadfuncionario.TELEFONE1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmcadfuncionario.TELEFONE1Exit(Sender: TObject);
begin
  if not tfuncionario.Settelefone(TELEFONE1.Text) then
    telefone1.SetFocus;
end;

end.


