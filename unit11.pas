unit Unit11;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Grids,
  StdCtrls, Types;

type

  { TForm10 }

  TForm10 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
  private

  public

  end;

var
  Form10: TForm10;
  P, D : Single;
  a1, a2 : Byte;
  b1, b2 : Byte;
  c1, c2 : Byte;
  d1, d2 : Byte;
  a : array[0..2,0..3] of Byte;

implementation

{$R *.lfm}
uses Unit1, Unit16;

{ TForm10 }

procedure TForm10.Button1Click(Sender: TObject);
begin
  Form10.Close;
end;

procedure TForm10.FormCreate(Sender: TObject);
begin
    P:=Unit1.P; D:=Unit1.D;
    Unit16.categor;

//Проверяем 1.1 категорию
IF D>200 Then b1:=1 else b1:=0; a[1,1]:=b1;

IF (D*P>500) Then c1:=1 else c1:=0; a[1,2]:=c1;

IF ( (P>1) and (P<=50) ) Then d1:=1 else d1:=0; a[1,3]:=d1;

IF b1*c1*d1=1 Then a1:=1 else a1:=0; a[1,0]:=a1;

//Проверяем 2.1 категорию
IF D>200 Then b2:=1 else b2:=0; a[2,1]:=b2;

c1:=1; a[2,2]:=c1;

IF P>50 Then d2:=1 else d2:=0; a[2,3]:=d2;

IF b2*c2*d2=1 Then a2:=1 else a2:=0; a[2,0]:=a2;

{==================================================}
     IF a1=1 then Label1.Caption:=Unit16.category1 else

     IF a2=1 then Label1.Caption:=Unit16.category2 else

     Label1.Caption:=Unit16.category0;
end;

procedure TForm10.StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin

     IF aRow=0 then
                                  begin
                                       StringGrid1.Canvas.Brush.Color:=clWindow;
                                       StringGrid1.Canvas.FillRect(aRect);
                                       StringGrid1.Canvas.TextOut(aRect.Left,aRect.Top,StringGrid1.Cells[aCol,aRow]);
                                  end

                                  else

                                  IF ( (a[aRow,aCol]=1) and (aRow<>0) ) THEN
                                       Begin
                                       StringGrid1.Canvas.Brush.Color:=clGreen;
                                       StringGrid1.Canvas.FillRect(aRect);
                                       StringGrid1.Canvas.TextOut(aRect.Left,aRect.Top,StringGrid1.Cells[aCol,aRow]);
                                       end
                                                         else
                                        Begin
                                                     StringGrid1.Canvas.Brush.Color:=clRed;
                                                     StringGrid1.Canvas.FillRect(aRect);
                                                     StringGrid1.Canvas.TextOut(aRect.Left,aRect.Top,StringGrid1.Cells[aCol,aRow]);
                                                end;


end;

end.

