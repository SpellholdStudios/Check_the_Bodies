BEGIN ~CBHULTCH~

IF ~Global("CbGorionsLessonTwo","AR3508",1)
Global("CbHullLessonOne","LOCALS",0)~ THEN BEGIN 0
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
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @10
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @11
  IF ~~ THEN DO ~SetGlobal("CbHullLesson_HRD","LOCALS",1)
SetGlobal("CbHullLessonOne","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBHULHRD")~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @10
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @11
  IF ~~ THEN DO ~SetGlobal("CbHullLesson_TRK","LOCALS",1)
SetGlobal("CbHullLessonOne","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBHULTRK")~ EXIT
END

IF ~Global("CbGorionsLessonTwo","AR3508",1)
Global("CbHullLessonOne","LOCALS",1)
Global("CbHullLesson_HRD","LOCALS",1)~ THEN BEGIN 11
  SAY @12
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @13
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @14
  IF ~~ THEN GOTO 16
END

IF ~Global("CbGorionsLessonTwo","AR3508",1)
Global("CbHullLessonOne","LOCALS",1)
Global("CbHullLesson_TRK","LOCALS",1)~ THEN BEGIN 14
  SAY @15
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @16
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 16
  SAY @17
  IF ~~ THEN DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPCL907"))
SetGlobal("CbHullLesson_HRD","LOCALS",2)
SetGlobal("CbGorionsLessonTwo","AR3508",2)
SetGlobal("CbHullLessonOne","LOCALS",2)
DayNight(MIDNIGHT)
StartCutSceneMode()
StartCutScene("CBREST2")~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @17
  IF ~~ THEN DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPCL922"))
SetGlobal("CbHullLesson_TRK","LOCALS",2)
SetGlobal("CbGorionsLessonTwo","AR3508",2)
SetGlobal("CbHullLessonOne","LOCALS",2)
DayNight(MIDNIGHT)
StartCutSceneMode()
StartCutScene("CBREST2")~ EXIT
END

IF ~Global("CbGorionTeachesLesson","GLOBAL",4)
Global("CbGorionsLessonFour","AR3508",1)
Global("CbHullLessonFour","LOCALS",0)~ THEN BEGIN 18
  SAY @18
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 20
  IF ~~ THEN REPLY @21 GOTO 21
END

IF ~~ THEN BEGIN 20
  SAY @22
  IF ~~ THEN DO ~SetGlobal("CbHullLessonFour","LOCALS",1)
SetGlobal("CbHullDefensiveSpin","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBHULDEF")~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @22
  IF ~~ THEN DO ~SetGlobal("CbHullLessonFour","LOCALS",1)
SetGlobal("CbHullOffensiveSpin","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBHULOFF")~ EXIT
END

IF ~Global("CbHullLessonFour","LOCALS",1)
Global("CbHullDefensiveSpin","LOCALS",1)~ THEN BEGIN 22
  SAY @23
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @24
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @25
  IF ~~ THEN DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPCL522"))
SetGlobal("CbHullLessonFour","LOCALS",2)
SetGlobal("CbHullDefensiveSpin","LOCALS",2)
DayNight(MIDNIGHT)
StartCutSceneMode()
StartCutScene("CBREST2")~ EXIT
END

IF ~Global("CbHullLessonFour","LOCALS",1)
Global("CbHullOffensiveSpin","LOCALS",1)~ THEN BEGIN 25
  SAY @26
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @27
  IF ~~ THEN DO ~AddXPObject(Player1,1000)
//TakePartyItem("CBHULOSP")
//DestroyItem("CBHULOSP")
ActionOverride(Player1,AddSpecialAbility("SPCL521"))
SetGlobal("CbHullLessonFour","LOCALS",2)
SetGlobal("CbHullOffensiveSpin","LOCALS",2)
DayNight(MIDNIGHT)
StartCutSceneMode()
StartCutScene("CBREST2")~ EXIT
END
