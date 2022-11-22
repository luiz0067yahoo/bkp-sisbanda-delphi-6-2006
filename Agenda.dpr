program Agenda;

uses
  Forms,
  Unit_agenda in 'Unit_agenda.pas' {tela_principal},
  Unit_estados in 'Unit_estados.pas',
  UValidacao in 'UValidacao.pas',
  Consts in 'Consts.pas',
  Unit_estado in 'Unit_estado.pas',
  UBanco in 'UBanco.pas' {DM: TDataModule},
  Unit_cadastro_pessoa in 'Unit_cadastro_pessoa.pas' {Form1},
  Unit_tipo in 'Unit_tipo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Ttela_principal, tela_principal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
