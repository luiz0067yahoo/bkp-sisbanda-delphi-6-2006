object DM: TDM
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 150
  Width = 215
  object IbQuery: TIBQuery
    Database = banco
    Transaction = trasacao
    BufferChunks = 1000
    CachedUpdates = False
    Left = 24
    Top = 64
  end
  object banco: TIBDatabase
    DatabaseName = 'C:\d\Controle Texas Bhill\SISBANDA4.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = trasacao
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 24
    Top = 8
  end
  object trasacao: TIBTransaction
    Active = False
    DefaultDatabase = banco
    AutoStopAction = saNone
    Left = 104
    Top = 16
  end
  object DataSource: TDataSource
    DataSet = IbQuery
    Left = 96
    Top = 72
  end
end
