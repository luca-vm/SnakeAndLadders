program frmEndScreen_p;

uses
  Forms,
  frmSnakesAndLaddersLVM10F_u in 'frmSnakesAndLaddersLVM10F_u.pas' {frmHomeScreen},
  frmSnakesAndLaddersLVM_u in '..\Base Game\frmSnakesAndLaddersLVM_u.pas' {frmSnakesAndLadders},
  frmEndScreen_u in 'frmEndScreen_u.pas' {frmEndScreen};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmHomeScreen, frmHomeScreen);
  Application.CreateForm(TfrmSnakesAndLadders, frmSnakesAndLadders);
  Application.CreateForm(TfrmEndScreen, frmEndScreen);
  Application.Run;
end.
