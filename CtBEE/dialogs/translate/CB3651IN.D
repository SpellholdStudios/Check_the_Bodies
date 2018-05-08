BEGIN ~CB3651IN~

IF ~OR(2)
Alignment(LastTalkedToBy(Myself),MASK_CHAOTIC)
Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN DO ~StartStore("CB3651IN",LastTalkedToBy(Myself))
~ EXIT
END

IF ~!OR(2)
Alignment(LastTalkedToBy(Myself),MASK_CHAOTIC)
Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 1
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN DO ~StartStore("CB3651IO",LastTalkedToBy(Myself))
~ EXIT
END
