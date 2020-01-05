/* Refugees in BG */

BEGIN c#strfg1
IF ~Global("C#st_RefugiesFirstTalk","GLOBAL",0)~ THEN refugees
SAY @120 /* ~We travelled all the way here from High Moor because they burnt down our farms. Who they are we do not know, only that they are still out there, and their number is growing. Will Baldur's Gate help us? We never came this far into the south, but we do not feel save outside a big city.~ */
IF ~~ THEN DO ~SetGlobal("C#st_RefugiesFirstTalk","GLOBAL",1)~ JOURNAL @10007 /* ~Refugees from the Far North

Refugees are arriving in Baldur's Gate, telling about some brutal movement far up north in High Moor, burning down farms and little villages.~ */ EXIT
END

IF ~Global("C#st_RefugiesFirstTalk","GLOBAL",1)
RandomNum(5,1)~ THEN refugees_01
SAY @121 /* ~They burnt everything down - after taking all our livestock. Why would anyone do that?~ */
IF ~~ THEN EXIT
END

IF ~Global("C#st_RefugiesFirstTalk","GLOBAL",1)
RandomNum(5,2)~ THEN refugees_02
SAY @122 /* ~So many angry men, and they destroy everything in their wake. I really hope we are save here in the south.~ */
IF ~~ THEN EXIT
END

IF ~Global("C#st_RefugiesFirstTalk","GLOBAL",1)
RandomNum(5,3)~ THEN refugees_03
SAY @123 /* ~They asked us to join them, and then they started rampaging and killing... We fled with little property we could carry.~ */
IF ~~ THEN EXIT
END

IF ~Global("C#st_RefugiesFirstTalk","GLOBAL",1)
RandomNum(5,4)~ THEN refugees_04
SAY @124 /* ~They destroyed the whole village - and I don't want to know what they did to the villagers who didn't flee soon enough!~ */
IF ~~ THEN EXIT
END

IF ~Global("C#st_RefugiesFirstTalk","GLOBAL",1)
RandomNum(5,5)~ THEN refugees_05
SAY @125 /* ~Join them! Join them! On a crusade of plundering and killing those murderers requested we'd join them! I fled as soon as I could.~ */
IF ~~ THEN EXIT
END

BEGIN c#strfg5
IF ~RandomNum(3,1)~ THEN refugees_child_01
SAY @126 /* ~Mooooooom! The stranger is talking to me!!~ */
IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)~ THEN refugees_child_02
SAY @127 /* ~I lost my puppa on the way here.~ */
IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)~ THEN refugees_child_03
SAY @128 /* ~I want to go home.~ */
IF ~~ THEN EXIT
END