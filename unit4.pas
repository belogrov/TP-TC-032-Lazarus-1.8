unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Grids,
  StdCtrls, Types;

type

  { TForm3 }

  TForm3 = class(TForm)
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
  Form3: TForm3;
  P, V : Single;
  a1, a2, a3, a4, a5, a6, a7, a8 : Byte;
  b1, b2, b3, b4, b5, b6, b7, b8 : Byte;
  c1, c2, c3, c4, c5, c6, c7, c8 : Byte;
  d1, d2, d3, d4, d5, d6, d7, d8 : Byte;
  a : Array [0..8,0..3] of Byte;
implementation

{$R *.lfm}
 uses Unit1, Unit16;
{ TForm3 }

procedure TForm3.FormCreate(Sender: TObject);
begin
  P:=Unit1.P;
  V:=Unit1.V;
  Unit16.categor;

//Проверяем первую категорию
IF V>0.001 Then b1:=1 else b1:=0; a[1,1]:=b1;

IF ( (P*V>0.005) and (P*V<=0.02) ) Then c1:=1 else c1:=0; a[1,2]:=c1;

IF P>0.05 Then d1:=1 else d1:=0; a[1,3]:=d1;

IF a1*b1*c1=1 Then a1:=1 else a1:=0; a[1,0]:=a1;

//Проверяем вторую категорию
IF V>0.001 Then b2:=1 else b2:=0; a[2,1]:=b2;

IF ( (P*V>0.02) and (P*V<=0.1) ) Then c2:=1 else c2:=0; a[2,2]:=c2;

IF P>0.05 Then d2:=1 else d2:=0; a[2,3]:=d2;

IF b2*c2*d2=1 Then a2:=1 else a2:=0; a[2,0]:=a2;

//Проверяем третью категорию
IF ( (V>0.0001) and (V<=0.001) ) Then b3:=1 else b3:=0; a[3,1]:=b3;

c3:=1; a[3,2]:=c3;

IF ( (P>100) and (P<=300) ) Then d3:=1 else d3:=0; a[3,3]:=d3;

IF b3*c3*d3=1 Then a3:=1 else a3:=0; a[3,0]:= a3;

//Проверяем третью категорию
IF ( (V>0.001) and (V<=1) ) Then b4:=1 else b4:=0; a[4,1]:=b4;

IF ( (P*V>0.1) and (P*V<=0.3) ) Then c4:=1 else c4:=0; a[4,2]:=c4;

IF P>0.05 Then d4:=1 else d4:=0; a[4,3]:=d4;

IF b4*c4*d4=1 Then a4:=1 else a4:=0; a[4,0]:=a4;

//Проверяем третью категорию
IF V>1 Then b5:=1 else b5:=0; a[5,1]:=b5;

c5:=1; a[5,2]:=c5;

IF ( (P>0.05) and (P<=0.4) ) Then d5:=1 else d5:=0; a[5,3]:=d5;

IF b5*c5*d5=1 Then a5:=1 else a5:=0; a[5,0]:=a5;

//Проверяем четвертую категорию
IF ( (V>0.0001) and (V<=0.001) ) Then b6:=1 else b6:=0; a[6,1]:=b6;

c6:=1; a[6,2]:=c6;

IF P>300 Then d6:=1 else d6:=0; a[6,3]:=d6;

IF b6*c6*d6=1 Then a6:=1 else a6:=0; a[6,0]:=a6;

//Проверяем четвертую категорию
IF ( (V>0.001) and (V<=1) ) Then b7:=1 else b7:=0; a[7,1]:=b7;

IF (P*V>0.3) Then c7:=1 else c7:=0; a[7,2]:=c7;

IF P>0.4 Then d7:=1 else d7:=0; a[7,3]:=d7;

IF b7*c7*d7=1 Then a7:=1 else a7:=0; a[7,0]:=a7;

//Проверяем четвертую категорию
IF V>1 Then a8:=1 else a8:=0; a[8,1]:=a8;

c8:=1; a[8,2]:=c8;

IF P>0.4 Then d8:=1 else d8:=0; a[8,3]:=d8;

IF b8*c8*d8=1 Then a8:=1 else a8:=0; a[8,0]:=a8;

{=====================================================}
     IF a1=1 then Label1.Caption:=Unit16.category1 else

     IF a2=1 then Label1.Caption:=Unit16.category2 else

     IF a3=1 then Label1.Caption:=Unit16.category3 else
     IF a4=1 then Label1.Caption:=Unit16.category3 else
     IF a5=1 then Label1.Caption:=Unit16.category3 else

     IF a6=1 then Label1.Caption:=Unit16.category4 else
     IF a7=1 then Label1.Caption:=Unit16.category4 else
     IF a8=1 then Label1.Caption:=Unit16.category4 else

     Label1.Caption:=Unit16.category0;

end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  Form3.Close;
end;

procedure TForm3.StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
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

