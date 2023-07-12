program frmSnakesAndLaddersLVM_p;

uses
  Forms,
  frmEndScreen_u in '..\Full Game (Home and End screen)\frmEndScreen_u.pas' {frmEndScreen},
  frmSnakesAndLaddersLVM_u in 'frmSnakesAndLaddersLVM_u.pas' {frmSnakesAndLadders},
  frmSnakesAndLaddersLVM10F_u in '..\Full Game (Home and End screen)\frmSnakesAndLaddersLVM10F_u.pas' {frmHomeScreen};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSnakesAndLadders, frmSnakesAndLadders);
  Application.CreateForm(TfrmEndScreen, frmEndScreen);
  Application.CreateForm(TfrmSnakesAndLadders, frmSnakesAndLadders);
  Application.CreateForm(TfrmHomeScreen, frmHomeScreen);
  Application.Run;

  end.
