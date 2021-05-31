program CRUD;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  uDM1 in 'uDM1.pas' {DM1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM1, DM1);
  Application.Run;
end.
