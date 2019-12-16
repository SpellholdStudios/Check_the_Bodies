BEGIN ~CB640HAR~

IF ~Gender(LastTalkedToBy(Myself),MALE)
RandomNum(2,1)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Gender(LastTalkedToBy(Myself),MALE)
RandomNum(2,2)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Gender(LastTalkedToBy(Myself),FEMALE)
RandomNum(2,1)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Gender(LastTalkedToBy(Myself),FEMALE)
RandomNum(2,2)~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXIT
END
