object DDmTest: TDDmTest
  OldCreateOrder = False
  Height = 399
  Width = 559
  object sqlConectionDevartFirebird: TSQLConnection
    DriverName = 'DevartFirebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=DbxDevartInterBase'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver260.' +
        'bpl'
      
        'MetaDataPackageLoader=TDBXDevartInterBaseMetaDataCommandFactory,' +
        'DbxDevartInterBaseDriver260.bpl'
      'ProductName=DevartFirebird'
      'GetDriverFunc=getSQLDriverFirebird'
      'LibraryName=dbexpida41.dll'
      'VendorLib=fbclient40.dll'
      'LibraryNameOsx=libdbexpida41.dylib'
      'VendorLibOsx=libfbclient.dylib'
      'DataBase='
      'User_Name='
      'Password='
      'SQLDialect=3'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'DevartInterBase TransIsolation=ReadCommitted'
      'WaitOnLocks=False'
      'CharLength=0'
      'EnableBCD=True'
      'OptimizedNumerics=True'
      'LongStrings=True'
      'UseQuoteChar=False'
      'FetchAll=False'
      'DeferredBlobRead=False'
      'DeferredArrayRead=False'
      'ForceUsingDefaultPort=False'
      'ForceUnloadClientLibrary=False'
      'WireCompression=False'
      'UseUnicode=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'DevartFirebird TransIsolation=ReadCommitted'
      'ServerCharSet=PT_BR'
      'EnableLargeint=True')
    Left = 224
    Top = 16
  end
  object sqlExample2Devart: TSQLDataSet
    CommandText = 'select'#13#10'   *'#13#10'from EXAMPLE_2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConectionDevartFirebird
    Left = 56
    Top = 88
    object sqlExample2DevartID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlExample2DevartTEST1: TStringField
      FieldName = 'TEST1'
      ProviderFlags = [pfInUpdate]
    end
    object sqlExample2DevartTEST2: TStringField
      FieldName = 'TEST2'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsExample2Devart: TClientDataSet
    Aggregates = <>
    CommandText = 'select'#13#10'   *'#13#10'from EXAMPLE_2  '
    Params = <>
    ProviderName = 'dspExample2Devart'
    Left = 280
    Top = 88
    object cdsExample2DevartID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsExample2DevartTEST1: TStringField
      FieldName = 'TEST1'
      ProviderFlags = [pfInUpdate]
    end
    object cdsExample2DevartTEST2: TStringField
      FieldName = 'TEST2'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspExample2Devart: TDataSetProvider
    DataSet = sqlExample2Devart
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 168
    Top = 88
  end
  object dsExample2Devart: TDataSource
    DataSet = cdsExample2Devart
    Left = 384
    Top = 88
  end
  object sqlExample2Firebird: TSQLDataSet
    CommandText = 'select'#13#10'   *'#13#10'from EXAMPLE_2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConectionFirebird
    Left = 56
    Top = 272
    object sqlExample2FirebirdID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlExample2FirebirdTEST1: TStringField
      FieldName = 'TEST1'
      ProviderFlags = [pfInUpdate]
    end
    object sqlExample2FirebirdTEST2: TStringField
      FieldName = 'TEST2'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspExample2Firebird: TDataSetProvider
    DataSet = sqlExample2Firebird
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 168
    Top = 272
  end
  object cdsExample2Firebird: TClientDataSet
    Aggregates = <>
    CommandText = 'select'#13#10'   *'#13#10'from EXAMPLE_2  '
    Params = <>
    ProviderName = 'dspExample2Firebird'
    Left = 280
    Top = 272
    object cdsExample2FirebirdID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsExample2FirebirdTEST1: TStringField
      FieldName = 'TEST1'
      ProviderFlags = [pfInUpdate]
    end
    object cdsExample2FirebirdTEST2: TStringField
      FieldName = 'TEST2'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsExample2Firebird: TDataSource
    DataSet = cdsExample2Firebird
    Left = 384
    Top = 272
  end
  object sqlConectionFirebird: TSQLConnection
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver260.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver260.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=24.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database='
      'User_Name='
      'Password='
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet=PT_BR'
      'Trim Char=False')
    Left = 224
    Top = 208
  end
  object sqlSearchExampleDevart: TSQLDataSet
    CommandText = 
      'select'#13#10'   gen_id(GEN_EXAMPLE_2, 1) as ID,'#13#10'   EXAMPLE.FIELD_TES' +
      'T1,'#13#10'   EXAMPLE.FIELD_TEST2'#13#10'from EXAMPLE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConectionDevartFirebird
    Left = 56
    Top = 152
    object sqlSearchExampleDevartID: TLargeintField
      FieldName = 'ID'
    end
    object sqlSearchExampleDevartFIELD_TEST1: TStringField
      FieldName = 'FIELD_TEST1'
      ProviderFlags = []
    end
    object sqlSearchExampleDevartFIELD_TEST2: TStringField
      FieldName = 'FIELD_TEST2'
      ProviderFlags = []
    end
  end
  object sqlSearchExampleFirebird: TSQLDataSet
    CommandText = 
      'select'#13#10'   gen_id(GEN_EXAMPLE_2, 1) as ID,'#13#10'   EXAMPLE.FIELD_TES' +
      'T1,'#13#10'   EXAMPLE.FIELD_TEST2'#13#10'from EXAMPLE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConectionFirebird
    Left = 56
    Top = 336
    object sqlSearchExampleFirebirdID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlSearchExampleFirebirdFIELD_TEST1: TStringField
      FieldName = 'FIELD_TEST1'
      ProviderFlags = []
    end
    object sqlSearchExampleFirebirdFIELD_TEST2: TStringField
      FieldName = 'FIELD_TEST2'
      ProviderFlags = []
    end
  end
  object sqlTransactions: TSQLDataSet
    CommandText = 
      'SELECT tr.mon$transaction_id as Tr_ID, '#13#10'       tr.mon$attachmen' +
      't_id as Attachment_ID, '#13#10'       a.mon$user as UserName, '#13#10'      ' +
      ' a.mon$remote_address as Remote_Address, '#13#10'       a.mon$remote_p' +
      'id as Remote_PID, '#13#10'       a.mon$remote_process as Remote_Proces' +
      's, '#13#10'       case'#13#10'         when tr.mon$state = 1 then '#39'STARTED'#39#13 +
      #10'         when tr.mon$state = 0 then '#39'FINISHED'#39#13#10'       end as S' +
      'tate,'#13#10'       tr.mon$timestamp as Started_At, '#13#10'       tr.mon$to' +
      'p_transaction as Top_Tr, '#13#10'       tr.mon$oldest_transaction as O' +
      'ldest_Tr, '#13#10'       tr.mon$oldest_active Oldest_Active_Tr, '#13#10'    ' +
      '   case'#13#10'         when tr.mon$isolation_mode = 0 then '#39'consisten' +
      'ce'#39#13#10'         when tr.mon$isolation_mode = 1 then '#39'concurrency'#39#13 +
      #10'         when tr.mon$isolation_mode = 2 then '#39'read committed re' +
      'cord version'#39#13#10'         when tr.mon$isolation_mode = 3 then '#39'rea' +
      'd committed no record version'#39#13#10'       end as Isolation_Mode,'#13#10' ' +
      '      case'#13#10'         when tr.mon$lock_timeout = -1 then '#39'Infinit' +
      'e wait'#39#13#10'         when tr.mon$lock_timeout = 0 then '#39'No wait'#39#13#10' ' +
      '        when tr.mon$lock_timeout > 0  then '#39'Timeout '#39' || mon$loc' +
      'k_timeout'#13#10'       end as Lock_Timeout,'#13#10'       case'#13#10'         wh' +
      'en tr.mon$read_only = 0 then '#39'No'#39#13#10'         when tr.mon$read_onl' +
      'y = 1 then '#39'Yes'#39#13#10'       end as Read_Only,'#13#10'       case'#13#10'       ' +
      '  when tr.mon$auto_commit = 0 then '#39'No'#39#13#10'         when tr.mon$au' +
      'to_commit = 1 then '#39'Yes'#39#13#10'       end as Auto_Commit,'#13#10'       cas' +
      'e'#13#10'         when tr.mon$auto_undo = 0 then '#39'No'#39#13#10'         when t' +
      'r.mon$auto_undo = 1 then '#39'Yes'#39#13#10'       end as Auto_Undo,'#13#10'      ' +
      ' r.mon$record_seq_reads as Non_indexed_Reads,'#13#10'       r.mon$reco' +
      'rd_idx_reads as Indexed_Reads,'#13#10'       r.mon$record_inserts as R' +
      'ecords_Inserted,'#13#10'       r.mon$record_updates as Records_Updated' +
      ','#13#10'       r.mon$record_deletes as Records_Deleted,'#13#10'       r.mon' +
      '$record_backouts as Records_Backed_Out,'#13#10'       r.mon$record_pur' +
      'ges as Records_Purged,'#13#10'       r.mon$record_expunges as Records_' +
      'Expunged,'#13#10'       io.mon$page_reads as Page_Reads,'#13#10'       io.mo' +
      'n$page_writes as Page_Writes,'#13#10'       io.mon$page_fetches as Pag' +
      'e_Fetches,'#13#10'       io.mon$page_marks as Page_Marks'#13#10'FROM mon$tra' +
      'nsactions tr'#13#10'join mon$attachments a on a.mon$attachment_id = tr' +
      '.mon$attachment_id'#13#10'left join mon$record_stats r on (tr.mon$stat' +
      '_id = r.mon$stat_id)'#13#10'left join mon$io_stats io on (tr.mon$stat_' +
      'id = io.mon$stat_id)'#13#10'order by tr.mon$timestamp'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConectionDevartFirebird
    Left = 488
    Top = 96
    object sqlTransactionsTR_ID: TIntegerField
      FieldName = 'TR_ID'
      ProviderFlags = []
    end
    object sqlTransactionsATTACHMENT_ID: TIntegerField
      FieldName = 'ATTACHMENT_ID'
      ProviderFlags = []
    end
    object sqlTransactionsUSERNAME: TStringField
      FieldName = 'USERNAME'
      ProviderFlags = []
      FixedChar = True
      Size = 31
    end
    object sqlTransactionsREMOTE_ADDRESS: TStringField
      FieldName = 'REMOTE_ADDRESS'
      ProviderFlags = []
      Size = 255
    end
    object sqlTransactionsREMOTE_PID: TIntegerField
      FieldName = 'REMOTE_PID'
      ProviderFlags = []
    end
    object sqlTransactionsREMOTE_PROCESS: TStringField
      FieldName = 'REMOTE_PROCESS'
      ProviderFlags = []
      Size = 255
    end
    object sqlTransactionsSTATE: TStringField
      FieldName = 'STATE'
      ProviderFlags = []
      FixedChar = True
      Size = 8
    end
    object sqlTransactionsSTARTED_AT: TSQLTimeStampField
      FieldName = 'STARTED_AT'
      ProviderFlags = []
    end
    object sqlTransactionsTOP_TR: TIntegerField
      FieldName = 'TOP_TR'
      ProviderFlags = []
    end
    object sqlTransactionsOLDEST_TR: TIntegerField
      FieldName = 'OLDEST_TR'
      ProviderFlags = []
    end
    object sqlTransactionsOLDEST_ACTIVE_TR: TIntegerField
      FieldName = 'OLDEST_ACTIVE_TR'
      ProviderFlags = []
    end
    object sqlTransactionsISOLATION_MODE: TStringField
      FieldName = 'ISOLATION_MODE'
      ProviderFlags = []
      FixedChar = True
      Size = 32
    end
    object sqlTransactionsLOCK_TIMEOUT: TStringField
      FieldName = 'LOCK_TIMEOUT'
      ProviderFlags = []
      Size = 14
    end
    object sqlTransactionsREAD_ONLY: TStringField
      FieldName = 'READ_ONLY'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object sqlTransactionsAUTO_COMMIT: TStringField
      FieldName = 'AUTO_COMMIT'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object sqlTransactionsAUTO_UNDO: TStringField
      FieldName = 'AUTO_UNDO'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object sqlTransactionsNON_INDEXED_READS: TLargeintField
      FieldName = 'NON_INDEXED_READS'
      ProviderFlags = []
    end
    object sqlTransactionsINDEXED_READS: TLargeintField
      FieldName = 'INDEXED_READS'
      ProviderFlags = []
    end
    object sqlTransactionsRECORDS_INSERTED: TLargeintField
      FieldName = 'RECORDS_INSERTED'
      ProviderFlags = []
    end
    object sqlTransactionsRECORDS_UPDATED: TLargeintField
      FieldName = 'RECORDS_UPDATED'
      ProviderFlags = []
    end
    object sqlTransactionsRECORDS_DELETED: TLargeintField
      FieldName = 'RECORDS_DELETED'
      ProviderFlags = []
    end
    object sqlTransactionsRECORDS_BACKED_OUT: TLargeintField
      FieldName = 'RECORDS_BACKED_OUT'
      ProviderFlags = []
    end
    object sqlTransactionsRECORDS_PURGED: TLargeintField
      FieldName = 'RECORDS_PURGED'
      ProviderFlags = []
    end
    object sqlTransactionsRECORDS_EXPUNGED: TLargeintField
      FieldName = 'RECORDS_EXPUNGED'
      ProviderFlags = []
    end
    object sqlTransactionsPAGE_READS: TLargeintField
      FieldName = 'PAGE_READS'
      ProviderFlags = []
    end
    object sqlTransactionsPAGE_WRITES: TLargeintField
      FieldName = 'PAGE_WRITES'
      ProviderFlags = []
    end
    object sqlTransactionsPAGE_FETCHES: TLargeintField
      FieldName = 'PAGE_FETCHES'
      ProviderFlags = []
    end
    object sqlTransactionsPAGE_MARKS: TLargeintField
      FieldName = 'PAGE_MARKS'
      ProviderFlags = []
    end
  end
  object cdsTransactions: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT tr.mon$transaction_id as Tr_ID, '#13#10'       tr.mon$attachmen' +
      't_id as Attachment_ID, '#13#10'       a.mon$user as UserName, '#13#10'      ' +
      ' a.mon$remote_address as Remote_Address, '#13#10'       a.mon$remote_p' +
      'id as Remote_PID, '#13#10'       a.mon$remote_process as Remote_Proces' +
      's, '#13#10'       case'#13#10'         when tr.mon$state = 1 then '#39'STARTED'#39#13 +
      #10'         when tr.mon$state = 0 then '#39'FINISHED'#39#13#10'       end as S' +
      'tate,'#13#10'       tr.mon$timestamp as Started_At, '#13#10'       tr.mon$to' +
      'p_transaction as Top_Tr, '#13#10'       tr.mon$oldest_transaction as O' +
      'ldest_Tr, '#13#10'       tr.mon$oldest_active Oldest_Active_Tr, '#13#10'    ' +
      '   case'#13#10'         when tr.mon$isolation_mode = 0 then '#39'consisten' +
      'ce'#39#13#10'         when tr.mon$isolation_mode = 1 then '#39'concurrency'#39#13 +
      #10'         when tr.mon$isolation_mode = 2 then '#39'read committed re' +
      'cord version'#39#13#10'         when tr.mon$isolation_mode = 3 then '#39'rea' +
      'd committed no record version'#39#13#10'       end as Isolation_Mode,'#13#10' ' +
      '      case'#13#10'         when tr.mon$lock_timeout = -1 then '#39'Infinit' +
      'e wait'#39#13#10'         when tr.mon$lock_timeout = 0 then '#39'No wait'#39#13#10' ' +
      '        when tr.mon$lock_timeout > 0  then '#39'Timeout '#39' || mon$loc' +
      'k_timeout'#13#10'       end as Lock_Timeout,'#13#10'       case'#13#10'         wh' +
      'en tr.mon$read_only = 0 then '#39'No'#39#13#10'         when tr.mon$read_onl' +
      'y = 1 then '#39'Yes'#39#13#10'       end as Read_Only,'#13#10'       case'#13#10'       ' +
      '  when tr.mon$auto_commit = 0 then '#39'No'#39#13#10'         when tr.mon$au' +
      'to_commit = 1 then '#39'Yes'#39#13#10'       end as Auto_Commit,'#13#10'       cas' +
      'e'#13#10'         when tr.mon$auto_undo = 0 then '#39'No'#39#13#10'         when t' +
      'r.mon$auto_undo = 1 then '#39'Yes'#39#13#10'       end as Auto_Undo,'#13#10'      ' +
      ' r.mon$record_seq_reads as Non_indexed_Reads,'#13#10'       r.mon$reco' +
      'rd_idx_reads as Indexed_Reads,'#13#10'       r.mon$record_inserts as R' +
      'ecords_Inserted,'#13#10'       r.mon$record_updates as Records_Updated' +
      ','#13#10'       r.mon$record_deletes as Records_Deleted,'#13#10'       r.mon' +
      '$record_backouts as Records_Backed_Out,'#13#10'       r.mon$record_pur' +
      'ges as Records_Purged,'#13#10'       r.mon$record_expunges as Records_' +
      'Expunged,'#13#10'       io.mon$page_reads as Page_Reads,'#13#10'       io.mo' +
      'n$page_writes as Page_Writes,'#13#10'       io.mon$page_fetches as Pag' +
      'e_Fetches,'#13#10'       io.mon$page_marks as Page_Marks'#13#10'FROM mon$tra' +
      'nsactions tr'#13#10'join mon$attachments a on a.mon$attachment_id = tr' +
      '.mon$attachment_id'#13#10'left join mon$record_stats r on (tr.mon$stat' +
      '_id = r.mon$stat_id)'#13#10'left join mon$io_stats io on (tr.mon$stat_' +
      'id = io.mon$stat_id)'#13#10'order by tr.mon$timestamp'
    Params = <>
    ProviderName = 'dspTransactions'
    Left = 488
    Top = 208
    object cdsTransactionsTR_ID: TIntegerField
      FieldName = 'TR_ID'
      ProviderFlags = []
    end
    object cdsTransactionsATTACHMENT_ID: TIntegerField
      FieldName = 'ATTACHMENT_ID'
      ProviderFlags = []
    end
    object cdsTransactionsUSERNAME: TStringField
      FieldName = 'USERNAME'
      ProviderFlags = []
      FixedChar = True
      Size = 31
    end
    object cdsTransactionsREMOTE_ADDRESS: TStringField
      FieldName = 'REMOTE_ADDRESS'
      ProviderFlags = []
      Size = 255
    end
    object cdsTransactionsREMOTE_PID: TIntegerField
      FieldName = 'REMOTE_PID'
      ProviderFlags = []
    end
    object cdsTransactionsREMOTE_PROCESS: TStringField
      FieldName = 'REMOTE_PROCESS'
      ProviderFlags = []
      Size = 255
    end
    object cdsTransactionsSTATE: TStringField
      FieldName = 'STATE'
      ProviderFlags = []
      FixedChar = True
      Size = 8
    end
    object cdsTransactionsSTARTED_AT: TSQLTimeStampField
      FieldName = 'STARTED_AT'
      ProviderFlags = []
    end
    object cdsTransactionsTOP_TR: TIntegerField
      FieldName = 'TOP_TR'
      ProviderFlags = []
    end
    object cdsTransactionsOLDEST_TR: TIntegerField
      FieldName = 'OLDEST_TR'
      ProviderFlags = []
    end
    object cdsTransactionsOLDEST_ACTIVE_TR: TIntegerField
      FieldName = 'OLDEST_ACTIVE_TR'
      ProviderFlags = []
    end
    object cdsTransactionsISOLATION_MODE: TStringField
      FieldName = 'ISOLATION_MODE'
      ProviderFlags = []
      FixedChar = True
      Size = 32
    end
    object cdsTransactionsLOCK_TIMEOUT: TStringField
      FieldName = 'LOCK_TIMEOUT'
      ProviderFlags = []
      Size = 14
    end
    object cdsTransactionsREAD_ONLY: TStringField
      FieldName = 'READ_ONLY'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object cdsTransactionsAUTO_COMMIT: TStringField
      FieldName = 'AUTO_COMMIT'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object cdsTransactionsAUTO_UNDO: TStringField
      FieldName = 'AUTO_UNDO'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object cdsTransactionsNON_INDEXED_READS: TLargeintField
      FieldName = 'NON_INDEXED_READS'
      ProviderFlags = []
    end
    object cdsTransactionsINDEXED_READS: TLargeintField
      FieldName = 'INDEXED_READS'
      ProviderFlags = []
    end
    object cdsTransactionsRECORDS_INSERTED: TLargeintField
      FieldName = 'RECORDS_INSERTED'
      ProviderFlags = []
    end
    object cdsTransactionsRECORDS_UPDATED: TLargeintField
      FieldName = 'RECORDS_UPDATED'
      ProviderFlags = []
    end
    object cdsTransactionsRECORDS_DELETED: TLargeintField
      FieldName = 'RECORDS_DELETED'
      ProviderFlags = []
    end
    object cdsTransactionsRECORDS_BACKED_OUT: TLargeintField
      FieldName = 'RECORDS_BACKED_OUT'
      ProviderFlags = []
    end
    object cdsTransactionsRECORDS_PURGED: TLargeintField
      FieldName = 'RECORDS_PURGED'
      ProviderFlags = []
    end
    object cdsTransactionsRECORDS_EXPUNGED: TLargeintField
      FieldName = 'RECORDS_EXPUNGED'
      ProviderFlags = []
    end
    object cdsTransactionsPAGE_READS: TLargeintField
      FieldName = 'PAGE_READS'
      ProviderFlags = []
    end
    object cdsTransactionsPAGE_WRITES: TLargeintField
      FieldName = 'PAGE_WRITES'
      ProviderFlags = []
    end
    object cdsTransactionsPAGE_FETCHES: TLargeintField
      FieldName = 'PAGE_FETCHES'
      ProviderFlags = []
    end
    object cdsTransactionsPAGE_MARKS: TLargeintField
      FieldName = 'PAGE_MARKS'
      ProviderFlags = []
    end
  end
  object dspTransactions: TDataSetProvider
    DataSet = sqlTransactions
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 488
    Top = 152
  end
  object dsTransactions: TDataSource
    DataSet = cdsTransactions
    Left = 488
    Top = 264
  end
end
