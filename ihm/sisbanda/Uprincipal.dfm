object FPrincipal: TFPrincipal
  Left = 192
  Top = 107
  Width = 696
  Height = 480
  Caption = 'Sisbanda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object Cadastro1: TMenuItem
      Caption = '&Cadastro'
      object Funcionario1: TMenuItem
        Caption = '&Funcionario'
      end
    end
    object Pesquisa1: TMenuItem
      Caption = '&Pesquisa'
    end
    object Relatorio1: TMenuItem
      Caption = '&Relatorio'
    end
  end
end
