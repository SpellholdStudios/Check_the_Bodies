BEGIN ~CBRNCWFE~

IF ~Global("CbVampireSubQuestStart","GLOBAL",0)
RandomNum(5,1)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("CbVampireSubQuestStart","GLOBAL",0)
RandomNum(5,2)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Global("CbVampireSubQuestStart","GLOBAL",0)
RandomNum(5,3)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("CbVampireSubQuestStart","GLOBAL",0)
RandomNum(5,4)~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXIT
END

IF ~Global("CbVampireSubQuestStart","GLOBAL",0)
RandomNum(5,5)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN EXIT
END

IF ~Global("CbVampireSubQuestStart","GLOBAL",1)~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN EXIT
END
