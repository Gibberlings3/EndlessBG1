APPEND LIIA
IF WEIGHT #-1
~%BGT_VAR%
Dead("Sarevok")
OR(2)
InMyArea(Player1)
IsGabber(Player1)~ victory
SAY @10 /* ~Thank you for defeating Sarevok, <CHARNAME>!~ */
IF ~~ THEN EXIT
END

IF WEIGHT #-1
~%BGT_VAR%
Dead("Sarevok")
!IsGabber(Player1) !InMyArea(Player1)~ victory_npc
SAY @11 /* ~My thanks to you as well, companion of <CHARNAME>.~ */
IF ~~ THEN EXIT
END




END //APPEND


