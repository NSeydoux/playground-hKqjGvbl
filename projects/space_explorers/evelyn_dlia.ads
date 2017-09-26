package EVElyn_DLIA is

   type T_Observation is  record
      Temperature : Float;
      Wind_Speed : Integer;
      Rain : Boolean;
   end record;

   type T_Preference is record
      Minimum : Integer;
      Maximum : Integer;
   end record;

   Explorer : Integer := 5;

   function Get_Preference(Preference_Index : Integer) return T_Preference;

   function Read_Observation return T_Observation;

end EVElyn_DLIA;