unit Unit14;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm13 }

  TForm13 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form13: TForm13;

implementation

{$R *.lfm}

{ TForm13 }

procedure TForm13.Button1Click(Sender: TObject);
begin
  Form13.Close;
end;

procedure TForm13.Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Randomize;
  Button1.Left:=Random(Form13.Width);
  Button1.Top:=Random(Form13.Height);
end;

procedure TForm13.Button2Click(Sender: TObject);
begin
  Button2.Visible:=False;
  Button1.Visible:=False;
  Button3.Visible:=True;
end;

procedure TForm13.Button3Click(Sender: TObject);
begin
  Form13.Close;
end;



end.

