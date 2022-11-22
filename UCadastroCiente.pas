unit UCadastroCiente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  Upessoa;

type
  TFCadastroCliente = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadastroCliente: TFCadastroCliente;
  Tpessoa : pessoa;
implementation

{$R *.dfm}

procedure TFCadastroCliente.FormCreate(Sender: TObject);
begin
  Tpessoa := pessoa.create;
end;

end.
