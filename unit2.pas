unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Grids,
  StdCtrls, EditBtn, Types;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);

  private

  public
    a1, a2, a3, a4, a5, a6 : byte;
    b1, b2, b3, b4, b5, b6 : byte;
    c1, c2, c3, c4, c5, c6 : byte;
    d1, d2, d3, d4, d5, d6 : byte;
    i, j : byte;
    a:array[0..6, 0..3] of byte;
    //category1, category2, category3, category4, category0 : String;
end;

var
  Form2: TForm2;
  P, V :Single;
  category : Byte;

implementation

{$R *.lfm}
 uses unit1, Unit16;
{ TForm2 }

procedure varfrom;
begin
P:=unit1.P; V:=unit1.V;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin

varfrom;
Unit16.categor;

     //Проверяем первую категорию
     IF V>0.001 Then b1:=1 else b1:=0; a[1,1] := b1;

     IF ( (P*V>0.0025) and (P*V<=0.005)) Then c1:=1 Else c1:=0; a[1,2]:=c1;

     IF P>0.05 Then d1:=1 else d1:=0; a[1,3]:=d1;

     IF b1*c1*d1=1 then a1:=1 else a1:=0; a[1,0]:=a1;


     //проверяем вторую категорию
     IF V>0.001 Then b2:=1 else b2:=0; a[2,1]:=b2;

     IF ( (P*V>0.005) and (P*V<=0.02) ) Then c2:=1 else c2:=0; a[2,2]:=c2;

     IF P>0.05 Then d2:=1 else d2:=0; a[2,3]:= d2;

     IF b2*c2*d2=1 Then a2:=1 else a2:=0; a[2,0]:=a2;


     //проверяем 3.1 категорию
     IF ( (V>0.0001) and (V<=0.001) ) Then b3:=1 else b3:=0; a[3,1]:=b3;

     c3:=1; a[3,2]:=c3;

     IF ( (P>20) and (P<=100) ) Then d3:=1 else d3:=0; a[3,3]:=d3;

     IF b3*c3*d3=1 then a3:=1 else a3:=0; a[3,0]:=a3;


     //проверяем 3.2 категорию

     IF V>0.001 then b4:=1 else b4:=0; a[4,1]:=b4;

     IF ( (P*V>0.02) and (P*V<=0.1) ) then c4:=1 else c4:=0; a[4,2]:=c4;

     IF p>0.05 then d4:=1 else d4:=0; a[4,3]:=d4;

     IF b4*c4*d4=1 then a4:=1 else a4:=0; a[4,0]:=a4;

     //проверяем 4.1 категорию

     IF ( (V>0.0001) and (V<=0.001) ) Then b5:=1 else b5:=0; a[5,1]:=b5;

     c5:=1; a[5,2]:=c5;

     IF P>100 then d5:=1 else d5:=0; a[5,3]:=d5;

     IF b5*c5*d5=1 then a5:=1 else a5:=0; a[5,0]:=a5;

     //проверяем 4.2 категорию

     IF V>0.001 Then b6:=1 else b6:=0; a[6,1]:=b6;

     IF (P*V>0.1) Then c6:=1 else c6:=0; a[6,2]:=c6;

     IF P>0.05 Then d6:=1 else d6:=0; a[6,3]:=d6;

     IF b6*c6*d6=1 Then a6:=1 else a6:=0; a[6,0]:=a6;
{=====================================================}
     IF a1=1 then Label1.Caption := Unit16.category1 else
     IF a2=1 then Label1.Caption := Unit16.category2 else
     IF a3=1 then Label1.Caption := Unit16.category3 else
     IF a4=1 then Label1.Caption := Unit16.category3 else
     IF a5=1 then Label1.Caption := Unit16.category4 else
     IF a6=1 then Label1.Caption := Unit16.category4 else
     Label1.Caption:=Unit16.category0;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form2.Close;
end;

procedure TForm2.StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
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

