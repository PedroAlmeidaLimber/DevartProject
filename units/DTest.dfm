object DDmTest: TDDmTest
  OldCreateOrder = False
  Height = 254
  Width = 358
  object sqlConnectionDevart: TSQLConnection
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
    Left = 64
    Top = 24
  end
  object sqlTransactions: TSQLDataSet
    CommandText = 
      'select st.mon$statement_id as Statement_ID, '#13#10'       st.mon$atta' +
      'chment_id as Attachment_ID, '#13#10'       st.mon$transaction_id Trans' +
      'action_ID, '#13#10'       a.mon$user as User_Name, '#13#10'       a.mon$remo' +
      'te_address as Remote_Address, '#13#10'       a.mon$remote_pid as Remot' +
      'e_PID, '#13#10'       a.mon$remote_process as Remote_Process, '#13#10'      ' +
      ' case'#13#10'         when st.mon$state = 0 then '#39'IDLE'#39#13#10'         when' +
      ' st.mon$state = 1 then '#39'ACTIVE'#39#13#10'       end as State,'#13#10'       st' +
      '.mon$timestamp Started_At, '#13#10'       st.mon$sql_text Statement_Te' +
      'xt, '#13#10'       r.mon$record_seq_reads as Non_indexed_Reads,'#13#10'     ' +
      '  r.mon$record_idx_reads as Indexed_Reads,'#13#10'       r.mon$record_' +
      'inserts as Records_Inserted,'#13#10'       r.mon$record_updates as Rec' +
      'ords_Updated,'#13#10'       r.mon$record_deletes as Records_Deleted,'#13#10 +
      '       r.mon$record_backouts as Records_Backed_Out,'#13#10'       r.mo' +
      'n$record_purges as Records_Purged,'#13#10'       r.mon$record_expunges' +
      ' as Records_Expunged,'#13#10'       io.mon$page_reads as Page_Reads,'#13#10 +
      '       io.mon$page_writes as Page_Writes,'#13#10'       io.mon$page_fe' +
      'tches as Page_Fetches,'#13#10'       io.mon$page_marks as Page_Marks'#13#10 +
      'from mon$statements st'#13#10'join mon$attachments a on a.mon$attachme' +
      'nt_id = st.mon$attachment_id'#13#10'join mon$record_stats r on (st.mon' +
      '$stat_id = r.mon$stat_id)'#13#10'join mon$io_stats io on (st.mon$stat_' +
      'id = io.mon$stat_id)'#13#10'order by st.mon$timestamp'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConnectionDevart
    Left = 192
    Top = 24
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
    Left = 192
    Top = 136
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
    Left = 192
    Top = 80
  end
  object dsTransactions: TDataSource
    DataSet = cdsTransactions
    Left = 192
    Top = 192
  end
  object sqlStatements: TSQLDataSet
    CommandText = 
      'select st.mon$statement_id as Statement_ID, '#13#10'       st.mon$atta' +
      'chment_id as Attachment_ID, '#13#10'       st.mon$transaction_id Trans' +
      'action_ID, '#13#10'       a.mon$user as User_Name, '#13#10'       a.mon$remo' +
      'te_address as Remote_Address, '#13#10'       a.mon$remote_pid as Remot' +
      'e_PID, '#13#10'       a.mon$remote_process as Remote_Process, '#13#10'      ' +
      ' case'#13#10'         when st.mon$state = 0 then '#39'IDLE'#39#13#10'         when' +
      ' st.mon$state = 1 then '#39'ACTIVE'#39#13#10'       end as State,'#13#10'       st' +
      '.mon$timestamp Started_At, '#13#10'       st.mon$sql_text Statement_Te' +
      'xt, '#13#10'       r.mon$record_seq_reads as Non_indexed_Reads,'#13#10'     ' +
      '  r.mon$record_idx_reads as Indexed_Reads,'#13#10'       r.mon$record_' +
      'inserts as Records_Inserted,'#13#10'       r.mon$record_updates as Rec' +
      'ords_Updated,'#13#10'       r.mon$record_deletes as Records_Deleted,'#13#10 +
      '       r.mon$record_backouts as Records_Backed_Out,'#13#10'       r.mo' +
      'n$record_purges as Records_Purged,'#13#10'       r.mon$record_expunges' +
      ' as Records_Expunged,'#13#10'       io.mon$page_reads as Page_Reads,'#13#10 +
      '       io.mon$page_writes as Page_Writes,'#13#10'       io.mon$page_fe' +
      'tches as Page_Fetches,'#13#10'       io.mon$page_marks as Page_Marks'#13#10 +
      'from mon$statements st'#13#10'join mon$attachments a on a.mon$attachme' +
      'nt_id = st.mon$attachment_id'#13#10'join mon$record_stats r on (st.mon' +
      '$stat_id = r.mon$stat_id)'#13#10'join mon$io_stats io on (st.mon$stat_' +
      'id = io.mon$stat_id)'#13#10'order by st.mon$timestamp'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConnectionDevart
    Left = 288
    Top = 24
    object sqlStatementsSTATEMENT_ID: TIntegerField
      FieldName = 'STATEMENT_ID'
    end
    object sqlStatementsATTACHMENT_ID: TIntegerField
      FieldName = 'ATTACHMENT_ID'
    end
    object sqlStatementsTRANSACTION_ID: TIntegerField
      FieldName = 'TRANSACTION_ID'
    end
    object sqlStatementsUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      FixedChar = True
      Size = 31
    end
    object sqlStatementsREMOTE_ADDRESS: TStringField
      FieldName = 'REMOTE_ADDRESS'
      Size = 255
    end
    object sqlStatementsREMOTE_PID: TIntegerField
      FieldName = 'REMOTE_PID'
    end
    object sqlStatementsREMOTE_PROCESS: TStringField
      FieldName = 'REMOTE_PROCESS'
      Size = 255
    end
    object sqlStatementsSTATE: TStringField
      FieldName = 'STATE'
      FixedChar = True
      Size = 6
    end
    object sqlStatementsSTARTED_AT: TSQLTimeStampField
      FieldName = 'STARTED_AT'
    end
    object sqlStatementsSTATEMENT_TEXT: TMemoField
      FieldName = 'STATEMENT_TEXT'
      BlobType = ftMemo
      Size = -1
    end
    object sqlStatementsNON_INDEXED_READS: TLargeintField
      FieldName = 'NON_INDEXED_READS'
    end
    object sqlStatementsINDEXED_READS: TLargeintField
      FieldName = 'INDEXED_READS'
    end
    object sqlStatementsRECORDS_INSERTED: TLargeintField
      FieldName = 'RECORDS_INSERTED'
    end
    object sqlStatementsRECORDS_UPDATED: TLargeintField
      FieldName = 'RECORDS_UPDATED'
    end
    object sqlStatementsRECORDS_DELETED: TLargeintField
      FieldName = 'RECORDS_DELETED'
    end
    object sqlStatementsRECORDS_BACKED_OUT: TLargeintField
      FieldName = 'RECORDS_BACKED_OUT'
    end
    object sqlStatementsRECORDS_PURGED: TLargeintField
      FieldName = 'RECORDS_PURGED'
    end
    object sqlStatementsRECORDS_EXPUNGED: TLargeintField
      FieldName = 'RECORDS_EXPUNGED'
    end
    object sqlStatementsPAGE_READS: TLargeintField
      FieldName = 'PAGE_READS'
    end
    object sqlStatementsPAGE_WRITES: TLargeintField
      FieldName = 'PAGE_WRITES'
    end
    object sqlStatementsPAGE_FETCHES: TLargeintField
      FieldName = 'PAGE_FETCHES'
    end
    object sqlStatementsPAGE_MARKS: TLargeintField
      FieldName = 'PAGE_MARKS'
    end
  end
  object cdsStatements: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select st.mon$statement_id as Statement_ID, '#13#10'       st.mon$atta' +
      'chment_id as Attachment_ID, '#13#10'       st.mon$transaction_id Trans' +
      'action_ID, '#13#10'       a.mon$user as User_Name, '#13#10'       a.mon$remo' +
      'te_address as Remote_Address, '#13#10'       a.mon$remote_pid as Remot' +
      'e_PID, '#13#10'       a.mon$remote_process as Remote_Process, '#13#10'      ' +
      ' case'#13#10'         when st.mon$state = 0 then '#39'IDLE'#39#13#10'         when' +
      ' st.mon$state = 1 then '#39'ACTIVE'#39#13#10'       end as State,'#13#10'       st' +
      '.mon$timestamp Started_At, '#13#10'       st.mon$sql_text Statement_Te' +
      'xt, '#13#10'       r.mon$record_seq_reads as Non_indexed_Reads,'#13#10'     ' +
      '  r.mon$record_idx_reads as Indexed_Reads,'#13#10'       r.mon$record_' +
      'inserts as Records_Inserted,'#13#10'       r.mon$record_updates as Rec' +
      'ords_Updated,'#13#10'       r.mon$record_deletes as Records_Deleted,'#13#10 +
      '       r.mon$record_backouts as Records_Backed_Out,'#13#10'       r.mo' +
      'n$record_purges as Records_Purged,'#13#10'       r.mon$record_expunges' +
      ' as Records_Expunged,'#13#10'       io.mon$page_reads as Page_Reads,'#13#10 +
      '       io.mon$page_writes as Page_Writes,'#13#10'       io.mon$page_fe' +
      'tches as Page_Fetches,'#13#10'       io.mon$page_marks as Page_Marks'#13#10 +
      'from mon$statements st'#13#10'join mon$attachments a on a.mon$attachme' +
      'nt_id = st.mon$attachment_id'#13#10'join mon$record_stats r on (st.mon' +
      '$stat_id = r.mon$stat_id)'#13#10'join mon$io_stats io on (st.mon$stat_' +
      'id = io.mon$stat_id)'#13#10'order by st.mon$timestamp'
    Params = <>
    ProviderName = 'dspStatements'
    Left = 288
    Top = 136
    object cdsStatementsSTATEMENT_ID: TIntegerField
      FieldName = 'STATEMENT_ID'
    end
    object cdsStatementsATTACHMENT_ID: TIntegerField
      FieldName = 'ATTACHMENT_ID'
    end
    object cdsStatementsTRANSACTION_ID: TIntegerField
      FieldName = 'TRANSACTION_ID'
    end
    object cdsStatementsUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      FixedChar = True
      Size = 31
    end
    object cdsStatementsREMOTE_ADDRESS: TStringField
      FieldName = 'REMOTE_ADDRESS'
      Size = 255
    end
    object cdsStatementsREMOTE_PID: TIntegerField
      FieldName = 'REMOTE_PID'
    end
    object cdsStatementsREMOTE_PROCESS: TStringField
      FieldName = 'REMOTE_PROCESS'
      Size = 255
    end
    object cdsStatementsSTATE: TStringField
      FieldName = 'STATE'
      FixedChar = True
      Size = 6
    end
    object cdsStatementsSTARTED_AT: TSQLTimeStampField
      FieldName = 'STARTED_AT'
    end
    object cdsStatementsSTATEMENT_TEXT: TMemoField
      FieldName = 'STATEMENT_TEXT'
      BlobType = ftMemo
    end
    object cdsStatementsNON_INDEXED_READS: TLargeintField
      FieldName = 'NON_INDEXED_READS'
    end
    object cdsStatementsINDEXED_READS: TLargeintField
      FieldName = 'INDEXED_READS'
    end
    object cdsStatementsRECORDS_INSERTED: TLargeintField
      FieldName = 'RECORDS_INSERTED'
    end
    object cdsStatementsRECORDS_UPDATED: TLargeintField
      FieldName = 'RECORDS_UPDATED'
    end
    object cdsStatementsRECORDS_DELETED: TLargeintField
      FieldName = 'RECORDS_DELETED'
    end
    object cdsStatementsRECORDS_BACKED_OUT: TLargeintField
      FieldName = 'RECORDS_BACKED_OUT'
    end
    object cdsStatementsRECORDS_PURGED: TLargeintField
      FieldName = 'RECORDS_PURGED'
    end
    object cdsStatementsRECORDS_EXPUNGED: TLargeintField
      FieldName = 'RECORDS_EXPUNGED'
    end
    object cdsStatementsPAGE_READS: TLargeintField
      FieldName = 'PAGE_READS'
    end
    object cdsStatementsPAGE_WRITES: TLargeintField
      FieldName = 'PAGE_WRITES'
    end
    object cdsStatementsPAGE_FETCHES: TLargeintField
      FieldName = 'PAGE_FETCHES'
    end
    object cdsStatementsPAGE_MARKS: TLargeintField
      FieldName = 'PAGE_MARKS'
    end
  end
  object dspStatements: TDataSetProvider
    DataSet = sqlStatements
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 288
    Top = 80
  end
  object dsStatements: TDataSource
    DataSet = cdsStatements
    Left = 288
    Top = 192
  end
  object sqlSearchByIDDevart: TSQLDataSet
    CommandText = 
      'select'#13#10'   ID,'#13#10'   FIELD_TEST1,'#13#10'   FIELD_TEST2'#13#10'from EXAMPLE'#13#10'w' +
      'here ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = sqlConnectionDevart
    Left = 64
    Top = 88
    object sqlSearchByIDDevartID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlSearchByIDDevartFIELD_TEST1: TStringField
      FieldName = 'FIELD_TEST1'
    end
    object sqlSearchByIDDevartFIELD_TEST2: TStringField
      FieldName = 'FIELD_TEST2'
    end
  end
  object sqlInsertExampleDevart: TSQLDataSet
    CommandText = 
      'insert into EXAMPLE (ID,'#13#10'                     FIELD_TEST1,'#13#10'   ' +
      '                  FIELD_TEST2)'#13#10'values ('#13#10'        gen_id(GEN_EXA' +
      'MPLE, 1),'#13#10'        :FIELD_TEST1,'#13#10'        :FIELD_TEST2)'#13#10'returni' +
      'ng ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'FIELD_TEST1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIELD_TEST2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end>
    SQLConnection = sqlConnectionDevart
    Left = 64
    Top = 152
  end
end
