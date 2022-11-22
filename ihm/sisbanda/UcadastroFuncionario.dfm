object cadastroFuncionario: TcadastroFuncionario
  Left = 206
  Top = 120
  Width = 410
  Height = 480
  Caption = 'Cadastro funcion'#225'rio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object l: TLabel
    Left = 64
    Top = 104
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object Label1: TLabel
    Left = 64
    Top = 152
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label2: TLabel
    Left = 64
    Top = 240
    Width = 54
    Height = 13
    Caption = 'Logradouro'
  end
  object Label3: TLabel
    Left = 64
    Top = 192
    Width = 27
    Height = 13
    Caption = 'Bairro'
  end
  object Label4: TLabel
    Left = 64
    Top = 328
    Width = 37
    Height = 13
    Caption = 'Numero'
  end
  object Label5: TLabel
    Left = 64
    Top = 376
    Width = 64
    Height = 13
    Caption = 'Complemento'
  end
  object Label6: TLabel
    Left = 64
    Top = 64
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label7: TLabel
    Left = 64
    Top = 16
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object Label8: TLabel
    Left = 64
    Top = 280
    Width = 21
    Height = 13
    Caption = 'CEP'
  end
  object Label9: TLabel
    Left = 232
    Top = 16
    Width = 36
    Height = 13
    Caption = 'Fun'#231#227'o'
  end
  object Label10: TLabel
    Left = 216
    Top = 168
    Width = 29
    Height = 13
    Caption = 'Grupo'
  end
  object Label11: TLabel
    Left = 216
    Top = 237
    Width = 32
    Height = 13
    Caption = 'Salario'
  end
  object adicionar: TButton
    Left = 216
    Top = 128
    Width = 57
    Height = 25
    Caption = 'adicionar'
    TabOrder = 9
  end
  object remover: TButton
    Left = 280
    Top = 128
    Width = 57
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = 'remover'
    ParentBiDiMode = False
    TabOrder = 10
  end
  object salario: TEdit
    Left = 216
    Top = 296
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 11
  end
  object FIXO: TRadioButton
    Left = 216
    Top = 256
    Width = 113
    Height = 17
    Caption = 'FIXO'
    TabOrder = 12
  end
  object PORCENTAGEM: TRadioButton
    Left = 216
    Top = 272
    Width = 113
    Height = 17
    Caption = 'PORCENTAGEM'
    TabOrder = 13
  end
  object estado: TEdit
    Left = 64
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object cidade: TEdit
    Left = 64
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object bairro: TEdit
    Left = 64
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object rua: TEdit
    Left = 64
    Top = 256
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object numero: TEdit
    Left = 64
    Top = 344
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object proximidade: TEdit
    Left = 64
    Top = 392
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Nome: TEdit
    Left = 64
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyUp = NomeKeyUp
  end
  object Telefone: TEdit
    Left = 64
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object cadastrar: TButton
    Left = 312
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 14
  end
  object CEP: TEdit
    Left = 64
    Top = 296
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Button1: TButton
    Left = 280
    Top = 216
    Width = 81
    Height = 25
    Caption = 'Novo Grupo'
    TabOrder = 15
  end
  object ListBox1: TListBox
    Left = 216
    Top = 32
    Width = 153
    Height = 89
    ItemHeight = 13
    Items.Strings = (
      'Vocal'
      'Gaitero'
      'Guitarista'
      'Baixista')
    TabOrder = 16
  end
  object ComboBox1: TComboBox
    Left = 224
    Top = 192
    Width = 145
    Height = 21
    ItemHeight = 13
    ItemIndex = 2
    TabOrder = 17
    Text = 'Produ'#231#227'o'
    Items.Strings = (
      'Motorista'
      'Dan'#231'arino'
      'Produ'#231#227'o')
  end
  object Button2: TButton
    Left = 216
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 18
  end
end
