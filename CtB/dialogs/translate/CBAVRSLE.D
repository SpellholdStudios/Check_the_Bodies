BEGIN ~CBAVRSLE~

IF ~Global("CbAngryVillagersRevolt","GLOBAL",2)
Global("CbSergeantStartedDialog","LOCALS",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("CbSergeantStartedDialog","LOCALS",1)~ EXTERN ~CBAVRSLG~ 0
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXTERN ~CBAVRSLG~ 5
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXTERN ~CBAVRCWA~ 3
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN GOTO 6
END

IF ~Global("CbAngryVillagersRevolt","GLOBAL",3)
Global("CbPartySidedSoldiers","AR1000",1)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN DO ~ReputationInc(5)
SetGlobal("CbAngryVillagersRevolt","GLOBAL",4)~ EXIT
END

IF ~Global("CbAngryVillagersRevolt","GLOBAL",3)
Global("CbPartySidedVillagers","AR1000",1)~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN DO ~ReputationInc(-5)
SetGlobal("CbAngryVillagersRevolt","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN DO ~SetGlobal("CbAngryVillagersRevolt","GLOBAL",3)
SetGlobal("CbPartySidedSoldiers","AR1000",1)~ EXIT
END
