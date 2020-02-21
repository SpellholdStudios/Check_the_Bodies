BEGIN ~CBAVRVLB~ 2

IF ~~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~NumInPartyAlive(1)~ THEN GOTO 2
  IF ~NumInPartyAliveGT(1)~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXTERN ~CBAVRSLE~ 2
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXTERN ~CBAVRSLE~ 2
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN EXTERN ~CBAVRCWA~ 4
END

IF ~~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN DO ~SetGlobal("CbAngryVillagersRevolt","GLOBAL",3)
SetGlobal("CbPartySidedSoldiers","AR1000",1)
Kill("CBAVRCWa")~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN DO ~SetGlobal("CbAngryVillagersRevolt","GLOBAL",3)
SetGlobal("CbPartySidedSoldiers","AR1000",1)
Kill("CBAVRCWa")~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @8
  IF ~~ THEN EXTERN ~CBAVRCWA~ 5
END

IF ~Global("CbAngryVillagersRevolt","GLOBAL",3)
Global("CbPartySidedSoldiers","AR1000",1)~ THEN BEGIN 8
  SAY @9
  IF ~~ THEN DO ~ReputationInc(-5)
SetGlobal("CbAngryVillagersRevolt","GLOBAL",4)~ EXIT
END

IF ~Global("CbAngryVillagersRevolt","GLOBAL",3)
Global("CbPartySidedVillagers","AR1000",1)~ THEN BEGIN 9
  SAY @10
  IF ~~ THEN DO ~ReputationInc(5)
SetGlobal("CbAngryVillagersRevolt","GLOBAL",4)~ EXIT
END
