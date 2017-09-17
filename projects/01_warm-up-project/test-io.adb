with Ada.Text_IO;
 
procedure Main is
  Str  : String (1 .. 80);
  Last : Natural;
begin
  Ada.Text_IO.Get_Line (Str, Last);
  Ada.Text_IO.Put_Line (Str (1 .. Last));
end;