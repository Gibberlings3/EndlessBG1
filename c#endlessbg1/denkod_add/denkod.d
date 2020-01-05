/* Denkod in Thieves Guild after Sarevok is defeated. Goes together with another INITDLG after Sarevok's death */

CHAIN
IF WEIGHT #-1
~Global("C#st_DenkodTalk","MYAREA",1)~ THEN DENKOD sarevok_dead
@140 /* ~You came back!~ */
== DENKOD IF ~OR(12)
HasItemEquiped("c#stsrva",Player1)
HasItemEquiped("c#stsrvh",Player1)
HasItemEquiped("c#stsrva",Player2)
HasItemEquiped("c#stsrvh",Player2)
HasItemEquiped("c#stsrva",Player3)
HasItemEquiped("c#stsrvh",Player3)
HasItemEquiped("c#stsrva",Player4)
HasItemEquiped("c#stsrvh",Player4)
HasItemEquiped("c#stsrva",Player5)
HasItemEquiped("c#stsrvh",Player5)
HasItemEquiped("c#stsrva",Player6)
HasItemEquiped("c#stsrvh",Player6)~ THEN @141 /* ~I have to say, be careful with wearing that. For a short moment I thought you're him! Nearly got out my dagger, I did.~ */
== DENKOD IF ~!Global("C#st_FFHealerSpawn","GLOBAL",0)~ THEN @142 /* ~You can't believe what happened here only minutes ago. Flaming Fist Mercenaries, stomping through the guild and ignoring all of us, first in and then back out.~ */
== DENKOD @143 /* ~Seems the party down there is finished, eh? Did you get to that armored guy, or will he come through here again, too? I will go to a quieter place for now, way too much traffic here for my taste!~ */
END
IF ~~ THEN DO ~SetGlobal("C#st_DenkodTalk","MYAREA",2) ActionOverride("DENKOD",EscapeArea())~ EXIT






