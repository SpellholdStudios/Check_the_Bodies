BEGIN ~CBSPKDED~

IF ~True()~ THEN BEGIN 0
  SAY @1
  IF ~CheckStatGT(LastTalkedToBy(Myself),9,STR)
CheckStatGT(LastTalkedToBy(Myself),14,INT)~ THEN REPLY @2 GOTO 1
  IF ~CheckStatLT(LastTalkedToBy(Myself),10,STR)
CheckStatLT(LastTalkedToBy(Myself),15,INT)~ THEN REPLY @2 GOTO 12
  IF ~CheckStatGT(LastTalkedToBy(Myself),9,STR)
CheckStatGT(LastTalkedToBy(Myself),14,INT)~ THEN REPLY @3 GOTO 11
  IF ~CheckStatLT(LastTalkedToBy(Myself),10,STR)
CheckStatLT(LastTalkedToBy(Myself),15,INT)~ THEN REPLY @3 GOTO 15
  IF ~False()~ THEN REPLY @3 GOTO 15
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~Global("CbHelpRyberg","GLOBAL",2)
See("CBRYBERG")~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 11
END

IF ~~ THEN BEGIN 3
  SAY @10
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @11
  IF ~~ THEN DO ~CreateVisualEffectObject("SPSUMGTE",Myself)
Wait(2)
DestroySelf()
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBSUMREL")~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @12
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @14
  IF ~Global("CbHelpRyberg","GLOBAL",2)
See("CBRYBERG")~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY @15
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @16
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @14
  IF ~Global("CbHelpRyberg","GLOBAL",2)
See("CBRYBERG")~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @17
  IF ~~ THEN DO ~CreateVisualEffectObject("SPSUMGTE",Myself)
Wait(2)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @4
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @18
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @19
  IF ~~ THEN DO ~CreateVisualEffectObject("SPSUMGTE",Myself)
Wait(2)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @20
  IF ~~ THEN DO ~Enemy()~ EXIT
END
