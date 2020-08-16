/* HC can give Sarevok's sword to the Dukes */

/* in case "hero cutscene" doesn'tplay */
EXTEND_BOTTOM BELT %belt_victory_01%
IF ~Global("C#st_HeroCutScene","GLOBAL",0)~ THEN DO ~SetGlobal("C#st_HeroOfBG","GLOBAL",1)~ + asks_sword
END

ADD_STATE_TRIGGER BELT %belt_victory_02% ~!Global("C#st_DukesAskedSword","GLOBAL",0)~


EXTEND_BOTTOM BELT %belt_victory_02%
+ ~PartyHasItem("c#stsrvs")~ + @110 /* ~Firt off, let me give you Sarevok's sword, as requested.~ */ + take_sword
END

CHAIN
IF WEIGHT #-1
~Dead("Sarevok") Global("C#st_HeroOfBG","GLOBAL",1) Global("C#st_DukesAskedSword","GLOBAL",0)~ THEN BELT asks_sword
@111 /* ~We have note that Sarevok bonded with his sword and made it a very powerful weapon.~ */
== BELT IF ~OR(4)
PartyHasItem("c#stsrva")
PartyHasItem("c#stsrvh")
PartyHasItem("#LSrvArm")
PartyHasItem("#LSrvHlm")~ THEN @112 /* ~I see that you also took his armor. It shall remain yours, although I can only warn you from using it - appearing in the same dark and threatening outfit might raise unfortunate suspicion in people.~ */
== BELT @113 /* ~We would like to have the sword and keep it safe. If you would give it to us, we would be grateful. We will reward you accordingly, of course.~ */
END
IF ~~ THEN DO ~SetGlobal("C#st_DukesAskedSword","GLOBAL",1)~ UNSOLVED_JOURNAL @10008 + %belt_victory_02%


APPEND BELT
IF ~~ THEN take_sword
SAY @114 
= @115
IF ~~ THEN DO ~ActionOverride("BELT",TakePartyItem("c#stsrvs")) GiveItemCreate("SW2H11",[PC],0,0,0) 
GiveGoldForce(2500)
ActionOverride("BELT",DestroyItem("c#stsrvs"))
EraseJournalEntry(@10008)~ SOLVED_JOURNAL @10001 /* ~Sarevok's Sword

I handed Sarevok's Sword to the Dukes. They see it as a symbol of his power and want to keep it away from any followers who might see it as an item of symbolic value of their fallen leader Sarevok.~ */ EXIT
END
END //APPEND