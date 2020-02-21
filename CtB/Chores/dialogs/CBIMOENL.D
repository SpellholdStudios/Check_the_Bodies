BEGIN ~CBIMOENL~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",0)~ THEN REPLY @19 GOTO 13
END

IF ~~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN EXIT
END

IF ~GlobalLT("CbPlayerOneDoesCandleKeepChores","GLOBAL",0)~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN EXIT
END

IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",0)
Global("CbImoenPlayed","AR3500",0)
TimeLT(18)~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @14
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @15
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @16
  IF ~~ THEN DO ~ClearAllActions()
SetCutSceneLite(TRUE)
StartCutScene("CBIMOENM")~ EXIT
END

IF ~Global("CbImoenPlayed","AR3500",1)~ THEN BEGIN 11
  SAY @17
  IF ~Global("CbImoenHides","LOCALS",0)~ THEN DO ~SetGlobal("CbTagGame","AR3500",0)
JumpToPoint([402.1779])~ EXIT
  IF ~Global("CbImoenHides","LOCALS",1)~ THEN DO ~SetGlobal("CbTagGame","AR3500",0)
JumpToPoint([722.664])~ EXIT
  IF ~Global("CbImoenHides","LOCALS",2)~ THEN DO ~SetGlobal("CbTagGame","AR3500",0)
JumpToPoint([3282.3098])~ EXIT
  IF ~Global("CbImoenHides","LOCALS",3)~ THEN DO ~SetGlobal("CbTagGame","AR3500",0)
JumpToPoint([4521.2000])~ EXIT
  IF ~Global("CbImoenHides","LOCALS",4)~ THEN DO ~SetGlobal("CbTagGame","AR3500",0)
JumpToPoint([3125.941])~ EXIT
  IF ~GlobalGT("CbImoenHides","LOCALS",4)~ THEN DO ~SetGlobal("CbTagGame","AR3500",0)
JumpToPoint([425.779])~ EXIT
END

IF ~Global("CbImoenPlayed","AR3500",2)~ THEN BEGIN 12
  SAY @18
  IF ~~ THEN DO ~IncrementGlobal("CbImoenHides","LOCALS",1)
DayNight(18)
SetGlobal("CbTagGame","AR3500",0)
SetGlobal("CbImoenPlayed","AR3500",6)~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @15
  IF ~~ THEN GOTO 10
END
