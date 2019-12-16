BEGIN ~CBAVRCWB~ 2

IF ~~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXTERN ~CBAVRCWA~ 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXTERN ~CBAVRVLB~ 4
END

IF ~Global("CbAngryVillagersRevolt","GLOBAL",3)
Global("CbPartySidedSoldiers","AR1000",1)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~ReputationInc(5)
SetGlobal("CbAngryVillagersRevolt","GLOBAL",4)~ EXIT
END

IF ~Global("CbAngryVillagersRevolt","GLOBAL",3)
Global("CbPartySidedVillagers","AR1000",1)~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~ReputationInc(-5)
SetGlobal("CbAngryVillagersRevolt","GLOBAL",4)~ EXIT
END
