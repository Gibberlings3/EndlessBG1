/* erase journal entry about stolen Sword from Sarevok */
ADD_TRANS_ACTION IDJINNI BEGIN 12 END BEGIN END ~EraseJournalEntry(@10000)~


/* Djinn will steal the sword */
BEGIN C#stdjin
IF ~True()~ THEN djinn
SAY @100 /* ~I am awfully sorry, but I have to obey my master, and take this sword from you... Ah, haha, they will not be overly happy to see the state it is in. Oh well, Guess I know what I will spend my time with next. Fare well, <CHARNAME>, maybe we will met again under different circumstances.~ */
IF ~~ THEN DO ~ActionOverride("C#stdjin",TakePartyItem("c#stsrvs"))
ActionOverride("C#stdjin",DestroyItem("c#stsrvs")) 
ActionOverride("C#stdjin",CreateVisualEffectObject("SPDIMNDR",Myself))ActionOverride("C#stdjin",DestroySelf())~ JOURNAL @10000 /* ~Sarevok's Sword was taken from me

A Djinn manifested right after I left the Undercity and took Sarevok's sword from me! He said he has to obey "his master". Who could have an interest in taking Sarevok's sword? Seems there are still people who follow him - or want to profit from his power.~ */ EXIT
END