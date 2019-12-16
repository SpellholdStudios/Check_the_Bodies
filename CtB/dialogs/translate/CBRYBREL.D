BEGIN ~CBRYBREL~

IF ~Global("CbRybergMeetsRelative","GLOBAL",1)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN DO ~SetGlobal("CbRybergMeetsRelative","GLOBAL",2)~ EXTERN ~CBRYBERG~ 30
END

IF ~Global("CbRybergMeetsRelative","GLOBAL",3)~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @8
  IF ~~ THEN DO ~SetGlobal("CbRybergMeetsRelative","GLOBAL",4)~ EXTERN ~CBRYBERG~ 31
/*Wait(1)
ForceSpell(Myself,DRYAD_TELEPORT)
DestroySelf()~ EXTERN ~CBRYBERG~ 33*/
END
