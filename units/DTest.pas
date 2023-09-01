unit DTest;

interface

uses
  System.SysUtils, System.Classes, DbxDevartInterBase, Data.FMTBcd,
  Datasnap.Provider, Datasnap.DBClient, Data.DB, Data.SqlExpr, Data.DBXFirebird;

type
  TDDmTest = class(TDataModule)
    sqlConectionDevartFirebird: TSQLConnection;
    sqlExample2Devart: TSQLDataSet;
    cdsExample2Devart: TClientDataSet;
    dspExample2Devart: TDataSetProvider;
    dsExample2Devart: TDataSource;
    sqlExample2Firebird: TSQLDataSet;
    dspExample2Firebird: TDataSetProvider;
    cdsExample2Firebird: TClientDataSet;
    dsExample2Firebird: TDataSource;
    sqlConectionFirebird: TSQLConnection;
    sqlExample2DevartTEST1: TStringField;
    sqlExample2DevartTEST2: TStringField;
    cdsExample2DevartTEST1: TStringField;
    cdsExample2DevartTEST2: TStringField;
    sqlExample2FirebirdTEST1: TStringField;
    sqlExample2FirebirdTEST2: TStringField;
    cdsExample2FirebirdTEST1: TStringField;
    cdsExample2FirebirdTEST2: TStringField;
    sqlSearchExampleDevart: TSQLDataSet;
    sqlSearchExampleFirebird: TSQLDataSet;
    sqlSearchExampleDevartFIELD_TEST1: TStringField;
    sqlSearchExampleDevartFIELD_TEST2: TStringField;
    sqlSearchExampleFirebirdFIELD_TEST1: TStringField;
    sqlSearchExampleFirebirdFIELD_TEST2: TStringField;
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
    sqlExample2DevartID: TIntegerField;
    cdsExample2DevartID: TIntegerField;
    sqlExample2FirebirdID: TIntegerField;
    cdsExample2FirebirdID: TIntegerField;
    sqlSearchExampleFirebirdID: TLargeintField;
    sqlSearchExampleDevartID: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure IncRegisterDevart;
    procedure IncRegisterFirebird;
    procedure ConsultTransactions;
  end;

var
  DDmTest: TDDmTest;

implementation

uses
  Data.DBXCommon;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDDmTest }

procedure TDDmTest.ConsultTransactions;
begin
  if not(sqlConectionDevartFirebird.Connected) then
    Abort;

  cdsTransactions.Close;
  cdsTransactions.Open;
end;

procedure TDDmTest.IncRegisterDevart;
var
  vTrans: TDBXTransaction;
begin
  vTrans := sqlConectionDevartFirebird.BeginTransaction;
  try
    cdsExample2Devart.Open;
    sqlSearchExampleDevart.Open;

    sleep(5000);

    sqlConectionDevartFirebird.CommitFreeAndNil(vTrans);
    cdsExample2Devart.Close;
  except
    on E: Exception do begin
      sqlConectionDevartFirebird.RollbackFreeAndNil(vTrans);
      raise E;
    end;
  end;
end;

procedure TDDmTest.IncRegisterFirebird;
var
  vTrans: TDBXTransaction;
begin
  vTrans := sqlConectionFirebird.BeginTransaction;
  try
    cdsExample2Firebird.Open;
    sqlSearchExampleFirebird.Open;

    sleep(5000);

    sqlConectionFirebird.CommitFreeAndNil(vTrans);
    cdsExample2Firebird.Close;
  except
    on E: Exception do begin
      sqlConectionFirebird.RollbackFreeAndNil(vTrans);
      raise E;
    end;
  end;
end;

end.
