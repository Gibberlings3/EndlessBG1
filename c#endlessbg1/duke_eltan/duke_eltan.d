/* extended content: Duke Eltan is in the Palace */
/*
DELTAN2.dlg - Duke Eltan's dialogue use this to make it compatible with bg1re 

*/
APPEND DELTAN2

IF WEIGHT #-1
~Dead("Sarevok")~ eltan_thanks
SAY @70 /* ~You saved us. The gratitude of the city is yours.~ */
++ @71 EXIT /* ~Good day to you.~ */
END

END //APPEND
