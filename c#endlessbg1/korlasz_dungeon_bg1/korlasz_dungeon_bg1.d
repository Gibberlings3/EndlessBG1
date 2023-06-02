I_C_T3 BELT %belt_ebg1_13% C#EBG1_Belt_EBG1_13
== BELT IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
OR(2) !InMyArea("LIIA") StateCheck("LIIA",CD_STATE_NOTVALID)~ THEN @203 /* ~Imoen - Duke Jannath wants to talk to you before you go.~ */
== LIIA IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
InMyArea("LIIA") !StateCheck("LIIA",CD_STATE_NOTVALID)~ THEN @204  /* ~Imoen, child, I will talk to you before you go. Come here for a moment.~ */
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @205 /* ~Me? Er... okay!~ */
== BELT IF ~InPartyAllowDead("%IMOEN_DV%") OR(2) Dead("%IMOEN_DV%") StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
OR(2) !InMyArea("LIIA") StateCheck("LIIA",CD_STATE_NOTVALID)~ THEN @206 /* ~Duke Jannath is determined to see Imoen before you go. I am sure she will also take care of your friend's current condition.~ */
== LIIA IF ~InPartyAllowDead("%IMOEN_DV%") OR(2) Dead("%IMOEN_DV%") StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
InMyArea("LIIA") !StateCheck("LIIA",CD_STATE_NOTVALID)~ THEN @207 /* ~I need to talk to Imoen before you go. I will call for Fenster to see to her current... condition.~ */
== BELT IF ~!InParty("%IMOEN_DV%")~ THEN @208 /* ~Imoen, your childhood friend, was prepared by Duke Jannath to guide you as best as possible. She will await you there.~ */
== BELT @238  
END

EXTEND_BOTTOM BELT %belt_ebg1_14%
IF ~~ THEN DO ~SetGlobal("C#EBG1_KorlaszQuest","GLOBAL",1)
SetGlobal("C#EBG1_KorlaszDungeon_BG1","GLOBAL",1) //check variable for other mods
ActionOverride("BELT",TakePartyItem("c#stsrvs"))
ActionOverride("BELT",DestroyItem("c#stsrvs"))
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("c#st2kd",FALSE)~ EXIT
END

APPEND BELT

IF WEIGHT #-1
~OR(2) Global("C#EBG1_KorlaszQuest","GLOBAL",1)
Global("C#EBG1_KorlaszQuest","GLOBAL",2)~ THEN waiting_korlasz
SAY @209 /* ~Please, return to the family crypt of Korlasz and help defeat the last follower of Sarevok.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN remain_in_bg1
SAY @214 /* ~A hero is always busy. Whoever receives your aid can call themselves lucky. Enjoy your time, hero.~ */
IF ~~ THEN EXIT
END

IF WEIGHT #-1
~Global("C#EBG1_KorlaszQuest","GLOBAL",4)~ THEN farewell_2
SAY @221 /* You have proven to be the city's hero, and we are in your debt forever. What will you do now?~ */
+ ~%sod%~ + @211 /* ~Honestly, I need a break. I can feel the next problem brooding. I'll just go rest and do nothing for a tenday so I'll be prepared for whatever is coming.~ */ DO ~SetGlobal("C#EBG1_KorlaszQuest","GLOBAL",5)~ + sod_trn
++ @212 /* ~There is still a lot to do and discover. I'll be around.~ */ + remain_in_bg1
+ ~%eet_only%~ + @213 /* ~I will take my leave from the city and the Sword Coast before the next world threatening desaster arises. I'll try going south, away from whatever the city of Baldur's Gate might ail in the near or further future.~ */ DO ~SetGlobal("SOD_fromimport","global",0)
SetGlobal("C#EBG1_KorlaszQuest","GLOBAL",5)~ + %belt_ebg1_8%
END
END //APPEND

CHAIN
IF WEIGHT #-1
~Global("C#EBG1_KorlaszQuest","GLOBAL",3)~ THEN BELT cleared_korlasz_dungeon
@210 /* ~<CHARNAME>, Hero of Baldur's Gate. You return victorious! Not only Sarevok himself, but also all of Sarevok's followers are dealt with.~ */
DO ~SetGlobal("C#EBG1_KorlaszQuest","GLOBAL",4)~
== %IMOEN_JOINED% IF ~OR(2) PartyHasItem("BDSHBHR") GlobalGT("C#EBG1_BhaalResearchKD","GLOBAL",1)
InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @222 /* ~<CHARNAME> found a lot of old tomes and research and stuff!~ */
== %IMOEN_JOINED% IF ~GlobalGT("C#EBG1_BhaalResearchKD","GLOBAL",2)
InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
InMyArea("LIIA") !StateCheck("LIIA",CD_STATE_NOTVALID)~ THEN @223 /* ~Here it is, Duke Liia. Look at the size of that pile!~ */
== LIIA IF ~GlobalGT("C#EBG1_BhaalResearchKD","GLOBAL",2) GlobalLT("C#EBG1_BhaalResearchKD","GLOBAL",5)
InMyArea("LIIA") !StateCheck("LIIA",CD_STATE_NOTVALID)~ THEN @224 /* ~I thank you for the tomes Imoen gave me. Here, take these for compensation.~ */ DO ~GiveItemCreate("SCRL07",Player1,2,0,0) SetGlobal("C#EBG1_BhaalResearchKD","GLOBAL",6)~
== LIIA IF ~PartyHasItem("BDSHBHR")
GlobalLT("C#EBG1_BhaalResearchKD","GLOBAL",4)
InMyArea("LIIA") !StateCheck("LIIA",CD_STATE_NOTVALID)~ THEN @225 /* ~I am very interested in these old tomes you found in Korlasz' family crypt for my research. Please hand them to me as soon as you can spare them, <CHARNAME>.~ */ DO ~SetGlobal("C#EBG1_BhaalResearchKD","GLOBAL",5)~
END
IF ~~ THEN EXTERN BELT farewell_2

CHAIN
IF ~~ THEN BELT sod_trn
@215 /* ~A well earned rest. Make yourself at home on the top floor of the palace as much as you like.~ */
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
== %DYNAHEIR_JOINED% IF ~InParty("DYNAHEIR") Detect("DYNAHEIR") !StateCheck("DYNAHEIR",CD_STATE_NOTVALID)~ THEN #%eet_2%51910 /* I have learned much during our time together. It is past time I communicated that knowledge to my sisters. */
== %MINSC_JOINED% IF ~InParty("MINSC") Detect("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN #%eet_2%51911 /* The friendship of Minsc and Boo travels with you. */
== %MINSC_JOINED% IF ~InParty("MINSC") Detect("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN #%eet_2%70026 /* You cannot see it, but it is always there. And sometimes smells of lemons. */
== %BRANWEN_JOINED% IF ~InParty("BRANWEN") Detect("BRANWEN") !StateCheck("BRANWEN",CD_STATE_NOTVALID)~ THEN @216 /* I will make my own path now. Fare well, <CHARNAME>. */
== %JAHEIRA_JOINED% IF ~InParty("JAHEIRA") Detect("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN #%eet_2%64921 /* Sarevok and all his servants are dead, and you are not. I think I have fulfilled my promise to Gorion. */
== %JAHEIRA_JOINED% IF ~InParty("JAHEIRA") Detect("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)
IfValidForPartyDialog("khalid")~ THEN #%eet_2%51922 /* Now that the servants of Sarevok have finally been eliminated, we can spend more time together, Khalid. */
== %KHALID_JOINED% IF ~InParty("KHALID") Detect("KHALID") !StateCheck("KHALID",CD_STATE_NOTVALID)~ THEN #%eet_2%51923 /* That s-sounds wonderful. */
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
== %IMOEN_JOINED% IF ~InParty("%IMOEN_DV%") Detect("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @220 /* Ooh yes, sleeping and doing *nothing*, that sounds great! Although... I think I'll take Duke Jannath up on her offer to train me in magic, <CHARNAME>. You go and take your well-earned rest, sleepyhead!~ */
END
IF ~~ THEN DO ~SetInterrupt(FALSE)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("c#st2so2",TRUE)
SetInterrupt(TRUE)~ EXIT

/* Korlasz in Palace Prison */
APPEND bdkorlas
IF WEIGHT #-1
~AreaCheck("%NBaldursGate_DucalPalace_Cellar%")~ THEN prison_bg1
SAY #%eet_2%55681 /* ~Everything was going to be different. Sarevok was going to change the world. I gave everything to his cause, and YOU destroyed it all.~ [BD55681] */
IF ~~ THEN EXIT
END
END //APPEND

/* Give the tomes to Duke Jannath if not given to Imoen already: BG1 */

INTERJECT LIIA %liia_victory% C#EBG1_LIIA_EBG1_victory
== LIIA IF ~PartyHasItem("BDSHBHR")~ THEN @226 /* ~You found tomes about Bhaal in Korlasz' possessions. May I have them for my own research?~ */
END
++ @227 /* ~Of course. Here you are.~ */ + give_tomes
++ @228 /* ~No, I'd like to hold on to them myself.~ */ + keep_tomes

APPEND LIIA
IF ~~ THEN give_tomes
SAY @229 /* ~I thank you. Take these for compensation.~ */
IF ~~ THEN DO ~SetGlobal("C#EBG1_BhaalResearchKD","GLOBAL",6)
GiveItemCreate("SCRL07",Player1,2,0,0)
ActionOverride(Player1,DestroyItem("BDSHBHR"))
ActionOverride(Player2,DestroyItem("BDSHBHR"))
ActionOverride(Player3,DestroyItem("BDSHBHR"))
ActionOverride(Player4,DestroyItem("BDSHBHR"))
ActionOverride(Player5,DestroyItem("BDSHBHR"))
ActionOverride(Player6,DestroyItem("BDSHBHR"))~ + end_tomes
END

IF ~~ THEN keep_tomes
SAY @230 /* ~I see. Please give them to me as soon as you can spare them.~ */
IF ~~ THEN DO ~SetGlobal("C#EBG1_BhaalResearchKD","GLOBAL",5)~ + end_tomes
END

IF ~~ THEN end_tomes
SAY @231 /* ~I am very interested in studying these kind of old tomes.~ */
COPY_TRANS LIIA %liia_victory%
END
END //APPEND

/* Give the tomes to Duke Jannath if not given to Imoen already: SoD */

EXTEND_BOTTOM BDLIIA 13
+ ~PartyHasItem("BDSHBHR")~ + @232 /* ~Here is resaerch about necromancy and Bhaal I found in Korlasz' family crypt. I believe you would have an interest in these.~ */ + bhaal_reserach_kd
END

APPEND bdliia
IF ~~ THEN bhaal_reserach_kd
SAY @231 /* ~I am very interested in studying these kind of old tomes.~ */
IF ~~ THEN + bhaal_reserach_kd_01
END

IF ~~ THEN bhaal_reserach_kd_01
SAY @229 /* ~I thank you. Take these for compensation.~ */
IF ~~ THEN DO ~SetGlobal("C#EBG1_BhaalResearchKD","GLOBAL",6)
GiveItemCreate("SCRL07",Player1,2,0,0)
ActionOverride(Player1,DestroyItem("BDSHBHR"))
ActionOverride(Player2,DestroyItem("BDSHBHR"))
ActionOverride(Player3,DestroyItem("BDSHBHR"))
ActionOverride(Player4,DestroyItem("BDSHBHR"))
ActionOverride(Player5,DestroyItem("BDSHBHR"))
ActionOverride(Player6,DestroyItem("BDSHBHR"))~ EXIT
END
END //APPEND 

