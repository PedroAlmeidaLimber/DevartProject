unit FTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DTest, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, System.Threading, Vcl.Imaging.pngimage, GIFImage;

type
  TFFrmTest = class(TForm)
    tmrTransactions: TTimer;
    pnlDevart: TPanel;
    grpView: TGroupBox;
    grdView: TDBGrid;
    pnlButtons: TPanel;
    lblProcessingDevart: TLabel;
    imgProcessingDevart: TImage;
    imgOkDevart: TImage;
    rgTypeView: TRadioGroup;
    btnIncRegDevart: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnIncRegDevartClick(Sender: TObject);
    procedure tmrTransactionsTimer(Sender: TObject);
    procedure rgTypeViewClick(Sender: TObject);
  private
    FDmTest: TDDmTest;
    { Private declarations }
    procedure IncRegDevart;
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

procedure TFFrmTest.FormCreate(Sender: TObject);
begin
  FDmTest := TDDmTest.Create(Self);
  rgTypeViewClick(rgTypeView);
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

procedure TFFrmTest.rgTypeViewClick(Sender: TObject);
begin
  case rgTypeView.ItemIndex of
    0: begin
      grpView.Caption := 'Statements';
      grdView.DataSource := FDmTest.dsStatements;
    end;
    1: begin
      grpView.Caption := 'Transactions';
      grdView.DataSource := FDmTest.dsTransactions;
    end;
  end;
end;

procedure TFFrmTest.tmrTransactionsTimer(Sender: TObject);
begin
  FDmTest.ConsultTransactions;
end;

end.
