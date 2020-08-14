APPEND BELT
IF WEIGHT #-1
~Dead("Sarevok") Global("C#st_HeroOfBG","GLOBAL",0)
Global("C#st_HeroCutScene","GLOBAL",0)
OR(2)
InMyArea(Player1)
IsGabber(Player1)~ victory
SAY @0 /* ~<CHARNAME>, you were successful! You defeated Sarevok who conspired against the city, the Sword Coast, even Amn - for his own dark goals and purpose.~ */
IF ~~ THEN + victory_01
END

IF ~~ THEN victory_01
SAY @1 /* ~You opened our eyes to the deceit and saved us from a great peril while we remained blind to the threat. By the power bestowed upon me as Duke of the Council of Six of this city I herewith name you "Hero of Baldur's Gate"! In the name of the city let me express our deepest gratitude!~ */
IF ~~ THEN DO ~SetGlobal("C#st_HeroOfBG","GLOBAL",1)~ + victory_02
END

IF WEIGHT #-1
~Dead("Sarevok") Global("C#st_HeroOfBG","GLOBAL",1)~ THEN victory_02
SAY @2 /* ~<CHARNAME>, Hero of Baldur's Gate. Are you ready to combine forces with the Flaming Fist and go against the last followers of Sarevok?~ */
+ ~%bgee_only%~ + @3 /* ~"Hero of Baldur's Gate", now that has a pleasant ring to it. Tell me what you need me to do.~ */ + bg1_end
+ ~%sod% !Global("#L_BG1SarevokDead","GLOBAL",1)~ + @4 /* ~Yes, I am ready and I will start right away. Send me wherever you need me.~ */ + sod
+ ~%eet_only% !Global("#L_BG1SarevokDead","GLOBAL",1)~ + @5 /* ~Actually, I had enough of fulfilling a role. I won't be a lackey to you or anyone. I'll leave Baldur's Gate and look for my fate elsewhere. Fare well.~ */ + start_bg2
+ ~!Global("#L_BG1SarevokDead","GLOBAL",1)~ + @6 /* ~Not right away. I have a few things to finish first.~ */ + roam_bg1
END

IF ~~ THEN bg1_end
SAY @7 /* ~The city is in your debt, Hero of Baldur's Gate. Please follow me, I will tell you what we know.~ */
IF ~~ THEN DO ~%start_bg1end_sod_cutscene%~ EXIT
END

IF ~~ THEN sod
SAY @13 /* ~The city is in your debt, Hero of Baldur's Gate. Please follow me, I will tell you what we know.~ */
IF ~~ THEN DO ~TakePartyItem("c#stsrvs") DestroyItem("c#stsrvs") %start_bg1end_sod_cutscene%~ EXIT
END

IF ~~ THEN start_bg2
SAY @8 /* ~I see. Still, the city is in your debt. Fare well, Hero of Baldur's Gate.~ */
IF ~~ THEN DO ~%move_to_bg2%~ EXIT
END

IF ~~ THEN roam_bg1
SAY @9 /* ~Very well. We will concentrate our forces on finding all of Sarevok's followers and will hope you will join our efforts soon. Until then, enjoy your stay.~ */
IF ~~ THEN EXIT
END

IF WEIGHT #-1
~%BGT_VAR%
Dead("Sarevok")
!IsGabber(Player1) !InMyArea(Player1)~ victory_npc
SAY @12 /* ~Greetings to you as well, companion of <CHARNAME>.~ */
IF ~~ THEN EXIT
END

END //APPEND


