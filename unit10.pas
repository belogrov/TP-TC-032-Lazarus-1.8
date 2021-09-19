unit Unit10;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Grids,
  StdCtrls, Types;

type

  { TForm9 }

  TForm9 = class(TForm)
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
  Form9: TForm9;
  P, D : Single;
  a1, a2, a3, a4 : Byte;
  b1, b2, b3, b4 : Byte;
  c1, c2, c3, c4 : Byte;
  d1, d2, d3, d4 : Byte;
  a : array[0..4,0..3] of Byte;

implementation

{$R *.lfm}
uses Unit1, Unit16;
{ TForm9 }

procedure TForm9.Button1Click(Sender: TObject);
begin
  Form9.Close;
end;

procedure TForm9.FormCreate(Sender: TObject);
begin
  P:=Unit1.P; D:=Unit1.D;
  Unit16.categor;

//Проверяем 1.1 категорию
IF D>25 Then b1:=1 else b1:=0; a[1,1]:=b1;

IF (P*D>200) Then c1:=1 else c1:=0; a[1,2]:=c1;

IF ( (P>0.05) and (P<=1) ) Then d1:=1 else d1:=0; a[1,3]:=d1;

IF b1*c1*d1=1 Then a1:=1 else a1:=0; a[1,0]:=a1;

//Проверяем 2.1 категорию
IF D>25 Then b2:=1 else b2:=0; a[2,1]:=b2;

IF (P*D>200) Then c2:=1 else c2:=0; a[2,2]:=c2;

IF ( (P>1) and (P<=8) ) Then d2:=1 else d2:=0; a[2,3]:=d2;

IF b2*c2*d2=1 Then a2:=1 else a2:=0; a[2,0]:=a2;

//Проверяем 2.2 категорию
IF D>25 Then b3:=1 else b3:=0; a[3,1]:=b3;

IF (P*D>350) Then c3:=1 else c3:=0; a[3,2]:=c3;

IF ( (P>8) and (P<=50) ) Then d3:=1 else d3:=0; a[3,3]:=d3;

IF b3*c3*d3=1 Then a3:=1 else a3:=0; a[3,0]:=a3;

//Проверяем 3.1 категорию
IF D>25 Then b4:=1 else b4:=0; a[4,1]:=b4;

c4:=1; a[4,2]:=c4;

IF P>50 Then d4:=1 else d4:=0; a[4,3]:=d4;

IF b4*c4*d4=1 Then a4:=1 else a4:=0; a[4,0]:=a4;

{==================================================}
     IF a1=1 then Label1.Caption:=Unit16.category1 else

     IF a2=1 then Label1.Caption:=Unit16.category2 else
     IF a3=1 then Label1.Caption:=Unit16.category2 else

     IF a4=1 then Label1.Caption:=Unit16.category3 else

     Label1.Caption:=Unit16.category0;
end;

procedure TForm9.StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
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

