
/* Elminster makes his appearance */
BEGIN C#STLMST
IF ~True()~ THEN elminster_sarevok_death
SAY @90 /* ~Our paths cross once more, young one. Thou learned about thine godly heritage, and not only that, but had to kill one of thine godly brethren. Thou rid the Sword Coast from a great evil. The question is, what path will thee go from here? Will thee give in to the evil in thine blood? Be assured that there are good people watching, <CHARNAME>, watching over thee as well as being ready for whatever thou will turn out in the future, as best we can. I wish thee well, <CHARNAME>, child of Bhaal. May the gods bless thee.~ */
IF ~~ THEN DO ~ActionOverride("C#STLMST",EscapeArea())~ JOURNAL @10006 /* ~Another Encounter with Elminster


And again Elminster made an appearance, and finally I see that he knew all about my heritage all along. Why Elminster as well as Gorion thought it a good idea to talk in riddles and not tell me directly I do not know. Elminster seemed very interested in how I will deal with my heritage and what I will turn into - a sentinent I can only agree to.~ */ EXIT
END