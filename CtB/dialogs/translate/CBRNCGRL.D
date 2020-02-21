BEGIN ~CBRNCGRL~

IF ~Global("CbVampireSubQuestStart","GLOBAL",0)
RandomNum(3,1)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("CbVampireSubQuestStart","GLOBAL",0)
RandomNum(3,2)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Global("CbVampireSubQuestStart","GLOBAL",0)
RandomNum(3,3)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("CbVampireSubQuestStart","GLOBAL",1)~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXIT
END
