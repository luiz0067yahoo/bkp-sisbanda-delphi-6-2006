object tela_principal: Ttela_principal
  Left = 268
  Top = 103
  Width = 400
  Height = 300
  Caption = 'Lista Telef'#244'nica'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_menu: TPanel
    Left = 0
    Top = 0
    Width = 95
    Height = 266
    Align = alLeft
    TabOrder = 0
    object speedButton_ajuda: TSpeedButton
      Left = 0
      Top = 216
      Width = 100
      Height = 27
      Caption = 'Ajuda'
      OnMouseMove = speedButton_ajudaMouseMove
    end
    object speedButton_sair: TSpeedButton
      Left = 0
      Top = 243
      Width = 100
      Height = 27
      Caption = 'Sair'
      OnMouseMove = speedButton_sairMouseMove
    end
    object speedButton_Excluir_Numero: TSpeedButton
      Left = 0
      Top = 189
      Width = 100
      Height = 27
      Hint = 'merda'
      Caption = 'Excluir N'#250'mero'
      OnMouseMove = speedButton_Excluir_NumeroMouseMove
    end
    object speedButton_Alterar_numero: TSpeedButton
      Left = 0
      Top = 162
      Width = 100
      Height = 27
      Hint = 'merda'
      Caption = 'Alterar N'#250'mero'
      OnMouseMove = speedButton_Alterar_numeroMouseMove
    end
    object speedButton_Excluir_contato: TSpeedButton
      Left = 0
      Top = 81
      Width = 100
      Height = 27
      Hint = 'merda'
      Caption = 'Excluir Contato'
      OnMouseMove = speedButton_Excluir_contatoMouseMove
    end
    object speedButton_Novo_numero: TSpeedButton
      Left = 0
      Top = 135
      Width = 100
      Height = 27
      Hint = 'merda'
      Caption = 'Novo N'#250'mero'
      OnMouseMove = speedButton_Novo_numeroMouseMove
    end
    object SpeedButton_imprimir: TSpeedButton
      Left = 0
      Top = 108
      Width = 100
      Height = 27
      Hint = 'merda'
      Caption = 'Imprimir'
      OnMouseMove = SpeedButton_imprimirMouseMove
    end
    object speedButton_incluir_contato: TSpeedButton
      Left = 0
      Top = 27
      Width = 100
      Height = 27
      Hint = 'merda'
      Caption = 'Incluir contato'
      OnMouseMove = speedButton_incluir_contatoMouseMove
    end
    object speedButton_alterar_cadastro: TSpeedButton
      Left = 0
      Top = 54
      Width = 100
      Height = 27
      Hint = 'merda'
      Caption = 'Alterar Contanto'
      OnMouseMove = speedButton_alterar_cadastroMouseMove
    end
    object SpeedButton_novo_cotato: TSpeedButton
      Left = 0
      Top = 0
      Width = 100
      Height = 27
      Hint = 'merda'
      Caption = '&Novo Cotato'
      OnMouseMove = SpeedButton_novo_cotatoMouseMove
    end
  end
  object Panel_de_cima_cadastro_StringGrid_grande: TPanel
    Left = 95
    Top = 0
    Width = 297
    Height = 266
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
    object Pesquisa: TPanel
      Left = 1
      Top = 1
      Width = 295
      Height = 40
      Align = alTop
      TabOrder = 0
      object SpeedButton_cancelar_grupo_pesquisa: TSpeedButton
        Tag = 10
        Left = 99
        Top = 5
        Width = 25
        Height = 25
        Glyph.Data = {
          AA040000424DAA04000000000000360000002800000014000000130000000100
          18000000000074040000C30E0000C30E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBEBEBEC5C5C5C4C4C4C9C9C98383838E8E8E8989897272
          72B4B4B4BEBEBEC8C8C8BDBDBDBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBDBDBED1D1CFB3B3AE7F7F751B1B0A2F2F1F2B2B1B4B4B3DAAAAA4777776
          848484929292D2D2D2BEBEBEBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBCBCBED7D7
          C991919600001D00004400008A00008000008200007400000C74746B8080807A
          7A7A8A8A8ACACACABEBEBEBFBFBFBFBFBFBFBFBFBCBCBEEFEFD05B5B8F000052
          00008C0000900000D60000D00000D30000B80000750000431111009A9A997676
          76898989D2D2D2BDBDBDBFBFBFBDBDBFDEDEBA54549700007D0000B31E1E7679
          79E6E9E9B8D8D8BDDCDCBCC0C0C32F2FFF00009A0000520404009494937C7C7C
          8F8F8FC8C8C8BDBDBFD8D8B74E4EE30000B7000076343480E5E5CBD0D0B9BDBD
          BFBEBEBFBCBCBEDBDBC6C9C9A00000A300009C0000510F0F00818181818181BC
          BCBCBFBFBEDDDDBB0000D20000701F1F79C0C0A3C4C4C5BDBDBFBFBFBFBDBDBE
          D4D4C79D9DAC0000690000C31212AD05059F0000406C6C607A7A7AAEAEAEDFDF
          B44E4EFF00006A00005D97977FD1D1D2BDBDBEBFBFBFBDBDBED8D8C9A8A8B000
          00670000A4000065EDEDAC0E0EFF000054000000ABABA8737373A9A9D00000A3
          000066525247898987CACACABEBEBEBDBDBED5D5C89898A900006A00009D0000
          67D7D7C6CBCBC2CCCCC10000C30000833B3B2C8C8C8CA5A5D20000A800006551
          5142878787CBCBCBBCBCBDDADACAA1A1AC00006800009B040468CECEC2C6C6C2
          BFBFBECBCBC20000C600007E3131218D8D8DA6A6D10000A90000665050428888
          88C9C9CAD5D5C89393A700006A00009C000066E0E0C9C6C6C2BEBEBEC0C0BEC9
          C9C30000C500007D3232228C8C8CA0A0D400009C0000615F5F4B808081B3B3A0
          9999AD00006B00009B0B0B69D5D5C5C2C2C1BEBEBEBFBFBFBDBDBFE3E3BE0000
          CC00008D1B1B0AC8C8C8D5D5BA3E3EE500007402023995957E67678100007300
          0098000067E3E3CAC5C5C2BEBEBEBFBFBFBCBCBEE0E0BB3737E200007E000023
          A2A29BC6C6C6CACABB9696D30000F500003557577C00008000009B191977E8E8
          D3BFBFBFBEBEBEBEBEBEBDBDBED2D2CCC9C9C004045B000093252539BCBCB8C2
          C2C2BCBCBFF2F2AE0000FF00009C0000790000C10404789E9E8983837FD2D2D2
          C6C6C6C8C8C8DBDBD592928504046B0000D4000039B0B0AAC9C9C8BEBEBEBFBF
          BFBDBDBFDFDFB41010FF0000980000696A6A567474699595948181818484837C
          7C7559595C000079000093000064ADADBCD2D2CBBDBDBEBFBFBFBFBFBFBEBEBF
          C5C5BCDBDBB50000FF00009F00004D09094F2626142222182323151C1C2F0000
          7D0000780000B2A6A6ACD4D4C7BDBDBEBFBFBFBFBFBFBFBFBFBFBFBFBEBEBFBF
          BFBEE2E2B44545F40000FF0000810000800000840000830000850000954343F2
          A7A7D9D1D1BFBDBDBEBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBEBEBFBFBF
          BFE0E0B3B4B4C66E6ED00000D90000DA0000DB2A2AD2B2B2D4DBDBB6C7C7BBBD
          BDBFBFBFBFBFBFBFBFBFBFBFBFBF}
        OnMouseMove = SpeedButton_cancelar_grupo_pesquisaMouseMove
      end
      object SpeedButton_cancelar_pesquisa: TSpeedButton
        Tag = 10
        Left = 175
        Top = 5
        Width = 25
        Height = 25
        Glyph.Data = {
          AA040000424DAA04000000000000360000002800000014000000130000000100
          18000000000074040000C30E0000C30E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBEBEBEC5C5C5C4C4C4C9C9C98383838E8E8E8989897272
          72B4B4B4BEBEBEC8C8C8BDBDBDBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBDBDBED1D1CFB3B3AE7F7F751B1B0A2F2F1F2B2B1B4B4B3DAAAAA4777776
          848484929292D2D2D2BEBEBEBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBCBCBED7D7
          C991919600001D00004400008A00008000008200007400000C74746B8080807A
          7A7A8A8A8ACACACABEBEBEBFBFBFBFBFBFBFBFBFBCBCBEEFEFD05B5B8F000052
          00008C0000900000D60000D00000D30000B80000750000431111009A9A997676
          76898989D2D2D2BDBDBDBFBFBFBDBDBFDEDEBA54549700007D0000B31E1E7679
          79E6E9E9B8D8D8BDDCDCBCC0C0C32F2FFF00009A0000520404009494937C7C7C
          8F8F8FC8C8C8BDBDBFD8D8B74E4EE30000B7000076343480E5E5CBD0D0B9BDBD
          BFBEBEBFBCBCBEDBDBC6C9C9A00000A300009C0000510F0F00818181818181BC
          BCBCBFBFBEDDDDBB0000D20000701F1F79C0C0A3C4C4C5BDBDBFBFBFBFBDBDBE
          D4D4C79D9DAC0000690000C31212AD05059F0000406C6C607A7A7AAEAEAEDFDF
          B44E4EFF00006A00005D97977FD1D1D2BDBDBEBFBFBFBDBDBED8D8C9A8A8B000
          00670000A4000065EDEDAC0E0EFF000054000000ABABA8737373A9A9D00000A3
          000066525247898987CACACABEBEBEBDBDBED5D5C89898A900006A00009D0000
          67D7D7C6CBCBC2CCCCC10000C30000833B3B2C8C8C8CA5A5D20000A800006551
          5142878787CBCBCBBCBCBDDADACAA1A1AC00006800009B040468CECEC2C6C6C2
          BFBFBECBCBC20000C600007E3131218D8D8DA6A6D10000A90000665050428888
          88C9C9CAD5D5C89393A700006A00009C000066E0E0C9C6C6C2BEBEBEC0C0BEC9
          C9C30000C500007D3232228C8C8CA0A0D400009C0000615F5F4B808081B3B3A0
          9999AD00006B00009B0B0B69D5D5C5C2C2C1BEBEBEBFBFBFBDBDBFE3E3BE0000
          CC00008D1B1B0AC8C8C8D5D5BA3E3EE500007402023995957E67678100007300
          0098000067E3E3CAC5C5C2BEBEBEBFBFBFBCBCBEE0E0BB3737E200007E000023
          A2A29BC6C6C6CACABB9696D30000F500003557577C00008000009B191977E8E8
          D3BFBFBFBEBEBEBEBEBEBDBDBED2D2CCC9C9C004045B000093252539BCBCB8C2
          C2C2BCBCBFF2F2AE0000FF00009C0000790000C10404789E9E8983837FD2D2D2
          C6C6C6C8C8C8DBDBD592928504046B0000D4000039B0B0AAC9C9C8BEBEBEBFBF
          BFBDBDBFDFDFB41010FF0000980000696A6A567474699595948181818484837C
          7C7559595C000079000093000064ADADBCD2D2CBBDBDBEBFBFBFBFBFBFBEBEBF
          C5C5BCDBDBB50000FF00009F00004D09094F2626142222182323151C1C2F0000
          7D0000780000B2A6A6ACD4D4C7BDBDBEBFBFBFBFBFBFBFBFBFBFBFBFBEBEBFBF
          BFBEE2E2B44545F40000FF0000810000800000840000830000850000954343F2
          A7A7D9D1D1BFBDBDBEBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBEBEBFBFBF
          BFE0E0B3B4B4C66E6ED00000D90000DA0000DB2A2AD2B2B2D4DBDBB6C7C7BBBD
          BDBFBFBFBFBFBFBFBFBFBFBFBFBF}
        OnClick = SpeedButton_cancelar_pesquisaClick
        OnMouseMove = SpeedButton_cancelar_pesquisaMouseMove
      end
      object SpeedButton_excluir_contato_pesquisa: TSpeedButton
        Tag = 10
        Left = 200
        Top = 5
        Width = 20
        Height = 25
        Glyph.Data = {
          D6010000424DD601000000000000760000002800000020000000160000000100
          0400000000006001000000000000000000001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777777777777777777777777777777777777777777777777777777777777
          7777777777777777777777777777777777777777777777777777777777777777
          7777777777777777777777777777777777777777777777777777777777777007
          7777777777707777777777777777000777777777770777777777777777770000
          0777777770077777777777777777770000777770007777777777777777777777
          7000000777777777777777777777777777000077777777777777777777777777
          7000000777777777777777777777000000777770007777777777777777700000
          0777777770077777777777777770007777777777770077777777777777777777
          7777777777777777777777777777777777777777777777777777777777777777
          7777777777777777777777777777777777777777777777777777777777777777
          7777777777777777777777777777777777777777777777777777}
        OnMouseMove = SpeedButton_excluir_contato_pesquisaMouseMove
      end
      object SpeedButton_novo_contato_pesquisa: TSpeedButton
        Tag = 10
        Left = 220
        Top = 5
        Width = 25
        Height = 25
        Glyph.Data = {
          B6040000424DB604000000000000360000002800000018000000100000000100
          1800000000008004000000000000000000000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C08080808080808080808080808080808080808080808080808080
          80808080808080808080808080808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080000000000000000000000000000000
          000000000000000000000000000000000000000000000000808080C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF470000
          808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
          80000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
          0000000000410000808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0808080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000000000FFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080000000000000000000000000000000
          000000000000000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCBCBCC0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        OnMouseMove = SpeedButton_novo_contato_pesquisaMouseMove
      end
      object SpeedButton_Sair_pesquisa: TSpeedButton
        Tag = 10
        Left = 270
        Top = 5
        Width = 25
        Height = 25
        Glyph.Data = {
          12060000424D120600000000000036040000280000001A000000110000000100
          080000000000DC01000000000000000000000001000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000080808080808
          0808080808080808080808080808080808080808000008080808080808080808
          0808080808080808080808080808080800000808080807080807070708070808
          0700000807070807080808080000080807070808080807080807070705000E00
          05080807070807080000070000000000000600000708070707000E0606000000
          070000080000080808080808080808000400080806000E060606060007080808
          0000080808080808080607000000000000000E06060606000707080800000808
          08080808080000000307070700000E0606060600070808080000080808080708
          080006000007070700000E000006060007080808000008080707070707000E0E
          0001070700000E000702060007080808000008060E0E0E080808080E080E0600
          03000E060606060007080808000008060606060606060E080E0E000500000E06
          0606060007070808000008080707070D08000E0E0600070704000E0606060600
          0708080800000808080808080F0006000007070700000E060606060007070808
          000008080808080808000000020707070707000E060606000707080800000808
          0808080808080800010000000000000006000000070808080000080808080808
          08080808080808080808080808080808080808080000}
        OnClick = SpeedButton_Sair_pesquisaClick
        OnMouseMove = SpeedButton_Sair_pesquisaMouseMove
      end
      object SpeedButton_alterar_contato_pesquisa: TSpeedButton
        Tag = 10
        Left = 244
        Top = 5
        Width = 25
        Height = 25
        Glyph.Data = {
          46030000424D46030000000000003600000028000000120000000E0000000100
          18000000000010030000C30E0000C30E00000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C00000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C00000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF0000000000C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFF00
          0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000
          0000C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF010E0D0329270329270000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2B2A170109200419
          21FFFFFFFFFFFF000000FFFFFF0000000000C0C0C0C0C0C0C0C0C0C0C0C00000
          00FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000FFFFFF062F2FFF
          FFFFFFFFFF0000000000C0C0C0C0C0C0C0C0C0C0C0C000000039393900000000
          0202FFFFFFFFFFFFFFFFFF010101020202383838FFFFFFFFFFFFFFFFFF000000
          0000C0C0C0C0C0C00000004040400D4040FFFFFFFFFFFFFFFFFFFFFFFF0A3333
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000404040000101
          000000FFFFFFFFFFFF0F4040000000000000404040FFFFFFFFFFFF0000000000
          00000000000000000000FFFFFF0000000000000000FFFFFF0000000000004040
          40FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00000000000000000A2929000000C0C0C0000000FFFFFFFFFFFF00
          0000000000000000000000000000000000000000000000000000FFFFFF000000
          0000C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000C0C0C0C0C0C0
          C0C0C0C0C0C0000000FFFFFFFFFFFF0000000000000000000000000000000000
          00000000000000000000FFFFFF0000000000C0C0C0C0C0C0C0C0C0C0C0C00000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000}
        OnMouseMove = SpeedButton_alterar_contato_pesquisaMouseMove
      end
      object Edit_nome_telefone_pesquisa: TEdit
        Tag = 10
        Left = 0
        Top = 5
        Width = 50
        Height = 21
        TabOrder = 0
        OnChange = Edit_nome_telefone_pesquisaChange
      end
      object ComboBox_grupo_contato_pesquisa: TComboBox
        Tag = 10
        Left = 50
        Top = 5
        Width = 50
        Height = 21
        ItemHeight = 13
        TabOrder = 1
      end
      object ComboBox_tipo_teltefone_pesquisa: TComboBox
        Tag = 10
        Left = 125
        Top = 5
        Width = 50
        Height = 21
        ItemHeight = 13
        TabOrder = 2
      end
    end
    object Panel_dados_contato: TPanel
      Left = 1
      Top = 137
      Width = 295
      Height = 128
      Align = alBottom
      TabOrder = 1
      object panel_dados_cadastrados: TPanel
        Left = 1
        Top = 1
        Width = 293
        Height = 126
        Align = alClient
        TabOrder = 0
        object Panel_meios_contato: TPanel
          Left = 1
          Top = 1
          Width = 200
          Height = 124
          Align = alLeft
          TabOrder = 0
          object Panel_adicionar_remover_meios_contatos: TPanel
            Left = 1
            Top = 98
            Width = 198
            Height = 25
            Align = alBottom
            TabOrder = 0
            object speedButton_Adicionar_telefone: TSpeedButton
              Left = 0
              Top = 0
              Width = 25
              Height = 22
              Caption = '+'
              OnMouseMove = speedButton_Adicionar_telefoneMouseMove
            end
            object SpeedButton_REMOVER_TELEFONE: TSpeedButton
              Left = 25
              Top = 0
              Width = 25
              Height = 22
              Caption = '-'
              OnMouseMove = SpeedButton_REMOVER_TELEFONEMouseMove
            end
            object SpeedButton_adicionar_email: TSpeedButton
              Left = 50
              Top = 0
              Width = 25
              Height = 22
              Caption = '+'
              OnMouseMove = SpeedButton_adicionar_emailMouseMove
            end
            object SpeedButton_remover_email: TSpeedButton
              Left = 75
              Top = 0
              Width = 25
              Height = 22
              Caption = '-'
              OnMouseMove = SpeedButton_remover_emailMouseMove
            end
            object SpeedButton_Adicionar_icq: TSpeedButton
              Left = 100
              Top = 0
              Width = 25
              Height = 22
              Caption = '+'
              OnMouseMove = SpeedButton_Adicionar_icqMouseMove
            end
            object SpeedButton_remover_icq: TSpeedButton
              Left = 125
              Top = 0
              Width = 25
              Height = 22
              Caption = '-'
              OnMouseMove = SpeedButton_remover_icqMouseMove
            end
            object SpeedButton_adicionar_home_page: TSpeedButton
              Left = 150
              Top = 0
              Width = 25
              Height = 22
              Caption = '+'
              OnMouseMove = SpeedButton_adicionar_home_pageMouseMove
            end
            object SpeedButton_remover_home_page: TSpeedButton
              Left = 175
              Top = 0
              Width = 25
              Height = 22
              Caption = '-'
              OnMouseMove = SpeedButton_remover_home_pageMouseMove
            end
          end
          object StringGrid_home_page: TStringGrid
            Left = 147
            Top = 1
            Width = 50
            Height = 97
            Align = alLeft
            ColCount = 1
            DefaultColWidth = 60
            FixedCols = 0
            RowCount = 2
            TabOrder = 1
          end
          object StringGrid_icq: TStringGrid
            Left = 97
            Top = 1
            Width = 50
            Height = 97
            Align = alLeft
            ColCount = 1
            DefaultColWidth = 60
            FixedCols = 0
            RowCount = 2
            TabOrder = 2
          end
          object StringGrid_Email: TStringGrid
            Left = 51
            Top = 1
            Width = 46
            Height = 97
            Align = alLeft
            ColCount = 1
            DefaultColWidth = 60
            FixedCols = 0
            RowCount = 2
            TabOrder = 3
          end
          object StringGrid_telefones: TStringGrid
            Left = 1
            Top = 1
            Width = 50
            Height = 97
            Align = alLeft
            ColCount = 1
            DefaultColWidth = 60
            FixedCols = 0
            RowCount = 2
            TabOrder = 4
          end
        end
        object Panel_meno_anotacoes: TPanel
          Left = 201
          Top = 1
          Width = 90
          Height = 124
          Align = alLeft
          TabOrder = 1
          object Panel_do_label_anotacoes: TPanel
            Left = 1
            Top = 1
            Width = 88
            Height = 16
            Align = alTop
            TabOrder = 0
            object Label1: TLabel
              Left = 0
              Top = 0
              Width = 67
              Height = 13
              Caption = 'Anota'#231#245'es'
            end
          end
          object Memo_anotacoes: TMemo
            Left = 1
            Top = 17
            Width = 88
            Height = 106
            Align = alClient
            TabOrder = 1
          end
        end
      end
    end
    object Pessoa: TPanel
      Left = 1
      Top = 41
      Width = 295
      Height = 96
      Align = alTop
      TabOrder = 2
      object PANEL_DO_GRID: TPanel
        Left = 1
        Top = 1
        Width = 295
        Height = 94
        Align = alLeft
        TabOrder = 0
        object StringGrid_DADOS_PESSOA: TStringGrid
          Left = 1
          Top = 1
          Width = 296
          Height = 96
          Align = alCustom
          ColCount = 10
          DefaultColWidth = 56
          FixedCols = 0
          RowCount = 2
          TabOrder = 0
          ColWidths = (
            80
            56
            56
            56
            56
            56
            56
            56
            56
            56)
        end
      end
    end
  end
end
