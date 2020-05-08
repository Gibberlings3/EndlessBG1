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

ADD_TRANS_TRIGGER BELT %belt_victory_42% ~False()~ DO 0

EXTEND_BOTTOM BELT %belt_victory_42% 
IF ~~ THEN DO ~SetGlobal("C#st_HeroOfBG","GLOBAL",1)
ClearAllActions() StartCutSceneMode() StartCutScene("c#stcut2")~ EXIT
END