unit FConfigConnection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, FTest,
  Data.SqlExpr;

type
  TFFrmConnect = class(TForm)
    lblDirectory: TLabel;
    lblUsername: TLabel;
    lblPassword: TLabel;
    edtDirectory: TEdit;
    edtUsername: TEdit;
    edtPassword: TEdit;
    btnSelecDirectory: TBitBtn;
    btnConnect: TBitBtn;
    dlgDatabaseDirectory: TOpenDialog;
    procedure btnSelecDirectoryClick(Sender: TObject);
    procedure btnConnectClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function LoginValidate: Boolean;

    procedure SetConnection(var SqlConnection: TSQLConnection);
    procedure Connect;
  public
    { Public declarations }
  end;

var
  FFrmConnect: TFFrmConnect;

implementation

{$R *.dfm}

procedure TFFrmConnect.btnConnectClick(Sender: TObject);
begin
  if not(LoginValidate) then
    Abort;

  Connect;
end;

procedure TFFrmConnect.btnSelecDirectoryClick(Sender: TObject);
begin
  dlgDatabaseDirectory.InitialDir := GetCurrentDir;
  if (dlgDatabaseDirectory.Execute()) then
    edtDirectory.Text := dlgDatabaseDirectory.FileName;
end;

procedure TFFrmConnect.Connect;
begin
  SetConnection(FFrmTest.DmTest.sqlConectionDevartFirebird);
  SetConnection(FFrmTest.DmTest.sqlConectionFirebird);
  FFrmTest.Show;
  Self.Close;
end;

procedure TFFrmConnect.FormClose(Sender: TObject; var Action: TCloseAction);
var
  P: Pointer;
begin
  P := @Application.MainForm;
  TForm(P^) := FFrmTest;
  Application.MainForm.Show;
end;

function TFFrmConnect.LoginValidate: Boolean;
begin
  Result := False;
  if not(FileExists(edtDirectory.Text)) then begin
    ShowMessage('Can''t find database.' + sLineBreak + edtDirectory.Text);
    Abort;
  end;

  if ((edtUsername.Text = EmptyStr) or
      (edtPassword.Text = Emptystr)) then begin
    ShowMessage('Enter firebird username and password.');
    Abort;
  end;

  Result := True;
end;

procedure TFFrmConnect.SetConnection(var SqlConnection: TSQLConnection);
begin
  SqlConnection.Close;
  SqlConnection.Params.Values['DataBase'] := edtDirectory.Text;
  SqlConnection.Params.Values['User_Name'] := edtUsername.Text;
  SqlConnection.Params.Values['Password'] := edtPassword.Text;
  SqlConnection.Open;
end;

end.
