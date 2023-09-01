unit FTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DTest, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, System.Threading, Vcl.Imaging.pngimage, GIFImage;

type
  TFFrmTest = class(TForm)
    pnlDevart: TPanel;
    btnIncRegDevart: TButton;
    grpTransactions: TGroupBox;
    grdTransactions: TDBGrid;
    tmrTransactions: TTimer;
    btnIncRegFirebird: TButton;
    imgProcessingDevart: TImage;
    imgProcessingFirebird: TImage;
    imgOkDevart: TImage;
    imgOkFirebird: TImage;
    lblProcessingDevart: TLabel;
    lblProcessingFirebird: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnIncRegDevartClick(Sender: TObject);
    procedure tmrTransactionsTimer(Sender: TObject);
    procedure btnIncRegFirebirdClick(Sender: TObject);
  private
    FDmTest: TDDmTest;
    { Private declarations }
    procedure IncRegDevart;
    procedure IncRegFirebird;
  public
    { Public declarations }
    property DmTest: TDDmTest read FDmTest;
  end;

var
  FFrmTest: TFFrmTest;

implementation

{$R *.dfm}

{ TFFrmTest }

procedure TFFrmTest.btnIncRegDevartClick(Sender: TObject);
begin
  TTask.Run(
    IncRegDevart
  );
end;

procedure TFFrmTest.btnIncRegFirebirdClick(Sender: TObject);
begin
  TTask.Run(
    IncRegFirebird
  );
end;

procedure TFFrmTest.FormCreate(Sender: TObject);
begin
  FDmTest := TDDmTest.Create(Self);
end;

procedure TFFrmTest.FormDestroy(Sender: TObject);
begin
  if Assigned(FDmTest) then
    FreeAndNil(FDmTest);
end;

procedure TFFrmTest.IncRegDevart;
begin
  try
    imgOkDevart.Visible := False;
    imgProcessingDevart.Visible := True;
    lblProcessingDevart.Caption := 'Processing...';
    FDmTest.IncRegisterDevart;
    lblProcessingDevart.Caption := 'Ok!';
    imgProcessingDevart.Visible := False;
    imgOkDevart.Visible := True;
  except
    on E: Exception do begin
      Application.MessageBox(PChar('Error: '), PChar(E.Message));
    end;
  end;
end;

procedure TFFrmTest.IncRegFirebird;
begin
  try
    imgOkFirebird.Visible := False;
    imgProcessingFirebird.Visible := True;
    lblProcessingFirebird.Caption := 'Processing...';
    FDmTest.IncRegisterFirebird;
    lblProcessingFirebird.Caption := 'Ok!';
    imgProcessingFirebird.Visible := False;
    imgOkFirebird.Visible := True;
  except
    on E: Exception do begin
      Application.MessageBox(PChar('Error: '), PChar(E.Message));
    end;
  end;
end;

procedure TFFrmTest.tmrTransactionsTimer(Sender: TObject);
begin
  FDmTest.ConsultTransactions;
end;

end.