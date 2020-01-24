/* BG ub texts */
/* Elminster makes his appearance */

BEGIN C#STLMST
IF ~ReputationGT(Player1,9) ReputationLT(Player1,16)~ THEN elminster_sarevok_death_01
SAY @91
IF ~~ THEN DO ~ActionOverride("C#STLMST",EscapeArea())~ EXIT
END

IF ~ReputationLT(Player1,10)~ THEN elminster_sarevok_death_02
SAY @92
IF ~~ THEN DO ~ActionOverride("C#STLMST",EscapeArea())~ EXIT
END

IF ~ReputationGT(Player1,15)~ THEN elminster_sarevok_death_03
SAY @93
IF ~~ THEN DO ~ActionOverride("C#STLMST",EscapeArea())~ EXIT
END