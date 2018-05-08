BEGIN ~CBAVRSLG~ 2

IF ~~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXTERN ~CBAVRVLF~ 0
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN EXTERN ~CBAVRVLF~ 1
END

IF ~~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN EXTERN ~CBAVRVLF~ 1
END

IF ~~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN EXTERN ~CBAVRCWB~ 1
END

IF ~~ THEN BEGIN 7
  SAY @8
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 8
  SAY @9
  IF ~~ THEN EXTERN ~CBAVRSLE~ 3
END

IF ~~ THEN BEGIN 9
  SAY @10
  IF ~~ THEN EXTERN ~CBAVRVLB~ 6
END

IF ~Global("CbAngryVillagersRevolt","GLOBAL",3)
Global("CbPartySidedSoldiers","AR1000",1)~ THEN BEGIN 10
  SAY @11
  IF ~~ THEN DO ~ReputationInc(5)
SetGlobal("CbAngryVillagersRevolt","GLOBAL",4)~ EXIT
END

IF ~Global("CbAngryVillagersRevolt","GLOBAL",3)
Global("CbPartySidedVillagers","AR1000",1)~ THEN BEGIN 11
  SAY @12
  IF ~~ THEN DO ~ForceSpellRES("CBAVRSLG",Player1)
SetGlobal("CbAngryVillagersRevolt","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @13
  IF ~~ THEN REPLY @14 DO ~SetGlobal("CbAngryVillagersRevolt","GLOBAL",3)
SetGlobal("CbPartySidedSoldiers","AR1000",1)~ EXTERN ~CBAVRVLB~ 5
  IF ~RandomNum(2,1)~ THEN REPLY @15 DO ~SetGlobal("CbAngryVillagersRevolt","GLOBAL",3)
SetGlobal("CbPartySidedSoldiers","AR1000",1)~ GOTO 8
  IF ~RandomNum(2,2)~ THEN REPLY @15 DO ~SetGlobal("CbAngryVillagersRevolt","GLOBAL",3)
SetGlobal("CbPartySidedSoldiers","AR1000",1)~ GOTO 9
  IF ~~ THEN REPLY @16 DO ~SetGlobal("CbAngryVillagersRevolt","GLOBAL",3)
SetGlobal("CbPartySidedVillagers","AR1000",1)~ EXTERN ~CBAVRVLB~ 7
END
