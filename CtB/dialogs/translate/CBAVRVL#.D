BEGIN ~CBAVRVL#~ 2

IF ~Global("CbAngryVillagersRevolt","GLOBAL",3)
Global("CbPartySidedSoldiers","AR1000",1)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~ReputationInc(-5)
SetGlobal("CbAngryVillagersRevolt","GLOBAL",4)~ EXIT
END

IF ~Global("CbAngryVillagersRevolt","GLOBAL",3)
Global("CbPartySidedVillagers","AR1000",1)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~ReputationInc(5)
SetGlobal("CbAngryVillagersRevolt","GLOBAL",4)~ EXIT
END
