unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, MaskEdit, Menus, ActnList, unit2, unit4, unit5, unit6, Unit7, Unit8,
  Unit9, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15, Unit16;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckGroup1: TCheckGroup;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure CheckBox4Change(Sender: TObject);
    procedure CheckBox5Change(Sender: TObject);
    procedure CheckBox6Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure Edit2KeyPress(Sender: TObject; var Key: char);
    procedure Edit3KeyPress(Sender: TObject; var Key: char);
    procedure Edit4KeyPress(Sender: TObject; var Key: char);
    procedure Edit5KeyPress(Sender: TObject; var Key: char);
    procedure Edit6KeyPress(Sender: TObject; var Key: char);
    procedure FormResize(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure RadioButton3Change(Sender: TObject);
    procedure RadioButton4Change(Sender: TObject);
    procedure RadioButton5Change(Sender: TObject);
    procedure RadioButton6Change(Sender: TObject);



  private

  public


  end;

var
  Form1: TForm1;
  gaz, water, grp1, grp2, gaz_tube, water_tube : byte;
  P, V, t, t_min, t_rab, t_teor, D : Single;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  Form12.ShowModal;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  Form13.ShowModal;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  Form14.ShowModal;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin

  P := StrToFloat(Edit1.Text);
  V := StrToFloat(Edit2.Text);

  IF (gaz*grp1=1) then Form2.ShowModal;
  IF (gaz*grp2=1) then Form3.ShowModal;
  IF (water*grp1=1) then Form4.ShowModal;
  IF (water*grp2=1) then Form5.ShowModal;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  P := StrToFloat(Edit1.Text);
  V := StrToFloat(Edit2.Text);
  Form6.ShowModal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  P := StrToFloat(Edit1.Text);
     D := StrToFloat(Edit4.Text);
     IF (gaz_tube*grp1=1) Then Form7.ShowModal;
     IF (gaz_tube*grp2=1) Then Form8.ShowModal;
     IF (water_tube*grp1=1) Then Form9.ShowModal;
     IF (water_tube*grp2=1) Then Form10.ShowModal;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin

  P := StrToFloat(Edit1.Text);

  t_teor := StrToFloat(Edit3.Text);
  t_rab := StrToFloat(Edit6.Text);
  t_min:= StrToFloat(Edit5.Text);

  IF ( (t_rab>=0) and (t_teor>=0) ) Then t:=t_teor Else
  IF (t_rab<0) Then t := t_min;

  Form11.ShowModal;
end;

procedure TForm1.CheckBox1Change(Sender: TObject);
begin
  IF CheckBox1.Checked=True Then CheckBox2.Checked:=False;
end;

procedure TForm1.CheckBox2Change(Sender: TObject);
begin
  IF CheckBox2.Checked=True Then CheckBox1.Checked:=False;
end;

procedure TForm1.CheckBox3Change(Sender: TObject);
begin
  IF Form1.CheckBox3.Checked=true Then
  Begin
       Form1.CheckBox4.Checked:=false;
       Form1.CheckBox6.Checked:=False;
  end;
end;

procedure TForm1.CheckBox4Change(Sender: TObject);
begin
  IF Form1.CheckBox4.Checked=True Then
  Begin
       Form1.CheckBox3.Checked:=false;
       Form1.CheckBox6.Checked:=false;
  end;
end;

procedure TForm1.CheckBox5Change(Sender: TObject);
begin
  IF Form1.CheckBox5.Checked=True Then
  Begin
       Form1.CheckBox6.Checked:=False;
  end;
end;

procedure TForm1.CheckBox6Change(Sender: TObject);
begin
  IF Form1.CheckBox6.Checked=True Then
  Begin
       Form1.CheckBox3.Checked:=false;
       Form1.CheckBox4.Checked:=false;
       Form1.CheckBox5.Checked:=false;
  end;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin

end;



procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: char);
var chars: set of char;
begin

  chars := ['0' .. '9', #8];
  with Sender as TEdit do
  begin
    if Length(Text) = 0 then
      chars := chars + ['-'];
    if Pos(DecimalSeparator, Text) = 0 then
      chars := chars + [DecimalSeparator];
  end;

  if not (Key in chars) then Key := #0;

end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: char);
var chars: set of char;
begin

  chars := ['0' .. '9', #8];
  with Sender as TEdit do
  begin
    if Length(Text) = 0 then
      chars := chars + ['-'];
    if Pos(DecimalSeparator, Text) = 0 then
      chars := chars + [DecimalSeparator];
  end;

  if not (Key in chars) then Key := #0;

end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: char);
var chars: set of char;
begin

  chars := ['0' .. '9', #8, '-'];
  with Sender as TEdit do
  begin
    if Length(Text) = 0 then
      chars := chars + ['-'];
    if Pos(DecimalSeparator, Text) = 0 then
      chars := chars + [DecimalSeparator];
  end;

  if not (Key in chars) then Key := #0;

end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: char);
var chars: set of char;
begin

  chars := ['0' .. '9', #8];
  with Sender as TEdit do
  begin
    if Length(Text) = 0 then
      chars := chars + ['-'];
    if Pos(DecimalSeparator, Text) = 0 then
      chars := chars + [DecimalSeparator];
  end;

  if not (Key in chars) then Key := #0;

end;

procedure TForm1.Edit5KeyPress(Sender: TObject; var Key: char);
var chars: set of char;
begin

  chars := ['0' .. '9', #8, '-'];
  with Sender as TEdit do
  begin
    if Length(Text) = 0 then
      chars := chars + ['-'];
    if Pos(DecimalSeparator, Text) = 0 then
      chars := chars + [DecimalSeparator];
  end;

  if not (Key in chars) then Key := #0;

end;

procedure TForm1.Edit6KeyPress(Sender: TObject; var Key: char);
var chars: set of char;
begin

  chars := ['0' .. '9', #8, '-'];
  with Sender as TEdit do
  begin
    if Length(Text) = 0 then
      chars := chars + ['-'];
    if Pos(DecimalSeparator, Text) = 0 then
      chars := chars + [DecimalSeparator];
  end;

  if not (Key in chars) then Key := #0;

end;

procedure TForm1.FormResize(Sender: TObject);
begin
    //Form1.Width:=560;
//  Form1.Height:=420;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin

end;

procedure TForm1.RadioButton1Change(Sender: TObject);
begin
  IF RadioButton1.Checked = true THEN
  BEGIN
       gaz:=1; water :=0;
  END;
end;

procedure TForm1.RadioButton2Change(Sender: TObject);
begin
  IF RadioButton2.Checked = true THEN
  BEGIN
       gaz := 0; water := 1;
  END;
end;

procedure TForm1.RadioButton3Change(Sender: TObject);
begin
  IF RadioButton3.Checked = true THEN
  Begin
       grp1 := 1; grp2 := 0;
  end;
end;

procedure TForm1.RadioButton4Change(Sender: TObject);
begin
  IF RadioButton4.Checked = true then
  Begin
       grp1 := 0; grp2 := 1;
  end;
end;

procedure TForm1.RadioButton5Change(Sender: TObject);
begin
  IF RadioButton5.Checked = True Then
  Begin
       gaz_tube:=1; water_tube:=0;
  end;
end;

procedure TForm1.RadioButton6Change(Sender: TObject);
begin
  IF RadioButton6.Checked = True Then
  Begin
       water_tube:= 1; gaz_tube:=0;
  end;
end;




end.

