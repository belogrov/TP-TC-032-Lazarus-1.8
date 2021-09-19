unit Unit12;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Grids,
  StdCtrls, Types;

type

  { TForm11 }

  TForm11 = class(TForm)
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
  Form11: TForm11;
  P, t : Single;
  a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11 : Byte;
  b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11 : Byte;
  c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11 : Byte;
  d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11 : Byte;
  a : Array [0..11,0..3] of Byte;
  u_water, vacuum, toxic_123, toxic_4, fire, other : Boolean;

implementation

{$R *.lfm}
uses Unit1, Unit16;

{ TForm11 }

procedure TForm11.FormCreate(Sender: TObject);
begin
  P:=Unit1.P; t:=Unit1.t;
  Unit16.grp_sos;

IF Form1.CheckBox3.Checked=True Then toxic_123 :=True else toxic_123:=False;
IF Form1.CheckBox4.Checked=True then toxic_4 := True else toxic_4:=False;
IF Form1.CheckBox5.Checked=True Then fire := True else fire:=False;
IF Form1.CheckBox6.Checked=True Then other := True else other:=False;

  u_water := Form1.CheckBox1.Checked;
  vacuum := Form1.CheckBox2.Checked;

//Проверяем 1.1
IF ( (u_water=True) and ( (P>0) and (P<=0.05) ) ) Then b1:=1 else b1:=0; a[1,1]:=b1;

c1:=1; a[1,2]:=c1;

IF ( (toxic_123=true) and ((toxic_4=false) and (fire=false) and (other=False))) Then d1:=1 else d1:=0; a[1,3]:=d1;

IF b1*c1*d1=1 Then a1:=1 else a1:=0; a[1,0]:=a1;

//Проверяем 1.2
IF ( (P>0.05) or vacuum=True ) Then b2:=1 else b2:=0; a[2,1]:=b2;

c2:=1; a[2,2]:=c2;

IF (  ((fire=True) or (toxic_123=True)) and ((other=false) and (toxic_4=false))  ) Then d2:=1 else d2:=0; a[2,3]:=d2;

IF b2*c2*d2=1 Then a2:=1 else a2:=0; a[2,0]:=a2;

//Проверяем 2.1
IF (P<=2.5) Then b3:=1 else b3:=0; a[3,1]:=b3;

IF (t>400) Then c3:=1 else c3:=0; a[3,2]:=c3;

IF ( ((other=true) or (toxic_4=true)) and ((toxic_123=false) and (fire=False))) Then d3:=1 else d3:=0; a[3,3]:=d3;

IF b3*c3*d3=1 Then a3:=1 else a3:=0; a[3,0]:=a3;

//Проверяем 2.2
IF ( (P>2.5) and (P<=5) ) Then b4:=1 else b4:=0; a[4,1]:=b4;

IF (t>200) Then c4:=1 else c4:=0; a[4,2]:=c4;

IF ( ((other=true) or (toxic_4=true)) and ((toxic_123=false) and (fire=False))) Then d4:=1 else d4:=0; a[4,3]:=d4;

IF b4*c4*d4=1 Then a4:=1 else a4:=0; a[4,0]:=a4;

//Проверяем 2.3
IF (P>=5) Then b5:=1 else b5:=0; a[5,1]:=b5;

c5:=1; a[5,2]:=c5;

IF ( ((other=true) or (toxic_4=true)) and ((toxic_123=false) and (fire=False))) Then d5:=1 else d5:=0; a[5,3]:=d5;

IF b5*c5*d5=1 Then a5:=1 else a5:=0; a[5,0]:=a5;

//Проверяем 2.4
IF (P<5) Then b6:=1 else b6:=0; a[6,1]:=b6;

IF (t<-40) Then c6:=1 else c6:=0; a[6,2]:=c6;

IF ( ((other=true) or (toxic_4=true)) and ((toxic_123=false) and (fire=False))) Then d6:=1 else d6:=0; a[6,3]:=d6;

IF b6*c6*d6=1 Then a6:=1 else a6:=0; a[6,0]:=a6;

//Проверяем 3.1
IF (P<2.5) Then b7:=1 else b7:=0; a[7,1]:=b7;

IF ( (t>-40) and (t<=400) ) then c7:=1 else c7:=0; a[7,2]:=c7;

IF ( ((other=true) or (toxic_4=true)) and ((toxic_123=false) and (fire=False))) Then d7:=1 else d7:=0; a[7,3]:=d7;

IF b7*c7*d7=1 Then a7:=1 else a7:=0; a[7,0]:=a7;

//Проверяем 3.2
IF ( (P>2.5) and (P<=5) ) Then b8:=1 else b8:=0; a[8,1]:=b8;

IF ( (t>-40) and (t<=200) ) then c8:=1 else c8:=0; a[8,2]:=c8;

IF ( ((other=true) or (toxic_4=true)) and ((toxic_123=false) and (fire=False))) Then d8:=1 else d8:=0; a[8,3]:=d8;

IF b8*c8*d8=1 Then a8:=1 else a8:=0; a[8,0]:=a8;

//ПРоверяем 4
IF (P<1.6) Then b9:=1 else b9:=0; a[9,1]:=b9;

IF ( (t>-20) and (t<=200) ) then c9:=1 else c9:=0; a[9,2]:=c9;

IF ( ((other=true) or (toxic_4=true)) and ((toxic_123=false) and (fire=False))) Then d9:=1 else d9:=0; a[9,3]:=d9;

IF b9*c9*d9=1 Then a9:=1 else a9:=0; a[9,0]:=a9;

//Проверяем 5.1
IF ( (u_water=True) and ( (P>0) and (P<=0.05) ) ) Then b10:=1 else b10:=0; a[10,1]:=b10;

c10:=1; a[10,2]:=c10;

IF ( ( (other=True) or (toxic_4=True) or (fire=True) ) and (toxic_123=False) ) Then d10:=1 else d10:=0; a[10,3]:=d10;

IF b10*c10*d10=1 Then a10:=1 else a10:=0; a[10,0]:=a10;

//Проверяем 5.2
IF (vacuum=True) Then b11:=1 else b11:=0; a[11,1]:=b11;

c11:=1; a[11,2]:=c11;

IF ( ( (fire=True) or (toxic_4=True) ) and ( (toxic_123=False) and (other=False) ) ) Then d11:=1 else d11:=0; a[11,3]:=d11;

IF b11*c11*d11=1 Then a11:=1 else a11:=0; a[11,0]:=a11;

{===============================================================}
     IF a1=1 then Label1.Caption:=Unit16.grp_sos_1 else
     IF a2=1 then Label1.Caption:=Unit16.grp_sos_1 else

     IF a3=1 then Label1.Caption:=Unit16.grp_sos_2 else
     IF a4=1 then Label1.Caption:=Unit16.grp_sos_2 else
     IF a5=1 then Label1.Caption:=Unit16.grp_sos_2 else
     IF a6=1 then Label1.Caption:=Unit16.grp_sos_2 else

     IF a7=1 then Label1.Caption:=Unit16.grp_sos_3 else
     IF a8=1 then Label1.Caption:=Unit16.grp_sos_3 else

     IF a9=1 then Label1.Caption:=Unit16.grp_sos_4 else

     IF a10=1 then Label1.Caption:=Unit16.grp_sos_5 else
     IF a11=1 then Label1.Caption:=Unit16.grp_sos_5 else

     Label1.Caption:=Unit16.grp_sos_0;
end;

procedure TForm11.StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
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

procedure TForm11.Button1Click(Sender: TObject);
begin
  Form11.Close;
end;

end.

