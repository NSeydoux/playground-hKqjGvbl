# Let's explore the outer space !

For the remaining of these exercises, you'll lead a team of space meteorologists on a new planet, Lovelace-3000 ! What a thrill ! The weather here is completely unique: it constantly changes radically.  

## Your mission, if you accept it

You mission is to help the team set up a meteorological station on an unknown planet, and to chart the weather on this new world. To do so, you will be charged of completing several tasks : 
* First, you will implement a mathematical formula to compute the temperature felt by our intrepid team of meteorologists
* Then, you will compute some statistics to learn more about this mysterious world
* At last, you will help the meteorologists find out if they will be comfortable here

## Your top-notch sensor-packed drone : the EVE-lyn DL.IA

In order to complete your mission, your team took the best meteo drone on the market. As the engineer of the team, you are in charge of its programming. Here is its documentation: 

```
package EVElyn_DLIA is

   type T_Observation is  record
      Temperature : Float  ;
      Humidite : Integer  ;
      Luminosite : Integer ;
      Vitesse_Vent : Integer;
      Pluie : Boolean;
   end record;

   type T_Preference is record
      Minimum : Integer;
      Maximum : Integer;
   end record;

   Explorateurs : Integer := 5;

   function Get_Preference(Preference_Index : Integer) return T_Preference;

   function Lire_Observation return T_Observation;

end EVElyn_DLIA;
```
