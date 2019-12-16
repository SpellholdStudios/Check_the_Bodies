BEGIN ~CBZOMB0B~

IF ~GlobalLT("CbHlondethRetreatStage","AR3675",6)
RandomNum(2,1)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXIT
END

IF ~GlobalLT("CbHlondethRetreatStage","AR3675",6)
RandomNum(2,2)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Global("CbHlondethRetreatStage","AR3675",6)
Global("CbOfficerTwoCreatesMOB","AR3675",1)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CbHlondethRetreatStage","AR3675",7)
SetGlobal("CbOfficerTwoCreatesMOB","AR3675",2)
ActionOverride("CBZOMB0A",DestroyItem("MINHP1"))~ EXIT
END

IF ~Global("CbInitialStandDone","AR3675",10)
Global("CbSecondStandDone","AR3675",1)
Global("CbHlondethRetreatStage","AR3675",8)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN DO ~SetGlobal("CbSecondStandDone","AR3675",2)
DestroyItem("MINHP1")
SetGlobal("CbHlondethRetreatStage","AR3675",9)~ EXIT
END
