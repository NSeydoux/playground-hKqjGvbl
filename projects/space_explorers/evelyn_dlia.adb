with Ada.Text_IO;
with RandGen;

package body EVElyn_DLIA is

	function Read_Observation return T_Observation is
		New_Observation : T_Observation;
	begin
		New_Observation.Temperature := RandGen.generate_random_float(35.0);
		New_Observation.Wind_Speed := RandGen.generate_random_integer(30);
		New_Observation.Rain := RandGen.generate_random_integer(10) < 5;
		return New_Observation;
	end Read_Observation;

   	function Get_Preference(Preference_Index : Integer) return T_Preference is
   		New_Preference : T_Preference;
   	begin
   		if(Preference_Index = 1) then
   			New_Preference.Minimum := 0;
   			New_Preference.maximum := 5;
   		elsif((Preference_Index = 2)) then 
			New_Preference.Minimum := 0;
   			New_Preference.maximum := 15;
   		elsif((Preference_Index = 3)) then 
   			New_Preference.Minimum := 10;
   			New_Preference.maximum := 20;
   		elsif((Preference_Index = 4)) then 
			New_Preference.Minimum := 20;
   			New_Preference.maximum := 25;
   		elsif((Preference_Index = 5)) then 
			New_Preference.Minimum := 15;
   			New_Preference.maximum := 35;
   		end if;
   		return New_Preference;
   	end Get_Preference;

end EVElyn_DLIA;