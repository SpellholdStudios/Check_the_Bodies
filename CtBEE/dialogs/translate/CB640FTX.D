BEGIN ~CB640FTX~

IF ~RandomNum(3,1)
Global("CbCloseToHome","GLOBAL",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)
Global("CbCloseToHome","GLOBAL",0)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)
Global("CbCloseToHome","GLOBAL",0)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("CbCloseToHome","GLOBAL",1)~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 10
  IF ~~ THEN REPLY @6 DO ~SetGlobal("Cb_3640_FightersGoToBridge","GLOBAL",1)
ActionOverride("CB640FT2",ClearActions("CB640FT2"))
ActionOverride("CB640FT3",ClearActions("CB640FT3"))
ActionOverride("CB640FT4",ClearActions("CB640FT4"))
ActionOverride("CB640FT5",ClearActions("CB640FT5"))~ EXIT
END

IF ~Global("CbCloseToHome","GLOBAL",2)~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN DO ~
ActionOverride("CB640FT2",MoveToObject("WESTBRDG"))
ActionOverride("CB640FT3",MoveToObject("WESTBRDG"))
ActionOverride("CB640FT4",MoveToObject("WESTBRDG"))
ActionOverride("CB640FT5",MoveToObject("WESTBRDG"))~ EXIT
END

IF ~Global("CbCloseToHome","GLOBAL",4)~ THEN BEGIN 5
  SAY @8
  IF ~~ THEN DO ~SetGlobal("CbCloseToHome","GLOBAL",5)~ EXIT
END

IF ~Global("CbCloseToHome","GLOBAL",5)~ THEN BEGIN 6
  SAY @9
  IF ~~ THEN DO ~
ActionOverride("CB640FT2",EscapeArea())
ActionOverride("CB640FT3",EscapeArea())
ActionOverride("CB640FT4",EscapeArea())
ActionOverride("CB640FT5",EscapeArea())~ EXIT
END

IF ~RandomNum(3,1)
GlobalGT("CbCloseToHome","GLOBAL",4)
!AreaCheck("AR3675")~ THEN BEGIN 7
  SAY @1
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)
GlobalGT("CbCloseToHome","GLOBAL",4)
!AreaCheck("AR3675")~ THEN BEGIN 8
  SAY @2
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)
GlobalGT("CbCloseToHome","GLOBAL",4)
!AreaCheck("AR3675")~ THEN BEGIN 9
  SAY @3
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @10
  IF ~~ THEN EXIT
END
