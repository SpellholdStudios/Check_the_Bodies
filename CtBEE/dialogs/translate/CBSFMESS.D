BEGIN ~CBSFMESS~

IF ~Global("CbWeddingQuestStarts","GLOBAL",1)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~GiveItemCreate("CBSFINVI",LastTalkedToBy(Myself),1,0,0)
SetGlobal("CbWeddingQuestStarts","GLOBAL",2)
SetGlobalTimer("CbFarrahdWeddingTimer","GLOBAL",TWO_DAYS)
SetGlobalTimer("CbFarrahdWeddingOverTimer","GLOBAL",THREE_DAYS)
Wait(2)
EscapeArea()~ EXIT
END
