/* guards in palace cellar */
APPEND FLAM7

IF WEIGHT #-1
~OR(2)
Dead("Sarevok")
Global("C#st_HeroOfBG","GLOBAL",1)~ THEN hero_bg
SAY @20 /* ~Greetings, <CHARNAME>. Please leave the cellar, you should not be here.~ */
IF ~~ THEN EXIT
END

END //APPEND

/* guard in office in palace cellar */
APPEND FLAM9

IF WEIGHT #-1
~OR(2)
Dead("Sarevok")
Global("C#st_HeroOfBG","GLOBAL",1)~ THEN hero_bg
SAY @20 /* ~Greetings, <CHARNAME>. Please leave the cellar, you should not be here.~ */
IF ~~ THEN EXIT
END

END //APPEND

/* guards in palace ground floor */
APPEND FLAM10

IF WEIGHT #-1
~Dead("Sarevok")
Global("C#st_HeroOfBG","GLOBAL",0)~ THEN hero_bg
SAY @21 /* ~Greetings, <CHARNAME>.~ */
IF ~~ THEN EXIT
END

IF WEIGHT #-1
~Global("C#st_HeroOfBG","GLOBAL",1)~ THEN hero_bg
SAY @22 /* ~Greetings, Hero of Baldur's Gate.~ */
IF ~~ THEN EXIT
END

END //APPEND

/* guards in palace third floor */
APPEND FLAM11

IF WEIGHT #-1
~Dead("Sarevok")
Global("C#st_HeroOfBG","GLOBAL",0)~ THEN hero_bg
SAY @21 /* ~Greetings, <CHARNAME>.~ */
IF ~~ THEN EXIT
END

IF WEIGHT #-1
~Global("C#st_HeroOfBG","GLOBAL",1)~ THEN hero_bg
SAY @22 /* ~Greetings, Hero of Baldur's Gate.~ */
IF ~~ THEN EXIT
END

END //APPEND

/* Guards in front of the palace */

BEGIN c#stsrg1

IF ~Dead("Sarevok")
Global("C#st_HeroOfBG","GLOBAL",0)~ THEN gateguard_00
SAY @23 /* ~Go right in, <CHARNAME>. The Dukes wish to speak to you.~ */
IF ~~ THEN EXIT
END

IF ~Dead("Sarevok")
Global("C#st_HeroOfBG","GLOBAL",1)
RandomNum(5,1)~ THEN gateguard_01
SAY @24 /* ~Come right in.~ */ 
IF ~~ THEN EXIT
END

IF ~Dead("Sarevok")
Global("C#st_HeroOfBG","GLOBAL",1)
RandomNum(5,2)~ THEN gateguard_02
SAY @25 /* ~Move along friends, just make sure not to make any trouble.~ */
IF ~~ THEN EXIT
END

IF ~Dead("Sarevok")
Global("C#st_HeroOfBG","GLOBAL",1)
RandomNum(5,3)~ THEN gateguard_03
SAY @26 /* ~There are other things that I must now attend to. Good day.~ */
IF ~~ THEN EXIT
END

IF ~Dead("Sarevok")
Global("C#st_HeroOfBG","GLOBAL",1)
RandomNum(5,4)~ THEN gateguard_04
SAY @27 /* ~So we meet again. I'm sorry, but I don't have any time for talk.~ */
IF ~~ THEN EXIT
END

IF ~Dead("Sarevok")
Global("C#st_HeroOfBG","GLOBAL",1)
RandomNum(5,5)~ THEN gateguard_05
SAY @28 /* ~Do as you want, and go where you please.~ */ 
IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN gateguard_06
SAY @29 /* ~I am a proud member of the Flaming Fist. Our headquarters is in Baldur's Gate, though we also operate in Beregost and the Friendly Arm Inn. We are quite concerned about the sudden rarity of iron. Many think that the nation of Amn is gearing up for war against our great city. If this were the case, I don't know how well we would do, lacking a resource as important as iron.~ */
  IF ~~ THEN EXIT
END



/* PC servant top floor Palace */

BEGIN c#stsrv1

IF ~True()~ THEN servant1
SAY @30 /* ~Welcome, Hero of Baldur's Gate! This room will serve as your residence as long as you will stay in the city. I prepared everything and hope you will find it to your pleasing! The Dukes want me to tell you that the chest on the far left of the room will be your personal one, and everything you will put inside shall stay there as long as you take residence here. We cleared out the chests and moved everything downstairs, but if we left things in feel free to stock up your supplies with them. Have a good stay and thank you for saving the city!~ */
IF ~~ THEN DO ~AddJournalEntry(@10002,INFO)
EscapeArea()~ JOURNAL @10003/* ~My Personal Chest in the Ducal Palace 

The chest on the far left in the northwest room on the top floor of the Ducal Palace is my personal one, everything I'll put in there will stay inside as long as I take residence in the Palace.~ */ EXIT
END



/* helper cre for PC's bed */

BEGIN c#ebg1bd

IF ~True()~ THEN pcs_bed
SAY @350  /* ~This comfortable bed offers luxury you never found in Candlekeep.~ */
++ @351 /* ~You put yourself to bed for a full night's sleep (8 hours).~ */ DO ~SetGlobal("C#EBG1_TalkToPC","LOCALS",1) RestParty()~ EXIT 
++ @352 /* ~You spend the time until midnight.~ */ DO ~DayNight(MIDNIGHT) SetGlobal("C#EBG1_TalkToPC","LOCALS",1) StartMovie("RESTINN")~ EXIT  
++ @353 /* ~You spend the time until eleven at night.~ */ DO ~DayNight(23) SetGlobal("C#EBG1_TalkToPC","LOCALS",1) StartMovie("RESTINN")~ EXIT  
++ @354 /* ~You spend the time until midday.~ */ DO ~DayNight(NOON) SetGlobal("C#EBG1_TalkToPC","LOCALS",1) StartMovie("RESTINN")~ EXIT  
++ @355 /* ~You spend the time until eleven at noon.~ */ DO ~DayNight(11) SetGlobal("C#EBG1_TalkToPC","LOCALS",1) StartMovie("RESTINN")~ EXIT  
++ @356 /* ~You spend the time until ten at noon.~ */ DO ~DayNight(10) SetGlobal("C#EBG1_TalkToPC","LOCALS",1) StartMovie("RESTINN")~ EXIT 
++ @357 /* ~You spend the time until dawn starts (6 am).~ */ DO ~DayNight(DAWN_START) SetGlobal("C#EBG1_TalkToPC","LOCALS",1) StartMovie("RESTINN")~ EXIT  
++ @358 /* ~You spend the time until dawn ends (7 am).~ */ DO ~DayNight(DAWN_END) SetGlobal("C#EBG1_TalkToPC","LOCALS",1) StartMovie("RESTINN")~ EXIT  
++ @359 /* ~You spend the time until dusk starts (9 pm).~ */ DO ~DayNight(DUSK_START) SetGlobal("C#EBG1_TalkToPC","LOCALS",1) StartMovie("RESTINN")~ EXIT  
++ @360 /* ~You spend the time until dusk ends (10 pm).~ */ DO ~DayNight(DUSK_END) SetGlobal("C#EBG1_TalkToPC","LOCALS",1) StartMovie("RESTINN")~ EXIT      
++ @361 /* ~You turn away from the bed.~ */ DO ~SetGlobal("C#EBG1_TalkToPC","LOCALS",1)~ EXIT
END