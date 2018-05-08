BEGIN ~CBMOONDG~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 11
END

IF ~Global("chapter","GLOBAL",7)
!AreaCheck("AR2100")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2209")
!AreaCheck("AR2210")~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Global("chapter","GLOBAL",7)
OR(11)
AreaCheck("AR2100")
AreaCheck("AR2200")
AreaCheck("AR2201")
AreaCheck("AR2202")
AreaCheck("AR2203")
AreaCheck("AR2204")
AreaCheck("AR2205")
AreaCheck("AR2206")
AreaCheck("AR2207")
AreaCheck("AR2209")
AreaCheck("AR2210")~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~AreaCheck("AR5000")~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXIT
END

IF ~AreaCheck("AR4500")~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN EXIT
END

IF ~OR(11)
AreaCheck("AR6100")
AreaCheck("AR6101")
AreaCheck("AR6102")
AreaCheck("AR6103")
AreaCheck("AR6104")
AreaCheck("AR6105")
AreaCheck("AR6106")
AreaCheck("AR6107")
AreaCheck("AR6108")
AreaCheck("AR6109")
AreaCheck("AR6110")~ THEN BEGIN 5
  SAY @3
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,1)~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)~ THEN BEGIN 7
  SAY @7
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)~ THEN BEGIN 8
  SAY @8
  IF ~~ THEN DO ~IncrementGlobal("CbMoonBladeAbilities","GLOBAL",1)~ EXIT
END

IF ~RandomNum(5,4)~ THEN BEGIN 9
  SAY @9
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)~ THEN BEGIN 10
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @11
  IF ~!Race(LastTalkedToBy(Myself),ELF)~ THEN GOTO 16
  IF ~Race(LastTalkedToBy(Myself),ELF)~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @12
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @13
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @14
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @15
  IF ~~ THEN DO ~SetNumTimesTalkedTo(1)~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @16
  IF ~~ THEN GOTO 13
END
