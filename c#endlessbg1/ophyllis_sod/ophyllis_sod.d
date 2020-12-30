/* Ophyllis the Treasurer */
BEGIN c#stophl

IF ~Global("C#st_MeetOphyllis","GLOBAL",0)~ THEN ophyllis
SAY @150 /* ~Oh, <CHARNAME>! It is so nice to meet you. I am Ophyllis, the Palace Treasurer. I will hold on to your gold for you when you combine forces with the Flaming Fist on the pursuit of the last of Sarevok's followers.~ */
++ @151 /* ~The Palace Treasurer? That sounds like a position with high responsibility.~ */ + ophyllis_01
++ @152 /* ~Store my gold? Why?~ */ + ophyllis_02
++ @153 /* ~What if I do not want to give my gold to you?~ */ + ophyllis_02
++ @154 /* ~I know who you are. Have a nice day.~ */ + ophyllis_03
END

IF ~~ THEN ophyllis_01
SAY @155 /* ~Oh, it is! Haha. The Dukes trust me explicitly. They know I would never take any riches for my own profit!~ */
++ @152 /* ~Store my gold? Why?~ */ + ophyllis_02
++ @153 /* ~What if I do not want to give my gold to you?~ */ + ophyllis_02
++ @154 /* ~I know who you are. Have a nice day.~ */ + ophyllis_03
END

IF ~~ THEN ophyllis_02
SAY @156 /* ~It is at the Dukes' order, I am afraid - no one marching with the Flaming Fist should have to worry about their riches - and to be honest, I think the Dukes like the idea of the men not having spare coins for inofficial pub visits, ahem.~ */
= @157 /* ~I will keep your gold safe then, but no reason for worry now, haha - I need to prepare for your gold's safekeeping, the note about it reached me only moments ago.~ */
IF ~~ THEN + ophyllis_03
END

IF ~Global("C#st_MeetOphyllis","GLOBAL",1)~ THEN ophyllis_03
SAY @158 /* ~I will approach you once you will have joined the Flaming Fist in their pursuit. Fare well until then!~ */
IF ~~ THEN DO ~SetGlobal("C#st_MeetOphyllis","GLOBAL",1)~ EXIT
END

/* guards in palace cellar */
APPEND FLAM7

IF WEIGHT #-1
~InMyArea("c#stophl")
!Dead("c#stophl")
OR(2)
Dead("Sarevok")
Global("C#st_HeroOfBG","GLOBAL",1)~ THEN ophyllis
SAY @159 /* ~Greetings, <CHARNAME>. If you are here for Ophyllis, he should be in the office.~ */
IF ~~ THEN EXIT
END

END //APPEND

/* guard in office in palace cellar */
APPEND FLAM9

IF WEIGHT #-1
~InMyArea("c#stophl")
!Dead("c#stophl")
OR(2)
Dead("Sarevok")
Global("C#st_HeroOfBG","GLOBAL",1)~ THEN ophyllis
SAY @159 /* ~Greetings, <CHARNAME>. If you are here for Ophyllis, he should be in the office.~ */
IF ~~ THEN EXIT
END

END //APPEND
