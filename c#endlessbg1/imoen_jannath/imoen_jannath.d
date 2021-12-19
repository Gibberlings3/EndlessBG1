/* extended content: Duke Jannath notices Imoen */
INTERJECT LIIA %liia_victory% c#st_LiiaThanks
== LIIA @50 /* ~Who would have thought that he was such an evil conspirator! And we nearly made him Duke... You saved us all, and we are in your debt, <CHARNAME>, Hero of Baldur's Gate! You deserve the title.~ */
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @51 /* ~This sounds so impressive! "Hero of Baldur's Gate".~ */
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !Class("%IMOEN_DV%",MAGE_ALL)~ THEN @52 /* ~If only I could have wielded magic, then we would have taken him down even faster!~ */
== LIIA IF ~InParty("%IMOEN_DV%") See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !Class("%IMOEN_DV%",MAGE_ALL)~ THEN @53 /* ~Magic, you say? Hmm...~ */
== LIIA IF ~InParty("%IMOEN_DV%") See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @54 /* ~Imoen, I think you have a talent for magic. I might want to talk to you later, young friend.~ */
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @55 /* ~Me? Uhm... fine!~ */
END
COPY_TRANS LIIA %liia_victory%
IF ~Global("C#st_HeroOfBG","GLOBAL",0)~ THEN EXTERN %BELT% %belt_victory%


APPEND LIIA 
IF WEIGHT #-1
~%BGT_VAR%
RandomNum(3,1)
Global("c#st_LiiaThanks","GLOBAL",1)
IsGabber("%IMOEN_DV%") Dead("Sarevok")~ imoen_01
SAY @61 /* ~Greetings, Imoen. If you find the time for magic training, let me know.~ */
IF ~~ THEN EXIT
END

IF WEIGHT #-1
~%BGT_VAR%
RandomNum(3,2)
Global("c#st_LiiaThanks","GLOBAL",1)
IsGabber("%IMOEN_DV%") Dead("Sarevok")~ imoen_02
SAY @62 /* ~Hello, Imoen. Come to me later, will you?~ */
IF ~~ THEN EXIT
END

IF WEIGHT #-1
~%BGT_VAR%
RandomNum(3,3)
Global("c#st_LiiaThanks","GLOBAL",1)
IsGabber("%IMOEN_DV%") Dead("Sarevok")~ imoen_03
SAY @63 /* ~Hello there, Imoen. My offer for magic lessons still stands, as soon as <CHARNAME> can spare you.~ */
IF ~~ THEN EXIT
END
END

/* Imoen servant Palace top floor */
BEGIN c#stsrv2

CHAIN
IF ~True()~ THEN c#stsrv2 servant2
@56 /* ~Welcome, Hero of Baldur's Gate! And welcome, Imoen. This room will serve as your residence as long as you will stay in the city, Imoen - with greetings from Duke Jannath.~ */
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @57 /* ~...Mine? Oh, wow! Thank you!~ */
== c#stsrv2 @58 /* ~You also have a chest of your own, Imoen. It is the one at the far left of the room. Everything you will put inside shall stay there as long as you take residence here. Have a good stay!~ */
END
IF ~~ THEN DO ~SetGlobal("C#st_ImoenInPalace","GLOBAL",1) EscapeArea()~ JOURNAL @10004 /* %Imoen's Personal Chest in the Ducal Palace 

The chest on the far left in the southeast room on the top floor of the Ducal Palace is Imoen's, everything we'll put in there will stay inside as long as we take residence in the Palace.% */ EXIT

/* in case Imoen is not in party, she will be at the top level of the Ducal Palace */
APPEND %IMOEN_POST%
IF ~AreaCheck("%NBaldursGate_DucalPalace_L3%")
Global("%KICKED_OUT%","LOCALS",1)
Global("C#st_HeroOfBG","GLOBAL",1) 
Global("C#st_SpawnServant","MYAREA",1)~ THEN greeting
SAY @59 /* ~<CHARNAME>! "Hero of Baldur's Gate", huh? Impressive! Duke Jannath offered me this room, together with lessons in magic! Can you imagine? We will be living room by room, you and I! But I'd much prefer just travelling with you again.~ */
= @60 /* ~The chest at the far left of the room is mine, by the way. In case you need more room to store your things - they said the chest will be mine as long as we stay here.~ */
IF ~~ THEN DO ~AddJournalEntry(@10005,INFO)
SetGlobal("C#st_SpawnServant2","MYAREA",2)
SetGlobal("C#st_ImoenInPalace","GLOBAL",1)~ JOURNAL @10004 EXIT
END



/* Give Imoen Kickout dialogue to send her to the Palace. Hopefully compatible with Tweak "Send NPCs to Inns" */


IF WEIGHT #-1
~%BGT_VAR%
Global("C#st_ImoenInPalace","GLOBAL",1)
Global("%KICKED_OUT%","LOCALS",0)~ kickout_ebg1
SAY @64 /* ~Are you sure? Then I could stay at the Palace and take Duke Jannath up on her offer.~ */
++ @65 /* ~Yes, Imoen, do that.~ */ + kickout_ebg1_01
++ @66 /* ~Actually, I'd like to have you wait elsewhere.~ */ + %BGTIMOENPState0%
++ @67 /* ~My bad, stay with me.~ */ + %BGTIMOENPState4%
END

IF ~~ THEN kickout_ebg1_01
SAY @68 /* ~I'll do that! Duke Jannath will regret it in no time... Don't stay away too long, will ya?~ */
IF ~~ THEN DO ~ActionOVerride("%IMOEN_DV%",SetGlobal("%KICKED_OUT%","LOCALS",1)) ActionOVerride("%IMOEN_DV%",EscapeAreaMove("%NBaldursGate_DucalPalace_L3%",1016,704,0))~ EXIT
END
END //APPEND