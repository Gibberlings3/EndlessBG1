/* extended content: Duke Eltan is in the Palace */
/*
DELTAN2.dlg - Duke Eltan's dialogue use this to make it compatible with bg1re 
conditions for Scar's return:
 ~GlobalGT("DukeThanks","GLOBAL",0) 
GlobalTimerExpired("C#RE1_ScarRetrievalTimer","GLOBAL")
Global("C#RE1_ScarRetrieval","GLOBAL",12)~

and again: ~Global("C#RE1_ScarRetrieval","GLOBAL",14)~

OR(4)
!GlobalGT("DukeThanks","GLOBAL",0) 
!GlobalTimerExpired("C#RE1_ScarRetrievalTimer","GLOBAL")
!Global("C#RE1_ScarRetrieval","GLOBAL",12)
!Global("C#RE1_ScarRetrieval","GLOBAL",14)
*/
APPEND DELTAN2

IF WEIGHT #-1
~Dead("Sarevok") Global("C#st_ELtanThanks","GLOBAL",0)
OR(5) 
!GlobalGT("DukeThanks","GLOBAL",0) //compatibility: do not block Scar's Return from bg1re
!GlobalTimerExpired("C#RE1_ScarRetrievalTimer","GLOBAL") //compatibility: do not block Scar's Return from bg1re
!Global("C#RE1_ScarRetrieval","GLOBAL",12) //compatibility: do not block Scar's Return from bg1re
!Global("C#RE1_ScarRetrieval","GLOBAL",14) //compatibility: do not block Scar's Return from bg1re
Global("C#st_HeroOfBG","GLOBAL",0)
~ eltan_thanks
SAY @70 /* ~You saved us, <CHARNAME>. The gratitude of the city is yours.~ */
IF ~~ THEN EXIT
IF ~Global("C#st_HeroOfBG","GLOBAL",0)~ THEN EXTERN %BELT% %belt_victory%
END
END //APPEND
