BEGIN ~CBBDSTRT~

IF ~Class(LastTalkedToBy(Myself),FIGHTER)
LevelGT(LastTalkedToBy(Myself),9)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 EXIT
  IF ~~ THEN REPLY @3 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @6
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @7
  IF ~~ THEN DO ~RevealAreaOnMap("AR3520")
SetGlobal("Cb_GetMeOutOfThisHellHole","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN GOTO 2
END

IF ~Class(LastTalkedToBy(Myself),FIGHTER)
LevelLT(LastTalkedToBy(Myself),10)~ THEN BEGIN 4
  SAY @1
  IF ~~ THEN REPLY @2 EXIT
  IF ~~ THEN REPLY @3 GOTO 5
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN EXIT
END

IF ~!Class(LastTalkedToBy(Myself),FIGHTER)
LevelLT(LastTalkedToBy(Myself),14)~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN EXIT
END

IF ~!Class(LastTalkedToBy(Myself),FIGHTER)
LevelGT(LastTalkedToBy(Myself),13)~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN REPLY @2 EXIT
  IF ~~ THEN REPLY @3 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 EXIT
END
