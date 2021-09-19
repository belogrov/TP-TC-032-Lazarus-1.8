unit Unit16;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;



var category1, category2, category3, category4, category0 : String;
    grp_sos_1, grp_sos_2, grp_sos_3, grp_sos_4, grp_sos_5, grp_sos_0 : String;
    P , V : Single;

    procedure categor;
    procedure grp_sos;
    //procedure cell_paint;


implementation
uses Unit1;
procedure categor;
Begin
category1 := 'Характеристики оборудования соответствуют ПЕРВОЙ (1-ой) категории';
category2 := 'Характеристики оборудования соответствуют ВТОРОЙ (2-ой) категории';
category3 := 'Характеристики оборудования соответствуют ТРЕТЬЕЙ (3-ей) категории';
category4 := 'Характеристики оборудования соответствуют ЧЕТВЕРТОЙ (4-ой) категории';
category0 := 'Характеристики оборудования соответствуют UNDEF (UNDEF) категории';
end;

procedure grp_sos;
Begin
grp_sos_1 := 'Характеристики сосуда соответствуют ПЕРВОЙ (1-ой) группе';
grp_sos_2 := 'Характеристики сосуда соответствуют ВТОРОЙ (2-ой) группе';
grp_sos_3 := 'Характеристики сосуда соответствуют ТРЕТЬЕЙ (3-ей) группе';
grp_sos_4 := 'Характеристики сосуда соответствуют ЧЕТВЕРТОЙ (4-ой) группе';
grp_sos_5 := 'Характеристики сосуда соответствуют ПЯТОЙ (5-ой) группе';
grp_sos_0 := 'Характеристики сосуда соответствуют UNDEF (UNDEF) группе';
end;

{procedure cell_paint;

var arow, acol:integer; Sender: TObject;
Begin
  with sender as TStringGrid DO

  IF aRow=0 then
  begin
       Canvas.Brush.Color:=clWindow;
       Canvas.FillRect(aRect);
       Canvas.TextOut(aRect.Left,aRect.Top,StringGrid1.Cells[aCol,aRow]);
  end

  else

  IF ( (a[aRow,aCol]=1) and (aRow<>0) ) THEN
  Begin
     Canvas.Brush.Color:=clGreen;
     Canvas.FillRect(aRect);
     Canvas.TextOut(aRect.Left,aRect.Top,StringGrid1.Cells[aCol,aRow]);
  end
         else
  Begin
       Canvas.Brush.Color:=clRed;
       Canvas.FillRect(aRect);
       Canvas.TextOut(aRect.Left,aRect.Top,StringGrid1.Cells[aCol,aRow]);
  end;


  end

end;  }




end.

