# Mission 1 : Felt temperature

## Function prototype 
```
                                    +----------------------+
Observation : T_Observation ------> | Apparent_Temperature | ------> Float
                                    +----------------------+
```

## Formula

**A_T = 13.12 + 0.6215\*T + (0.3965T-11.37)\*WS**, where A_T is the apparent temperature, T the temperature, and WS the wind speed.

An important detail : the apparent temperature can only be computed when it is not raining. Otherwise, by convention, your function should return  -42.0;

@[Apparent temperature]({"stubs": ["mission_apparent_temperature.adb", "evelyn_dlia.ads"], "command": "sh mission_apparent_temperature.sh", "project":"space_explorers"})