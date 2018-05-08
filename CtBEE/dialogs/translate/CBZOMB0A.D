BEGIN ~CBZOMB0A~

IF ~Global("CbHlondethRetreatStage","AR3675",2)
Global("CbOfficerOneCreatesMOB","AR3675",1)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~SetGlobal("CbHlondethRetreatStage","AR3675",3)~ EXIT
END

IF ~Global("CbInitialStandDone","AR3675",1)
Global("CbHlondethRetreatStage","AR3675",4)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~SetGlobal("CbInitialStandDone","AR3675",2)
DestroyItem("MINHP1")
SetGlobal("CbHlondethRetreatStage","AR3675",5)~ EXIT
END
