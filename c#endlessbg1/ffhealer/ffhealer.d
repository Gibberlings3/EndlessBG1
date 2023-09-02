/* priests come into Undercity's temple to heal the PC */
BEGIN c#stsdpr

IF ~Global("C#st_SarevokHealGroup","MYAREA",0)~ THEN duke_priest
SAY @80 /* ~<CHARNAME>! The Dukes sent us to see to your well-being. We will take care of the bodies of Sarevok and his minions.~ */
= @81 /* ~Do you want us to heal you and disarm any remaining traps as well?~ */
++ @82 /* ~Yes, please do.~ */ + duke_priest_02
++ @83 /* ~No thanks, I'll manage on my own.~ */ DO ~
		ActionOverride("Sarevok",DestroySelf())
		ActionOverride("Galdor",DestroySelf())
		ActionOverride("Semaj",DestroySelf())
		ActionOverride("Tazok",DestroySelf())~ + duke_priest_01
END

IF ~~ THEN duke_priest_01
SAY @84 /* ~You did a great deed for the city. Return to the Palace and speak to the Dukes, they wish to thank you. Fare well.~ */
IF ~~ THEN DO ~SetInterrupt(FALSE)
ActionOverride("c#stsdp2",TakePartyItem("MISC55"))
ActionOverride("c#stsdp2",DestroyItem("MISC55"))
ActionOverride("c#stsdp2",MoveToPoint([900.1150])) 
ActionOverride("c#stsdp2",DestroySelf())
ActionOverride("c#stsdpr",MoveToPoint([910.1150]))
ActionOverride("c#stsdpr",DestroySelf())
SetInterrupt(TRUE)~ EXIT
END 

IF ~~ THEN duke_priest_02
SAY @85 /* ~With pleasure. Please hold still for a moment...~ */
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutscene("c#stcut3")~ EXIT
END

IF ~Global("C#st_SarevokHealGroup","MYAREA",1)~ THEN duke_priest_03
SAY @86 /* ~That should do it.~ */
IF ~~ THEN + duke_priest_01
END

