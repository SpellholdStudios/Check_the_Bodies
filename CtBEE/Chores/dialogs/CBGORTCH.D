BEGIN ~CBGORTCH~

IF ~Global("CbGorionTeachesLesson","GLOBAL",2)//1
Global("CbGorionsLessonOne","LOCALS",0)~ THEN BEGIN 0
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
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 11
END

IF ~~ THEN BEGIN 5
  SAY @8
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @9
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
END

IF ~~ THEN BEGIN 8
  SAY @14
  IF ~~ THEN DO ~SetGlobal("CbGorionsLessonOne","LOCALS",1)
SetGlobal("CbGorionDispelMagic","LOCALS",1)
StartDialogNoSet(Player1)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @14
  IF ~~ THEN DO ~SetGlobal("CbGorionsLessonOne","LOCALS",1)
SetGlobal("CbGorionProEvil","LOCALS",1)
StartDialogNoSet(Player1)~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @14
  IF ~~ THEN DO ~SetGlobal("CbGorionsLessonOne","LOCALS",1)
SetGlobal("CbGorionTrueSeeing","LOCALS",1)
StartDialogNoSet(Player1)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @15
  IF ~~ THEN GOTO 6
END

IF ~Global("CbGorionTeachesLesson","GLOBAL",2)//1
Global("CbGorionsLessonOne","LOCALS",1)
Global("CbGorionDispelMagic","LOCALS",1)~ THEN BEGIN 12
  SAY @16
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @17
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @18
  IF ~~ THEN DO ~SetGlobal("CbGorionDispelMagic","LOCALS",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBGORDSP")~ EXIT
END

IF ~Global("CbGorionTeachesLesson","GLOBAL",2)//1
Global("CbGorionsLessonOne","LOCALS",1)
Global("CbGorionDispelMagic","LOCALS",3)~ THEN BEGIN 15
  SAY @19
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @20
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @21
  IF ~~ THEN DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPIN112"))
SetGlobal("CbGorionsLessonOne","LOCALS",2)
SetGlobal("CbGorionDispelMagic","LOCALS",4)
DayNight(MIDNIGHT)
StartCutSceneMode()
StartCutScene("CBREST")
~ EXIT
END

IF ~Global("CbGorionTeachesLesson","GLOBAL",2)//1
Global("CbGorionsLessonOne","LOCALS",1)
Global("CbGorionProEvil","LOCALS",1)~ THEN BEGIN 18
  SAY @22
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @23
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @24
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @25
  IF ~~ THEN DO ~SetGlobal("CbGorionProEvil","LOCALS",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBGORPRO")~ EXIT
END

IF ~Global("CbGorionTeachesLesson","GLOBAL",2)//1
Global("CbGorionsLessonOne","LOCALS",1)
Global("CbGorionProEvil","LOCALS",3)~ THEN BEGIN 22
  SAY @19
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @20
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @21
  IF ~~ THEN DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPIN121"))
SetGlobal("CbGorionsLessonOne","LOCALS",2)
SetGlobal("CbGorionProEvil","LOCALS",4)
DayNight(MIDNIGHT)
StartCutSceneMode()
StartCutScene("CBREST")
~ EXIT
END

IF ~Global("CbGorionTeachesLesson","GLOBAL",2)//1
Global("CbGorionsLessonOne","LOCALS",1)
Global("CbGorionTrueSeeing","LOCALS",1)~ THEN BEGIN 25
  SAY @26
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @27
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @28
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @29
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @30
  IF ~~ THEN DO ~SetGlobal("CbGorionTrueSeeing","LOCALS",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBGORSEE")~ EXIT
END

IF ~Global("CbGorionTeachesLesson","GLOBAL",2)//1
Global("CbGorionsLessonOne","LOCALS",1)
Global("CbGorionTrueSeeing","LOCALS",3)~ THEN BEGIN 30
  SAY @31
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @20
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @32
  IF ~~ THEN DO ~AddXPObject(Player1,500)
SetGlobal("CbGorionsLessonOne","LOCALS",2)
SetGlobal("CbGorionTrueSeeing","LOCALS",4)
DayNight(MIDNIGHT)
StartCutSceneMode()
StartCutScene("CBREST")
~ EXIT
END

IF ~Global("CbGorionTeachesLesson","GLOBAL",1)//2
Global("CbGorionsLessonTwo","LOCALS",0)
Global("CbGorionsLessonTwo","AR3508",0)~ THEN BEGIN 33
  SAY @33
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @34
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35
  SAY @35
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY @36
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @37
  IF ~~ THEN DO ~SetGlobal("CbGorionsLessonTwo","LOCALS",1)
SetGlobal("CbGorionsLessonTwo","AR3508",1)
EscapeArea()
ActionOverride("CBHULTCH",StartDialogNoSet(Player1))~ EXIT
END

IF ~Global("CbGorionTeachesLesson","GLOBAL",3)
Global("CbGorionsLessonThree","AR3504",0)~ THEN BEGIN 38
  SAY @38
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @39
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @40
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 42
  IF ~~ THEN REPLY @43 GOTO 43
END

IF ~~ THEN BEGIN 42
  SAY @44
  IF ~~ THEN DO ~SetGlobal("CbGorionsLessonThree","LOCALS",1)
SetGlobal("CbGorionsLessonThree","AR3504",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBPHYTHa")
~ EXIT
END

IF ~~ THEN BEGIN 43
  SAY @45
  IF ~~ THEN DO ~SetGlobal("CbGorionsLessonThree","LOCALS",1)
SetGlobal("CbGorionsLessonThree","AR3504",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTETTHa")~ EXIT
END

IF ~Global("CbGorionTeachesLesson","GLOBAL",4)
Global("CbGorionLessonFour","LOCALS",0)~ THEN BEGIN 44
  SAY @46
  IF ~~ THEN DO ~SetGlobal("CbGorionsLessonFour","LOCALS",1)
SetGlobal("CbGorionsLessonFour","AR3508",1)
EscapeArea()
ActionOverride("CBHULTCH",StartDialogNoSet(Player1))~ EXIT
END

IF ~Global("CbGorionTeachesLesson","GLOBAL",5)
Global("CbGorionsFaith","LOCALS",0)~ THEN BEGIN 45
  SAY @47
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY @48
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @49
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY @50
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 50
END

IF ~~ THEN BEGIN 50
  SAY @53
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51
  SAY @54
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52
  SAY @55
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
  SAY @56
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54
  SAY @57
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55
  SAY @58
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56
  SAY @59
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57
  SAY @60
  IF ~~ THEN REPLY @61 GOTO 58
  IF ~~ THEN REPLY @62 GOTO 72
END

IF ~~ THEN BEGIN 58
  SAY @63
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59
  SAY @64
  IF ~~ THEN REPLY @64 GOTO 60
END

IF ~~ THEN BEGIN 60
  SAY @65
  IF ~~ THEN REPLY @65 GOTO 61
END

IF ~~ THEN BEGIN 61
  SAY @66
  IF ~~ THEN REPLY @66 GOTO 62
END

IF ~~ THEN BEGIN 62
  SAY @67
  IF ~~ THEN REPLY @67 GOTO 63
END

IF ~~ THEN BEGIN 63
  SAY @68
  IF ~~ THEN REPLY @68 GOTO 64
END

IF ~~ THEN BEGIN 64
  SAY @69
  IF ~~ THEN REPLY @69 GOTO 65
END

IF ~~ THEN BEGIN 65
  SAY @70
  IF ~~ THEN REPLY @70 GOTO 66
END

IF ~~ THEN BEGIN 66
  SAY @71
  IF ~~ THEN REPLY @71 GOTO 67
END

IF ~~ THEN BEGIN 67
  SAY @72
  IF ~~ THEN REPLY @72 GOTO 68
END

IF ~~ THEN BEGIN 68
  SAY @73
  IF ~~ THEN REPLY @73 GOTO 69
END

IF ~~ THEN BEGIN 69
  SAY @74
  IF ~~ THEN REPLY @74 GOTO 70
END

IF ~~ THEN BEGIN 70
  SAY @75
  IF ~~ THEN REPLY @75 GOTO 71
END

IF ~~ THEN BEGIN 71
  SAY @76
  IF ~~ THEN REPLY @76 DO ~SetGlobal("CbGorionsFaith","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBGORPRY")~ EXIT
END

IF ~~ THEN BEGIN 72
  SAY @77
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73
  SAY @78
  IF ~~ THEN DO ~SetGlobal("CbGorionTeachesLesson","GLOBAL",6)
SetGlobal("CbGorionsFaith","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBGORWEP")~ EXIT
END

IF ~Global("CbGorionTeachesLesson","GLOBAL",5)
Global("CbGorionsFaith","LOCALS",1)~ THEN BEGIN 74
  SAY @79
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75
  SAY @80
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76
  SAY @81
  IF ~~ THEN DO ~SetGlobal("CbGorionTeachesLesson","GLOBAL",6)
SetGlobal("CbPlayerBlessedByLathander","GLOBAL",1)
SetGlobal("CbGorionsFaith","LOCALS",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBGORRTN")~ EXIT
END
