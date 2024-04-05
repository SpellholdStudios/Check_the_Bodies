BEGIN ~CBSTLKP1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~Wait(4)
CreateCreatureOffScreen("CBSTLKP2",0)
Wait(50)
EscapeAreaDestroy(10)
~ EXIT
END
