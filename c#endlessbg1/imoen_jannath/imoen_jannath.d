/* extended content: Duke Jannath notices Imoen */
INTERJECT LIIA %liia_victory% c#st_LiiaThanks
== LIIA @50 /* ~Who would have thought that he is such an evil conspirator! And we nearly made him Duke... You saved us all, and we are in your dept, <CHARNAME>, Hero of Baldur's Gate! You deserve the title.~ */
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV_SOD%") See("%IMOEN_DV_SOD%") !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)~ THEN @51 /* ~This sounds so impressive! "Hero of Baldur's Gate".~ */
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV_SOD%") See("%IMOEN_DV_SOD%") !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID) !Class("%IMOEN_DV_SOD%",MAGE_ALL)~ THEN @52 /* ~If only I could have wielded magic, then we would have taken him down even faster!~ */
== LIIA IF ~InParty("%IMOEN_DV_SOD%") See("%IMOEN_DV_SOD%") !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID) !Class("%IMOEN_DV_SOD%",MAGE_ALL)~ THEN @53 /* ~Magic, you say? Hmm...~ */
== LIIA IF ~InParty("%IMOEN_DV_SOD%") See("%IMOEN_DV_SOD%") !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)~ THEN @54 /* ~Imoen, I think you have a talent for magic. I might want to talk to you later, young friend.~ */
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV_SOD%") See("%IMOEN_DV_SOD%") !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)~ THEN @55 /* ~Me? Uhm... fine!~ */
END
IF ~~ THEN EXIT
IF ~Global("C#st_HeroOfBG","GLOBAL",0)~ THEN EXTERN %BELT% %belt_victory%


/* Imoen servant Palace top floor */
BEGIN c#stsrv2

CHAIN
IF ~True()~ THEN c#stsrv2 servant2
@56 /* ~Welcome, Hero of Baldur's Gate! And welcome, Imoen. This room will serve as your residence as long as you will stay in the city, Imoen - with greetings from Duke Jannath.~ */
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV_SOD%") See("%IMOEN_DV_SOD%") !StateCheck("%IMOEN_DV_SOD%",CD_STATE_NOTVALID)~ THEN @57 /* ~...Mine? Oh, wow! Thank you!~ */
== c#stsrv2 @58 /* ~You also have a chest of your own, Imoen. It is the one at the far left of the room. Everything you will put inside shall stay there as long as you take residence here. Have a good stay!~ */
END
IF ~~ THEN DO ~EscapeArea()~ JOURNAL @10004 /* %Imoen's Personal Chest in the Ducal Palace 

The chest on the far left in the southeast room on the top floor of the Ducal Palace is Imoen's, everything we'll put in there will stay inside as long as we take residence in the Palace.% */ EXIT

/* in case Imoen is not in party, she will be at the top level of the Ducal Palace */
APPEND %IMOEN_POST%
IF ~Global("KickedOut","LOCALS",1)
Global("C#st_HeroOfBG","GLOBAL",1) 
Global("C#st_SpawnServant","MYAREA",1)~ THEN greeting
SAY @59 /* ~<CHARNAME>! "Hero of Baldur's Gate", huh? Impressive! Duke Jannath offered me this room, together with lessons in magic! Can you imagine? We will be living room by room, you and I! But I'd much prefer just travelling with you again.~ */
= @60 /* ~The chest at the far left of the room is mine, by the way. In case you need more room to store your things - they said the chest will be mine as long as we stay here.~ */
IF ~~ THEN DO ~AddJournalEntry(@10005,INFO)
SetGlobal("C#st_SpawnServant2","MYAREA",2)~ JOURNAL @10004 EXIT
END
END //APPEND