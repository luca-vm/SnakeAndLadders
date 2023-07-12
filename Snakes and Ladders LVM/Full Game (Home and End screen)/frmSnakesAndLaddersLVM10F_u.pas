unit frmSnakesAndLaddersLVM10F_u;      //Coded by Luca von Mayer 10F

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frmSnakesAndLaddersLVM_u, pngimage, ExtCtrls, jpeg;

type
  TfrmHomeScreen = class(TForm)
    imgHomeBackground: TImage;
    tmrClickToStart: TTimer;
    lblClickToStart: TLabel;
    memRules: TMemo;
    lblSnakesAndLadders: TLabel;
    tmrStartGame: TTimer;
    lblStartGame: TLabel;
    procedure tmrClickToStartTimer(Sender: TObject);
    procedure lblClickToStartClick(Sender: TObject);
    procedure tmrStartGameTimer(Sender: TObject);
    procedure lblStartGameClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHomeScreen: TfrmHomeScreen;

implementation

{$R *.dfm}



procedure TfrmHomeScreen.lblClickToStartClick(Sender: TObject);
begin
  memRules.Visible := True;             //Displays rules and I'm ready lable
  tmrClickToStart.Enabled := False;
  lblClickToStart.Visible := False;
  tmrStartGame.Enabled := True;
end;

procedure TfrmHomeScreen.lblStartGameClick(Sender: TObject);
begin
  Sleep(1000);                               //Opens main form
  frmHomeScreen.Hide;
  frmSnakesAndLadders.Show;
end;

procedure TfrmHomeScreen.tmrClickToStartTimer(Sender: TObject);
begin
  if lblClickToStart.Visible = True                    //Enables the flashing lable
   then  lblClickToStart.Visible := False
      else if lblClickToStart.Visible = False
        then lblClickToStart.Visible := True;

end;



procedure TfrmHomeScreen.tmrStartGameTimer(Sender: TObject);
begin
 if lblStartGame.Visible = True                      //Enables the flashing lable
   then lblStartGame.Visible := False
      else if lblStartGame.Visible = False
        then lblStartGame.Visible := True;

end;

end.
