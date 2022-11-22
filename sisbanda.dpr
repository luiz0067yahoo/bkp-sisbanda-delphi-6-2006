program sisbanda;

uses
  Forms,
  Uprincipal in 'Uprincipal.pas' {FPrincipal},
  UPessoa in 'Upessoa.pas',
  UValidacao in 'UValidacao.pas',
  UFuncao in 'UFuncao.pas',
  UEndereco in 'UEndereco.pas',
  UBanco in 'UBanco.pas' {DM: TDataModule},
  UPercentagem in 'UPercentagem.pas',
  UFixo in 'UFixo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
