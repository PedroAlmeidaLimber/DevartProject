unit DTest;

interface

uses
  System.SysUtils, System.Classes, DbxDevartInterBase, Data.FMTBcd,
  Datasnap.Provider, Datasnap.DBClient, Data.DB, Data.SqlExpr, Data.DBXFirebird;

type
  TDDmTest = class(TDataModule)
    sqlConnectionDevart: TSQLConnection;
    sqlTransactions: TSQLDataSet;
    cdsTransactions: TClientDataSet;
    dspTransactions: TDataSetProvider;
    dsTransactions: TDataSource;
    sqlTransactionsTR_ID: TIntegerField;
    sqlTransactionsATTACHMENT_ID: TIntegerField;
    sqlTransactionsUSERNAME: TStringField;
    sqlTransactionsREMOTE_ADDRESS: TStringField;
    sqlTransactionsREMOTE_PID: TIntegerField;
    sqlTransactionsREMOTE_PROCESS: TStringField;
    sqlTransactionsSTATE: TStringField;
    sqlTransactionsSTARTED_AT: TSQLTimeStampField;
    sqlTransactionsTOP_TR: TIntegerField;
    sqlTransactionsOLDEST_TR: TIntegerField;
    sqlTransactionsOLDEST_ACTIVE_TR: TIntegerField;
    sqlTransactionsISOLATION_MODE: TStringField;
    sqlTransactionsLOCK_TIMEOUT: TStringField;
    sqlTransactionsREAD_ONLY: TStringField;
    sqlTransactionsAUTO_COMMIT: TStringField;
    sqlTransactionsAUTO_UNDO: TStringField;
    sqlTransactionsNON_INDEXED_READS: TLargeintField;
    sqlTransactionsINDEXED_READS: TLargeintField;
    sqlTransactionsRECORDS_INSERTED: TLargeintField;
    sqlTransactionsRECORDS_UPDATED: TLargeintField;
    sqlTransactionsRECORDS_DELETED: TLargeintField;
    sqlTransactionsRECORDS_BACKED_OUT: TLargeintField;
    sqlTransactionsRECORDS_PURGED: TLargeintField;
    sqlTransactionsRECORDS_EXPUNGED: TLargeintField;
    sqlTransactionsPAGE_READS: TLargeintField;
    sqlTransactionsPAGE_WRITES: TLargeintField;
    sqlTransactionsPAGE_FETCHES: TLargeintField;
    sqlTransactionsPAGE_MARKS: TLargeintField;
    cdsTransactionsTR_ID: TIntegerField;
    cdsTransactionsATTACHMENT_ID: TIntegerField;
    cdsTransactionsUSERNAME: TStringField;
    cdsTransactionsREMOTE_ADDRESS: TStringField;
    cdsTransactionsREMOTE_PID: TIntegerField;
    cdsTransactionsREMOTE_PROCESS: TStringField;
    cdsTransactionsSTATE: TStringField;
    cdsTransactionsSTARTED_AT: TSQLTimeStampField;
    cdsTransactionsTOP_TR: TIntegerField;
    cdsTransactionsOLDEST_TR: TIntegerField;
    cdsTransactionsOLDEST_ACTIVE_TR: TIntegerField;
    cdsTransactionsISOLATION_MODE: TStringField;
    cdsTransactionsLOCK_TIMEOUT: TStringField;
    cdsTransactionsREAD_ONLY: TStringField;
    cdsTransactionsAUTO_COMMIT: TStringField;
    cdsTransactionsAUTO_UNDO: TStringField;
    cdsTransactionsNON_INDEXED_READS: TLargeintField;
    cdsTransactionsINDEXED_READS: TLargeintField;
    cdsTransactionsRECORDS_INSERTED: TLargeintField;
    cdsTransactionsRECORDS_UPDATED: TLargeintField;
    cdsTransactionsRECORDS_DELETED: TLargeintField;
    cdsTransactionsRECORDS_BACKED_OUT: TLargeintField;
    cdsTransactionsRECORDS_PURGED: TLargeintField;
    cdsTransactionsRECORDS_EXPUNGED: TLargeintField;
    cdsTransactionsPAGE_READS: TLargeintField;
    cdsTransactionsPAGE_WRITES: TLargeintField;
    cdsTransactionsPAGE_FETCHES: TLargeintField;
    cdsTransactionsPAGE_MARKS: TLargeintField;
    sqlStatements: TSQLDataSet;
    cdsStatements: TClientDataSet;
    dspStatements: TDataSetProvider;
    dsStatements: TDataSource;
    sqlStatementsSTATEMENT_ID: TIntegerField;
    sqlStatementsATTACHMENT_ID: TIntegerField;
    sqlStatementsTRANSACTION_ID: TIntegerField;
    sqlStatementsUSER_NAME: TStringField;
    sqlStatementsREMOTE_ADDRESS: TStringField;
    sqlStatementsREMOTE_PID: TIntegerField;
    sqlStatementsREMOTE_PROCESS: TStringField;
    sqlStatementsSTATE: TStringField;
    sqlStatementsSTARTED_AT: TSQLTimeStampField;
    sqlStatementsSTATEMENT_TEXT: TMemoField;
    sqlStatementsNON_INDEXED_READS: TLargeintField;
    sqlStatementsINDEXED_READS: TLargeintField;
    sqlStatementsRECORDS_INSERTED: TLargeintField;
    sqlStatementsRECORDS_UPDATED: TLargeintField;
    sqlStatementsRECORDS_DELETED: TLargeintField;
    sqlStatementsRECORDS_BACKED_OUT: TLargeintField;
    sqlStatementsRECORDS_PURGED: TLargeintField;
    sqlStatementsRECORDS_EXPUNGED: TLargeintField;
    sqlStatementsPAGE_READS: TLargeintField;
    sqlStatementsPAGE_WRITES: TLargeintField;
    sqlStatementsPAGE_FETCHES: TLargeintField;
    sqlStatementsPAGE_MARKS: TLargeintField;
    cdsStatementsSTATEMENT_ID: TIntegerField;
    cdsStatementsATTACHMENT_ID: TIntegerField;
    cdsStatementsTRANSACTION_ID: TIntegerField;
    cdsStatementsUSER_NAME: TStringField;
    cdsStatementsREMOTE_ADDRESS: TStringField;
    cdsStatementsREMOTE_PID: TIntegerField;
    cdsStatementsREMOTE_PROCESS: TStringField;
    cdsStatementsSTATE: TStringField;
    cdsStatementsSTARTED_AT: TSQLTimeStampField;
    cdsStatementsSTATEMENT_TEXT: TMemoField;
    cdsStatementsNON_INDEXED_READS: TLargeintField;
    cdsStatementsINDEXED_READS: TLargeintField;
    cdsStatementsRECORDS_INSERTED: TLargeintField;
    cdsStatementsRECORDS_UPDATED: TLargeintField;
    cdsStatementsRECORDS_DELETED: TLargeintField;
    cdsStatementsRECORDS_BACKED_OUT: TLargeintField;
    cdsStatementsRECORDS_PURGED: TLargeintField;
    cdsStatementsRECORDS_EXPUNGED: TLargeintField;
    cdsStatementsPAGE_READS: TLargeintField;
    cdsStatementsPAGE_WRITES: TLargeintField;
    cdsStatementsPAGE_FETCHES: TLargeintField;
    cdsStatementsPAGE_MARKS: TLargeintField;
    sqlSearchByIDDevart: TSQLDataSet;
    sqlSearchByIDDevartID: TIntegerField;
    sqlSearchByIDDevartFIELD_TEST1: TStringField;
    sqlSearchByIDDevartFIELD_TEST2: TStringField;
    sqlInsertExampleDevart: TSQLDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure IncRegisterDevart;
    procedure ConsultTransactions;
  end;

var
  DDmTest: TDDmTest;

implementation

uses
  Data.DBXCommon, Vcl.Dialogs;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDDmTest }

procedure TDDmTest.ConsultTransactions;
begin
  if not(sqlConnectionDevart.Connected) then
    Abort;

  cdsTransactions.Close;
  cdsTransactions.Open;

  cdsStatements.Close;
  cdsStatements.Open;
end;

procedure TDDmTest.IncRegisterDevart;
var
  vTrans: TDBXTransaction;
  vParams: TParams;
  vResult: TSQLDataSet;
  vId: Integer;
begin
  vTrans := sqlConnectionDevart.BeginTransaction;
  try
    sqlInsertExampleDevart.ParamByName('FIELD_TEST1').AsString := 'Test1';
    sqlInsertExampleDevart.ParamByName('FIELD_TEST2').AsString := 'Test2';
    sqlInsertExampleDevart.ExecSQL;

    vId := sqlInsertExampleDevart.ParamByName('ID').AsInteger;

    sqlSearchByIDDevart.Close;
    sqlSearchByIDDevart.ParamByName('ID').AsInteger := vId;
    sqlSearchByIDDevart.Open;

    if sqlSearchByIDDevart.IsEmpty then
      ShowMessage('Not found.' + sLineBreak +
                  'ID: ' + vId.ToString)
    else
      ShowMessage('Found.' + sLineBreak +
                  'ID: ' + sqlSearchByIDDevartID.AsString + sLineBreak +
                  'FIELD_TEST1: ' + sqlSearchByIDDevartFIELD_TEST1.AsString + sLineBreak +
                  'FIELD_TEST2: ' + sqlSearchByIDDevartFIELD_TEST2.AsString);

    sqlConnectionDevart.CommitFreeAndNil(vTrans);
  except
    on E: Exception do begin
      sqlConnectionDevart.RollbackFreeAndNil(vTrans);
      raise E;
    end;
  end;
end;

end.
