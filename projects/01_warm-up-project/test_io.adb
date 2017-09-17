with Ada.Text_IO;
with Ada.Strings.Fixed;

procedure test_io is
  Str  : String (1 .. 80);
  Number_lines : Integer;
  Current_value : Integer;
  Last : Natural;
begin
  Ada.Text_IO.Get_Line (Str, Last);
  Number_lines := Integer'Value(Str(1..Last));
  for i in 1..Number_lines loop
  	Ada.Text_IO.Get_Line (Str, Last);
  	Current_value := Integer'Value(Str(1..Last));
  	Ada.Text_IO.Put_Line(Integer'Image(Current_value*2));
  end loop;
end test_io;