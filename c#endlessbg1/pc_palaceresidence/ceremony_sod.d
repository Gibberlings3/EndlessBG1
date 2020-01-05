INTERJECT BELT %belt_victory% c#st_belt_victory
== BELT @40 /* ~Please follow me!~ */
END
IF ~~ THEN DO ~SetGlobal("C#st_HeroCutScene","GLOBAL",1)
ClearAllActions() StartCutSceneMode() StartCutScene("c#stcut1")~ EXIT

APPEND BELT

IF WEIGHT #-1
~Global("C#st_HeroCutScene","GLOBAL",1)~ THEN victory_00
SAY @41 /* ~<CHARNAME> from Candlekeep!~ */
IF ~~ THEN DO ~SetGlobal("C#st_HeroCutScene","GLOBAL",2)~ + %belt_victory_01%
END

END

INTERJECT BELT %belt_victory_01% c#st_belt_victory_01
== BELT @42 /* ~With the title come official quarters for you on the third level of the Ducal Palace! The servants will help you settle in as soon as you are ready. Everyone, praise our Hero of Baldur's Gate!~ */
END
IF ~~ THEN DO ~SetGlobal("C#st_HeroOfBG","GLOBAL",1)
ClearAllActions() StartCutSceneMode() StartCutScene("c#stcut2")~ EXIT