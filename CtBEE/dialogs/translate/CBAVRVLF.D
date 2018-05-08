BEGIN ~CBAVRVLF~ 2

IF ~~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXTERN ~CBAVRCWA~ 0
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXTERN ~CBAVRVLB~ 0
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN EXTERN ~CBAVRSLG~ 7
END

IF ~Global("CbAngryVillagersRevolt","GLOBAL",3)
Global("CbPartySidedSoldiers","AR1000",1)~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN DO ~ReputationInc(-5)
SetGlobal("CbAngryVillagersRevolt","GLOBAL",4)~ EXIT
END

IF ~Global("CbAngryVillagersRevolt","GLOBAL",3)
Global("CbPartySidedVillagers","AR1000",1)~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN DO ~ReputationInc(5)
SetGlobal("CbAngryVillagersRevolt","GLOBAL",4)~ EXIT
END
