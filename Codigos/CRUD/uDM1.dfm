object DM1: TDM1
  OldCreateOrder = False
  Left = 448
  Top = 181
  Height = 522
  Width = 576
  object conexion: TKADaoDatabase
    ComponentVersion = '9.10'
    Exclusive = False
    DatabaseType = 'Access'
    Database = 'BASE.mdb'
    ReadOnly = False
    LoginPrompt = False
    UserName = 'Admin'
    UseODBCDialog = True
    SystemDatabase = 'system.mdb'
    SaveUserName = True
    ShowSystemObjects = False
    SmartOpen = True
    EngineType = 2
    PrivateEngine = False
    TrackTransactions = True
    UsesDynaDao = True
    Version = '3.6'
    VersionDetails = '3.6'
    VersionInfo = '(In Access'#39'2000 mode)'
    Workspace = 'DaoWorkspace'
    DefaultCursorDriver = -1
    QueryTimeout = 60
    MdbVersionAutoDetect = False
    Left = 96
    Top = 32
  end
  object Ventas: TKADaoTable
    AutoFindIndex = True
    ComponentVersion = '9.10'
    CacheBlobs = False
    CacheMemos = False
    CacheLookups = False
    Database = conexion
    ExportMethod = VisibleFields
    RefreshSorted = False
    TableName = 'Venta'
    QueryDefSQLModify = False
    QueryDefODBCMaxRecords = 0
    ShowGUID = False
    TableType = 2
    Translation = False
    LockType = 3
    OpenOptions = []
    FieldDefs = <
      item
        Name = 'id_venta'
        DataType = ftAutoInc
      end
      item
        Name = 'id_cliente'
        DataType = ftInteger
      end
      item
        Name = 'id_usuario'
        DataType = ftInteger
      end
      item
        Name = 'fecha'
        DataType = ftDateTime
      end
      item
        Name = 'NIT'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Nombre'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'PrecioTotal'
        DataType = ftCurrency
      end
      item
        Name = 'Destino_de_venta'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    IndexFieldCount = 0
    ReadOnly = False
    LockEdits = False
    MasterAutoActivate = True
    DatabaseAutoActivate = False
    UseBrackets = True
    UseCaptions = False
    UseDaoProperties = True
    UseGetRecNo = True
    UseRecordCount = True
    WarnOnBadDatabase = False
    Filtered = False
    ParamCheck = True
    ProcessMessages = False
    Left = 200
    Top = 32
    object Ventasid_venta: TAutoIncField
      FieldName = 'id_venta'
      ReadOnly = True
    end
    object Ventasid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object Ventasid_usuario: TIntegerField
      FieldName = 'id_usuario'
    end
    object Ventasfecha: TDateTimeField
      FieldName = 'fecha'
    end
    object VentasNIT: TStringField
      FieldName = 'NIT'
      Size = 30
    end
    object VentasNombre: TStringField
      FieldName = 'Nombre'
      Size = 150
    end
    object VentasPrecioTotal: TCurrencyField
      FieldName = 'PrecioTotal'
    end
    object VentasDestino_de_venta: TStringField
      FieldName = 'Destino_de_venta'
    end
  end
  object dVentas: TDataSource
    DataSet = Ventas
    Left = 200
    Top = 88
  end
end
