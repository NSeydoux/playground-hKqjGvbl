with Ada.Numerics.discrete_Random;
with Ada.Numerics.Float_Random;

package body RandGen is

   	subtype Rand_Range is Positive;
   	package Rand_Int is new Ada.Numerics.Discrete_Random(Rand_Range);
   	--package Rand_Float is new Ada.Numerics.Float_Random(Ada.Numerics.Float_Random.Uniformly_Distributed);

	int_gen : Rand_Int.Generator;
	float_gen : Ada.Numerics.Float_Random.Generator;

   	function generate_random_integer ( n: in Positive) return Integer is
   	begin
    	return Rand_Int.Random(int_gen) mod n;  -- or mod n+1 to include the end value
   	end generate_random_integer;

   	function generate_random_float ( n: in Float) return Float is
   	begin

      	return Ada.Numerics.Float_Random.Random(float_gen)*n;
   	end generate_random_float;

-- package initialisation part
begin
   	Rand_Int.Reset(int_gen);
   	Ada.Numerics.Float_Random.Reset(float_gen);
end RandGen;