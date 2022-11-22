object DM: TDM
  OldCreateOrder = True
  Left = 192
  Top = 107
  Height = 169
  Width = 219
  object IbQuery: TIBQuery
    Database = banco
    Transaction = trasacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select IDTIPO as numero from TIPO where (IDTIPO = (select max(ID' +
        'TIPO) from TIPO))')
    Left = 24
    Top = 64
  end
  object banco: TIBDatabase
    Connected = True
    DatabaseName = 'BANCO.GDB'
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
