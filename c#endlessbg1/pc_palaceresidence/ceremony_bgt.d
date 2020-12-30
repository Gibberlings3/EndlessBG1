INTERJECT BELTBRD 1 C#st_BeltInterjection
== BELTBRD IF ~Dead("Sarevok") Global("C#st_HeroOfBG","GLOBAL",0)
Global("C#st_HeroCutScene","GLOBAL",0)~ THEN @0 /* ~<CHARNAME>, you were successful! You defeated Sarevok who conspired against the city, the Sword Coast, even Amn - for his own dark goals and purpose.~ */
= @1 /*~You opened our eyes to the deceit and saved us from a great peril while we remained blind to the threat. By the power bestowed upon me as Duke of the Council of Four of this city I herewith name you "Hero of Baldur's Gate"! In the name of the city let me express our deepest gratitude!~ */
= @42 /* ~With the title come official quarters for you on the third level of the Ducal Palace! The servants will help you settle in as soon as you are ready. Everyone, praise our Hero of Baldur's Gate!~ */
END
IF ~~ THEN DO ~SetGlobal("C#st_HeroOfBG","GLOBAL",1) ActionOverride("BELTBRD",MoveToPoint([735.371])) ActionOverride("BELTBRD",Face(0))~ EXIT

ADD_STATE_TRIGGER BELTBRD 2 ~Global("C#st_BeltInterjection","GLOBAL",1)~

ADD_TRANS_ACTION BELTBRD BEGIN 2 END BEGIN END ~SetGlobal("C#st_BeltInterjection","GLOBAL",2)~ 