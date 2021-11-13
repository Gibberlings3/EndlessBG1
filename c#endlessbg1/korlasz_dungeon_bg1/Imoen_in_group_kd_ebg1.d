
/* first dialogue in Korlasz's crypt */
INTERJECT BDIMOEN 0 C#EBG1_BDIMOEN_0
== BDIMOEN IF ~InParty("%IMOEN_DV%")~ THEN 
@0
END
  IF ~  IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY #%eet_2%63943 /* ~What do we know of our prey?~ */ EXTERN ~BDDYNAHJ~ 3
  IF ~  !IsValidForPartyDialogue("Dynaheir")
~ THEN REPLY #%eet_2%63943 /* ~What do we know of our prey?~ */ GOTO 2
  IF ~~ THEN REPLY #%eet_2%63944 /* ~Sounds simple enough. Let's get to it.~ */ GOTO 5


EXTEND_BOTTOM BDIMOEN 2 
IF ~InParty("%IMOEN_DV%")~ THEN + 5
END

/* ADD_TRANS_TRIGGER BDIMOEN 9 ~!InParty("%IMOEN_DV%")~ DO 9 */

/* turn this into Dialogue */
REPLACE_STATE_TRIGGER BDIMOEN 9 ~GlobalLT("C#EBG1_IntermediateDialogue","LOCALS",2)
OR(2)
Global("C#EBG1_IntermediateDialogue","LOCALS",1) Global("bd_plot","global",10)
OR(2)
AreaCheck("bd0120")
AreaCheck("bd0130")~
ADD_TRANS_ACTION BDIMOEN BEGIN 9 END BEGIN END ~SetGlobal("C#EBG1_IntermediateDialogue","LOCALS",2)~


/* ADD_TRANS_TRIGGER BDIMOEN 12 ~!InParty("%IMOEN_DV%")~ DO 9 */

EXTEND_BOTTOM BDIMOEN 9 12 
+ ~InParty("%IMOEN_DV%") Global("C#EBG1_AskedAboutJannath","LOCALS",0)~ + @1 DO ~SetGlobal("C#EBG1_AskedAboutJannath","LOCALS",1)~ + 22_add
END

CHAIN 
IF ~~ THEN BDIMOEN  22_add
@2
== BDIMOEN IF ~!Class("%IMOEN_DV%",MAGE_ALL)~ THEN @3
== BDIMOEN @4
== BDIMOEN @5
== bdimoen IF ~Class("%IMOEN_DV%",MAGE_ALL)~ THEN #%eet_2%63972 /* ~It's strange having these new arcane powers. Back in Candlekeep, I never dreamed I might be a spellslinger like Gorion some day. Life sure has taken us to unexpected places. You more than me, I guess.~ [BD63972] */
END
  IF ~~ THEN REPLY #%eet_2%65054 /* ~I have another question for you.~ */ GOTO 12
  IF ~~ THEN REPLY #%eet_2%65055 /* ~Let's continue on.~ */ GOTO 28

ADD_STATE_TRIGGER BDIMOEN 29 ~!InParty("%IMOEN_DV%")~

APPEND BDIMOEN

/* Korlasz is defeated with Imoen in group */
IF WEIGHT #-1
~Global("C#EBG1_KORLASZ_Defeated","LOCALS",1)~ THEN BEGIN 29_add
  SAY @6
++ @7 + 29_add_01
  IF ~~ THEN REPLY @8 GOTO 29_add_02
  IF ~~ THEN REPLY #%eet_2%64518 /* ~The important thing is we've triumphed—you and I are safe.~ */ GOTO 29_add_02
++ @9 + 29_add_02
END

IF ~~ THEN 29_add_01
SAY @10
  IF ~~ THEN REPLY @8 GOTO 29_add_02
  IF ~~ THEN REPLY #%eet_2%64518 /* ~The important thing is we've triumphed—you and I are safe.~ */ GOTO 29_add_02
++ @9 + 29_add_02
END

IF ~~ THEN BEGIN 29_add_02 
  SAY #%eet_2%64521 /* ~I suppose so. Are you ready to leave now? This place gives me the shivers.~ [BD64521] */
  IF ~~ THEN REPLY #%eet_2%64522 /* ~I am.~ */ GOTO 29_add_04
  IF ~~ THEN REPLY #%eet_2%64524 /* ~Not yet. I want to look around.~ */ GOTO 29_add_03
END

IF ~~ THEN BEGIN 29_add_03
  SAY @11
IF ~~ THEN + 29_add_04
END

IF ~~ THEN BEGIN 29_add_04
  SAY @12 
  IF ~~ THEN DO ~AddXPObject(Player1,5000)
AddXPObject(Player2,5000)
AddXPObject(Player3,5000)
AddXPObject(Player4,5000)
AddXPObject(Player5,5000)
AddXPObject(Player6,5000)
SetGlobal("C#EBG1_KORLASZ_Defeated","LOCALS",2)
SetGlobal("BDSH_Imoen_Floor","GLOBAL",3)
SetGlobal("BDSH_Rope","GLOBAL",1)
ActionOverride("BDFF1000",EscapeAreaObject("Tranbd0120rope"))
ActionOverride("BDFF1001",EscapeAreaObject("Tranbd0120rope"))
ActionOverride("BDFF1002",EscapeAreaObject("Tranbd0120rope"))
~ EXIT
END


/* group finds Korlasz's tomes about Bhaal research with Imoen in group */
IF WEIGHT #-1
~Global("C#EBG1_BhaalResearchKD","GLOBAL",1)~ THEN bhaal_research
SAY @13
++ @14 + bhaal_research_01
++ @15 + bhaal_research_02
END

IF ~~ THEN BEGIN bhaal_research_01
  SAY #%eet_2%64525 /* ~This is exactly the sort of thing I was looking for. Thanks. I'll tell Duke Jannath you found these when we get back to the palace.~ [BD64525] */
  IF ~~ THEN DO ~SetGlobal("C#EBG1_BhaalResearchKD","GLOBAL",3)
ActionOverride(Player1,DestroyItem("BDSHBHR"))
ActionOverride(Player2,DestroyItem("BDSHBHR"))
ActionOverride(Player3,DestroyItem("BDSHBHR"))
ActionOverride(Player4,DestroyItem("BDSHBHR"))
ActionOverride(Player5,DestroyItem("BDSHBHR"))
ActionOverride(Player6,DestroyItem("BDSHBHR"))~ EXIT
END

IF ~~ THEN BEGIN bhaal_research_02
  SAY @16
IF ~~ THEN DO ~SetGlobal("C#EBG1_BhaalResearchKD","GLOBAL",2)~
EXIT
END

END //APPEND


/* ADD_TRANS_TRIGGER BDIMOEN 33 ~!InParty("%IMOEN_DV%")~ DO 1 */

EXTEND_BOTTOM BDIMOEN 33 
  IF ~InParty("%IMOEN_DV%") PartyHasItem("BDSHBHR")~ THEN REPLY @17  GOTO 36
END

ADD_TRANS_ACTION BDIMOEN BEGIN 34 END BEGIN END ~SetGlobal("bd_plot","global",40)
SetGlobal("bd_Imoen_farewell","bd0120",1)~

ALTER_TRANS BDIMOEN
	BEGIN 34 END
	BEGIN 0 END
	BEGIN "EPILOGUE" ~GOTO 46~ END

/* make sure the tomes are actually gone from inventory after giving them to Imoen */

ADD_TRANS_ACTION BDIMOEN BEGIN 36 END BEGIN END ~SetGlobal("C#EBG1_BhaalResearchKD","GLOBAL",4)
ActionOverride(Player1,DestroyItem("BDSHBHR"))
ActionOverride(Player2,DestroyItem("BDSHBHR"))
ActionOverride(Player3,DestroyItem("BDSHBHR"))
ActionOverride(Player4,DestroyItem("BDSHBHR"))
ActionOverride(Player5,DestroyItem("BDSHBHR"))
ActionOverride(Player6,DestroyItem("BDSHBHR"))~


/* change dialogue of the FF soldiers at crypt exit, and prevent them to transition to bdimoen. */
ALTER_TRANS BDFF1000
	BEGIN 0 END
	BEGIN %responses_BDFF1000_0% END
	BEGIN "EPILOGUE" ~GOTO mention_rope~ END

ALTER_TRANS BDFF1001
	BEGIN 0 END
	BEGIN %responses_BDFF1001_0% END
	BEGIN "EPILOGUE" ~EXTERN BDFF1000 mention_rope~ END

ALTER_TRANS BDFF1002
	BEGIN 0 END
	BEGIN %responses_BDFF1002_0% END
	BEGIN "EPILOGUE" ~EXTERN BDFF1000 mention_rope~ END


APPEND BDFF1000 
IF ~~ THEN mention_rope
SAY @200 /* ~Climb the rope whenever you are ready to return to the Palace. We will be right behind you.~ */
IF ~~ THEN EXIT
END
END

/* after Korlasz' dungeon is done */

/* prevent bdcut00z.bcs from running */
/*
EXTEND_BOTTOM bdimoen 53
IF ~~ THEN DO ~SetGlobal("bd_Imoen_farewell","bd0120",2)
AddJournalEntry(%eet_2%69028,QUEST_DONE)~ EXIT
END

EXTEND_BOTZOM bdimoen 54
IF ~~ THEN DO ~SetGlobal("bd_Imoen_farewell","bd0120",2)
AddJournalEntry(%eet_2%69028,QUEST_DONE)~ EXIT
END
*/
REPLACE_TRANS_ACTION bdimoen BEGIN 53 END BEGIN 0 END ~StartCutSceneEx("bdcut00z",FALSE)~ ~SetGlobal("C#EBG1_ImoenFinalDialog","GLOBAL",2)
SetGlobal("C#EBG1_KorlaszQuest","GLOBAL",2)~
REPLACE_TRANS_ACTION bdimoen BEGIN 53 END BEGIN 0 END ~SetCutSceneLite(TRUE)~ ~~
REPLACE_TRANS_ACTION bdimoen BEGIN 54 END BEGIN 0 END ~StartCutSceneEx("bdcut00z",FALSE)~ ~SetGlobal("C#EBG1_ImoenFinalDialog","GLOBAL",2)
SetGlobal("C#EBG1_KorlaszQuest","GLOBAL",2)~
REPLACE_TRANS_ACTION bdimoen BEGIN 54 END BEGIN 0 END ~SetCutSceneLite(TRUE)~ ~~

