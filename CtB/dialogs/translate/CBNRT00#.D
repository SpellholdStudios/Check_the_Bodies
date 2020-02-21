BEGIN ~CBNRT00#~

IF ~RandomNum(5,1)
!Kit(LastTalkedToBy(Myself),TRUECLASS)
Class(LastTalkedToBy(Myself),FIGHTER)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)
!Kit(LastTalkedToBy(Myself),TRUECLASS)
Class(LastTalkedToBy(Myself),FIGHTER)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)
!Kit(LastTalkedToBy(Myself),TRUECLASS)
Class(LastTalkedToBy(Myself),FIGHTER)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)
!Kit(LastTalkedToBy(Myself),TRUECLASS)
Class(LastTalkedToBy(Myself),FIGHTER)~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)
!Kit(LastTalkedToBy(Myself),TRUECLASS)
Class(LastTalkedToBy(Myself),FIGHTER)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN EXIT
END

IF ~Kit(LastTalkedToBy(Myself),TRUECLASS)
Class(LastTalkedToBy(Myself),FIGHTER)~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,1)
!Class(LastTalkedToBy(Myself),FIGHTER)~ THEN BEGIN 6
  SAY @1
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)
!Class(LastTalkedToBy(Myself),FIGHTER)~ THEN BEGIN 6
  SAY @2
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)
!Class(LastTalkedToBy(Myself),FIGHTER)~ THEN BEGIN 6
  SAY @3
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)
!Class(LastTalkedToBy(Myself),FIGHTER)~ THEN BEGIN 6
  SAY @4
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)
!Class(LastTalkedToBy(Myself),FIGHTER)~ THEN BEGIN 6
  SAY @5
  IF ~~ THEN EXIT
END
