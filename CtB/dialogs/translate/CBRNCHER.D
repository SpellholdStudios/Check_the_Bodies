BEGIN ~CBRNCHER~

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
RandomNum(5,3)~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXIT
END

IF ~Global("CbVampireSubQuestStart","GLOBAL",0)
RandomNum(5,4)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN EXIT
END

IF ~Global("CbVampireSubQuestStart","GLOBAL",1)
RandomNum(2,1)~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN DO ~SetInterrupt(FALSE)
ChangeAIScript("",4)
ChangeAIScript("",6)
EscapeAreaNoSee()~ EXIT
END

IF ~Global("CbVampireSubQuestStart","GLOBAL",1)
RandomNum(2,2)~ THEN BEGIN 7
  SAY @8
  IF ~~ THEN GOTO 6
END
