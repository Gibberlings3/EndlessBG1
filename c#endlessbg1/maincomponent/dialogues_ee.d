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
SAY @1 /* ~You opened our eyes to the deceit and saved us from a great peril while we remained blind to the threat. By the power bestowed upon me as Duke of the Council of Four of this city I herewith name you "Hero of Baldur's Gate"! In the name of the city let me express our deepest gratitude!~ */
IF ~~ THEN DO ~SetGlobal("C#st_HeroOfBG","GLOBAL",1)~ + victory_02
END

IF WEIGHT #-1
~Dead("Sarevok") Global("C#st_HeroOfBG","GLOBAL",1)
Global("C#EBG1_KorlaszQuest","GLOBAL",0)~ THEN victory_02
SAY @2 /* ~<CHARNAME>, Hero of Baldur's Gate. Are you ready to combine forces with the Flaming Fist and go against the last followers of Sarevok?~ */
+ ~%bgee_only%~ + @3 /* ~"Hero of Baldur's Gate", now that has a pleasant ring to it. Tell me what you need me to do.~ */ + bg1_end
+ ~%sod%~ + @4 /* ~Yes, I am ready and I will start right away. Send me wherever you need me.~ */ + sod
+ ~%eet_only%~ + @5 /* ~Actually, I had enough of fulfilling a role. I won't be a lackey to you or anyone. I'll leave Baldur's Gate and look for my fate elsewhere. Fare well.~ */ DO ~SetGlobal("C#EBG1_KorlaszQuest","GLOBAL",99)~ + start_bg2
++ @6 /* ~Not right away. I have a few things to finish first.~ */ + roam_bg1
END

IF ~~ THEN bg1_end
SAY @7 /* ~The city is in your debt, Hero of Baldur's Gate. Please follow me, I will tell you what we know.~ */
IF ~~ THEN DO ~%start_bg1end_sod_cutscene%~ EXIT
END

IF ~~ THEN sod
SAY @13 /* ~The city is in your debt, Hero of Baldur's Gate.~  */ 
= @14 /* ~Please follow me, the Flaming Fist soldiers will guide you to the hide-out of Sarevok's last follower.~ */
IF ~~ THEN DO ~SetGlobal("C#EBG1_KorlaszQuest","GLOBAL",99)
ActionOverride("BELT",TakePartyItem("c#stsrvs"))
ActionOverride("BELT",DestroyItem("c#stsrvs")) 
%start_bg1end_sod_cutscene%~ EXIT
END

END //APPEND

CHAIN
IF ~~ THEN BELT start_bg2
@8 /* ~I see. Still, the city is in your debt. Fare well, Hero of Baldur's Gate.~ */
== %AJANTIS_JOINED% IF ~InParty("AJANTIS") Detect("AJANTIS") !StateCheck("AJANTIS",CD_STATE_NOTVALID)
!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @200
== %AJANTIS_JOINED% IF ~InParty("AJANTIS") Detect("AJANTIS") !StateCheck("AJANTIS",CD_STATE_NOTVALID)
Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @201
== %AJANTIS_JOINED% IF ~InParty("AJANTIS") Detect("AJANTIS") !StateCheck("AJANTIS",CD_STATE_NOTVALID)
Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @202
== %XZAR_JOINED% IF ~InParty("XZAR") Detect("XZAR") !StateCheck("XZAR",CD_STATE_NOTVALID)~ THEN #%eet_2%57836 /* This night notwithstanding, the number of deaths in your vicinity has decreased notably of late, <CHARNAME>. */
== %XZAR_JOINED% IF ~InParty("XZAR") Detect("XZAR") !StateCheck("XZAR",CD_STATE_NOTVALID)~ THEN #%eet_2%57917 /* This is good for you, I suppose, but a villain like myself has no place beside the hero of Baldur's Gate. */
== %MONTARON_JOINED% IF ~InParty("MONTARON") Detect("MONTARON") !StateCheck("MONTARON",CD_STATE_NOTVALID)~ THEN #%eet_2%57824 /* Ye're good enough company, <CHARNAME>, but this hero business don't be sittin' well with me. */
== %GARRICK_JOINED% IF ~InParty("GARRICK") Detect("GARRICK") !StateCheck("GARRICK",CD_STATE_NOTVALID)~ THEN #%eet_2%66939 /* I'm kind of tired of packing and unpacking, town to town, up and down the Sword Coast. */
== %GARRICK_JOINED% IF ~InParty("GARRICK") Detect("GARRICK") !StateCheck("GARRICK",CD_STATE_NOTVALID)~ THEN #%eet_2%70028 /* Maybe you and I were never meant to be, but, <CHARNAME>, think of me once in a while. */
== %GARRICK_JOINED% IF ~InParty("GARRICK") Detect("GARRICK") !StateCheck("GARRICK",CD_STATE_NOTVALID)~ THEN #%eet_2%57818 /* Now that we've finished up with Korlasz, I'll be leaving you to seek employment at the nearest public house that will have me. Perhaps the Elfsong... */
== %ALORA_JOINED% IF ~InParty("ALORA") Detect("ALORA") !StateCheck("ALORA",CD_STATE_NOTVALID)~ THEN #%eet_2%70027 /* There are so many new folk in the city now—I'm going to spend some time with them. */
== %ALORA_JOINED% IF ~InParty("ALORA") Detect("ALORA") !StateCheck("ALORA",CD_STATE_NOTVALID)~ THEN #%eet_2%57805 /* Hey, if the palace butler asks where that vase is, tell him I have no idea what he's talking about. */
== %DYNAHEIR_JOINED% IF ~InParty("DYNAHEIR") Detect("DYNAHEIR") !StateCheck("DYNAHEIR",CD_STATE_NOTVALID)~ THEN @233 /* [Dynaheir]A mighty Bhaalspawn you became. Your journey is not over, and so is not ours, either. */
== %MINSC_JOINED% IF ~InParty("MINSC") Detect("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @234 /* [Minsc]There will be more evil to kick, and Boo said that this is something Minsc should look foreward to. */
== %BRANWEN_JOINED% IF ~InParty("BRANWEN") Detect("BRANWEN") !StateCheck("BRANWEN",CD_STATE_NOTVALID)~ THEN @216 /* I will make my own path now. Fare well, <CHARNAME>. */
== %JAHEIRA_JOINED% IF ~InParty("JAHEIRA") Detect("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @235 /* [Jaheira]You came a long way. We promised Gorion to watch over you, and you outgrew any help we could give you to fight your foes. From now on, it will be we watching you so you will not succumb to your heritage. */
== %KHALID_JOINED% IF ~InParty("KHALID") Detect("KHALID") !StateCheck("KHALID",CD_STATE_NOTVALID)~ THEN @236 /* [Khalid]G-Gorion would be proud of your achievements. We will come with you and help with any t-task that may arise. */
== %KAGAIN_JOINED% IF ~InParty("KAGAIN") Detect("KAGAIN") !StateCheck("KAGAIN",CD_STATE_NOTVALID)~ THEN #%eet_2%57899 /* Best I be heading back to my shop soon, I think. */
== %KAGAIN_JOINED% IF ~InParty("KAGAIN") Detect("KAGAIN") !StateCheck("KAGAIN",CD_STATE_NOTVALID)~ THEN #%eet_2%57820 /* This has been profitable and I suppose enjoyable enough, <CHARNAME>, but these dolts are beginning to wear me out. */
== %FALDORN_JOINED% IF ~InParty("FALDORN") Detect("FALDORN") !StateCheck("FALDORN",CD_STATE_NOTVALID)~ THEN #%eet_2%57816 /* There are too many people in the city now. It's... unnatural. It is time I returned to the Cloakwood—in truth, it is past time. */
== %CORAN_JOINED% IF ~InParty("CORAN") Detect("CORAN") !StateCheck("CORAN",CD_STATE_NOTVALID)~ THEN #%eet_2%57809 /* Saving the Sword Coast has been an enjoyable distraction, but other distractions await me. We will soon part ways, I think. */
== %EDWIN_JOINED% IF ~InParty("EDWIN") Detect("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN #%eet_2%51921 /* I foresee great tedium in your future. I do not care for it. */
== %SAFANA_JOINED% IF ~InParty("SAFANA") Detect("SAFANA") !StateCheck("SAFANA",CD_STATE_NOTVALID)~ THEN @217 /* I'll be off, <CHARNAME>. It was great and all, but I'll go for a time of luxury for a while. */
== %ELDOTH_JOINED% IF ~InParty("ELDOTH") Detect("ELDOTH") !StateCheck("ELDOTH",CD_STATE_NOTVALID)~ THEN #%eet_2%57811 /* As much as I've enjoyed our time together, I can't help but think I'd have enjoyed it more in the company of others. */
== %ELDOTH_JOINED% IF ~InParty("ELDOTH") Detect("ELDOTH") !StateCheck("ELDOTH",CD_STATE_NOTVALID)~ THEN #%eet_2%57890 /* Soon I shall take my leave. */
== %SKIE_JOINED% IF ~InParty("SKIE") Detect("SKIE") !StateCheck("SKIE",CD_STATE_NOTVALID)
OR(3) !InParty("ELDOTH") !Detect("ELDOTH") StateCheck("ELDOTH",CD_STATE_NOTVALID)~ THEN #%eet_2%57830 /* I miss Eldoth. I miss baths. I miss nice clothes. I miss a lot of things. */
== %SKIE_JOINED% IF ~InParty("SKIE") Detect("SKIE") !StateCheck("SKIE",CD_STATE_NOTVALID)
InParty("ELDOTH") Detect("ELDOTH") !StateCheck("ELDOTH",CD_STATE_NOTVALID)~ THEN #%eet_2%57813 /* Where shall we go now, darling Eldoth? */
== %ELDOTH_JOINED% IF ~InParty("SKIE") Detect("SKIE") !StateCheck("SKIE",CD_STATE_NOTVALID)
InParty("ELDOTH") Detect("ELDOTH") !StateCheck("ELDOTH",CD_STATE_NOTVALID)~ THEN #%eet_2%57814 /* "We"? I suppose we should talk about that. Later. Not now. Let's not ruin the moment with bitter words. */
== %SKIE_JOINED% IF ~InParty("SKIE") Detect("SKIE") !StateCheck("SKIE",CD_STATE_NOTVALID)
InParty("ELDOTH") Detect("ELDOTH") !StateCheck("ELDOTH",CD_STATE_NOTVALID)~ THEN #%eet_2%57815 /* Uhhh... All right. I think. */
== %QUAYLE_JOINED% IF ~InParty("QUAYLE") Detect("QUAYLE") !StateCheck("QUAYLE",CD_STATE_NOTVALID)~ THEN #%eet_2%57826 /* You are amusing enough, <CHARNAME>, but you attract idiots like a corpse does flies. They give me a headache. */
== %QUAYLE_JOINED% IF ~InParty("QUAYLE") Detect("QUAYLE") !StateCheck("QUAYLE",CD_STATE_NOTVALID)~ THEN #%eet_2%67353 /* Fascinating as this has been, I will have to leave soon. I've a trip south planned—I'll be taking over a family business of sorts. */
== %YESLICK_JOINED% IF ~InParty("YESLICK") Detect("YESLICK") !StateCheck("YESLICK",CD_STATE_NOTVALID)~ THEN #%eet_2%57838 /* The Iron Throne is no more and the Orothair's honor is restored. */
== %YESLICK_JOINED% IF ~InParty("YESLICK") Detect("YESLICK") !StateCheck("YESLICK",CD_STATE_NOTVALID)~ THEN #%eet_2%57919 /* Now, perhaps, I can rest—or try to, at least. Come morning, I shall leave, <CHARNAME>. */
== %KIVAN_JOINED% IF ~InParty("KIVAN") Detect("KIVAN") !StateCheck("KIVAN",CD_STATE_NOTVALID)~ THEN #%eet_2%57822 /* Tazok is dead, Deheriana avenged. It's been too long since I was amongst the trees of Shilmista. I yearn to return home. */
== %SHARTEEL_JOINED% IF ~InParty("SHARTEEL") Detect("SHARTEEL") !StateCheck("SHARTEEL",CD_STATE_NOTVALID)~ THEN #%eet_2%57828 /* I pledged my sword to you on a 20 gold piece bet. */
== %SHARTEEL_JOINED% IF ~Gender(Player1,FEMALE)
InParty("SHARTEEL") Detect("SHARTEEL") !StateCheck("SHARTEEL",CD_STATE_NOTVALID)~ THEN #%eet_2%57908 /* I'm thinking I've done 20 gold's service or more this night alone, never mind these past months. I'll be on my way soon. */
== %TIAX_JOINED% IF ~InParty("TIAX") Detect("TIAX") !StateCheck("TIAX",CD_STATE_NOTVALID)~ THEN #%eet_2%57832 /* Tiax sees what you are doing, <CHARNAME>. And Tiax doesn't like it. Tiax doesn't like it at ALL. NO! */
== %TIAX_JOINED% IF ~InParty("TIAX") Detect("TIAX") !StateCheck("TIAX",CD_STATE_NOTVALID)~ THEN #%eet_2%57913 /* Someday, Tiax will fulfill his destiny and rule over all. On that day, you shall meet Tiax again, and then, THEN you shall know Tiax in all his glory. */
== %VICONIA_JOINED% IF ~InParty("VICONIA") Detect("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN #%eet_2%51913 /* Take care, "hero" of Baldur's Gate. You are not like these others. */
== %VICONIA_JOINED% IF ~InParty("VICONIA") Detect("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN #%eet_2%57869 /* They love you now because you serve their purpose. Should that change, they will turn on you as certainly as the dawn follows night. */
== %XAN_JOINED% IF ~InParty("XAN") Detect("XAN") !StateCheck("XAN",CD_STATE_NOTVALID)~ THEN @218 /* I've endured your idiosyncrasies quite long enough, <CHARNAME>, but this was the last tomb you, or anyone, lured me into. */
== neeraj IF ~InParty("NEERA") Detect("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN #%eet_2%51940 /* I need a break, <CHARNAME>. All this dungeon... eering—it's wearing me down. */
== rasaadj IF ~InParty("RASAAD") Detect("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN #%eet_2%51912 /* My brother's death has left me with little stomach for violence. */
== rasaadj IF ~InParty("RASAAD") Detect("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN #%eet_2%57865 /* If Sarevok's co-conspirators are truly done, then I am free at last to engage in more benevolent pursuits. */
== dornj IF ~InParty("DORN") Detect("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ THEN @219 /* I will depart and see what tasks my patron has in store for me. */
== baelothj IF ~InParty("BAELOTH") Detect("BAELOTH") !StateCheck("BAELOTH",CD_STATE_NOTVALID)~ THEN #%eet_2%57920 /* I've enjoyed our association, <CHARNAME>, but it's increasingly apparent my ambitions aren't adequately accommodated by Baldur's Gate. */
== baelothj IF ~InParty("BAELOTH") Detect("BAELOTH") !StateCheck("BAELOTH",CD_STATE_NOTVALID)~ THEN #%eet_2%57923 /* Consider this my curtain call. */
== %IMOEN_JOINED% IF ~InParty("%IMOEN_DV%") Detect("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @237 /* Ooh yes, sleeping and doing *nothing*, that sounds great! Although... talking from experience, I don't think the gods will let us!~ */
END
IF ~~ THEN DO ~ActionOverride("BELT",TakePartyItem("c#stsrvs"))
ActionOverride("BELT",DestroyItem("c#stsrvs")) 
%move_to_bg2%~ EXIT

APPEND BELT

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


