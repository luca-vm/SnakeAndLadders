unit frmEndScreen_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, frmSnakesAndLaddersLVM_u, frmSnakesAndLaddersLVM10F_u, Buttons,
  jpeg;

type
  TfrmEndScreen = class(TForm)
    imgWin: TImage;
    lblWin: TLabel;
    bbmClose: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure bbmCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEndScreen: TfrmEndScreen;

implementation

{$R *.dfm}

procedure TfrmEndScreen.bbmCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;


procedure TfrmEndScreen.FormActivate(Sender: TObject);
begin
                                               //Shows the winning messages
  if frmSnakesAndLadders.iWin = 1
  then lblWin.Caption := 'Congratulations ' + #13 +  ' you have won ' + #13 + 'the game in '  + IntToStr(frmSnakesAndLadders.iCount) + ' moves!'
    else if frmSnakesAndLadders.iWin = 2
          then lblWin.Caption :=  'Congratulations ' + #13 + frmSnakesAndLadders.sName1 + ' you have' +  #13 + ' won the game!'
          else if frmSnakesAndLadders.iWin = 3
              then lblWin.Caption :=  'Congratulations ' + #13 + frmSnakesAndLadders.sName2 + ' you have' +  #13 + ' won the game!';


end;



end.
