BEGIN ~CB585RNG~

IF ~Global("CbRangerDeadDear","GLOBAL",0)
Class(LastTalkedToBy(Myself),RANGER)
Global("CbRangerTaught","AR3585",0)
!GlobalGT("CbMasterBardWantsHarp","GLOBAL",0)
!GlobalGT("CbRangerDeadDear","GLOBAL",0)
!GlobalGT("CbDruidTeachingSeeds","GLOBAL",0)
!GlobalGT("CbTumblingWizardWantsResearch","GLOBAL",0)
!GlobalGT("CbElvenSorceressWantsSeeds","GLOBAL",0)
!GlobalGT("CbNorthmenWantStaff","GLOBAL",0)~ THEN BEGIN 0
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
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 23
END

IF ~~ THEN BEGIN 8
  SAY @14
  IF ~~ THEN GOTO 21
END

IF ~Class(LastTalkedToBy(Myself),RANGER)
OR(2)
Global("CbRangerDeadDear","GLOBAL",1)
Global("CbRangerDeadDear","GLOBAL",2)~ THEN BEGIN 9
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~Global("CbRangerDeadDear","GLOBAL",2)~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 11
END

IF ~~ THEN BEGIN 10
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @20
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @21
  IF ~~ THEN DO ~SetGlobal("CbRangerDeadDear","GLOBAL",2)
AddExperienceParty(25000)
AddJournalEntry(@96,QUEST_DONE)
EraseJournalEntry(@112)~ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @22
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 15
  IF ~~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @26 GOTO 19
END

IF ~~ THEN BEGIN 15
  SAY @27
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBRNGTT1")~ EXIT
END

IF ~Global("CbRangerDeadDear","GLOBAL",3)
Global("CbRangerTaught","AR3585",1)
Global("CbRangerTeachesTracking1","LOCALS",1)
Class(LastTalkedToBy(Myself),RANGER)~ THEN BEGIN 16
  SAY @28
  IF ~~ THEN DO ~SetGlobal("CbRangerDeadDear","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),5000)
AddJournalEntry(@97,INFO)~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @27
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBRNGTS1")~ EXIT
END

IF ~Global("CbRangerDeadDear","GLOBAL",3)
Global("CbRangerTaught","AR3585",1)
Global("CbRangerTeachesSnares1","LOCALS",1)
Class(LastTalkedToBy(Myself),RANGER)~ THEN BEGIN 18
  SAY @29
  IF ~~ THEN DO ~SetGlobal("CbRangerDeadDear","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),5000)
AddJournalEntry(@98,INFO)~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @27
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBRNGTFT")~ EXIT
END

IF ~Global("CbRangerDeadDear","GLOBAL",3)
Global("CbRangerTaught","AR3585",1)
Global("CbRangerTeachesTraps","LOCALS",1)
Class(LastTalkedToBy(Myself),RANGER)~ THEN BEGIN 20
  SAY @30
  IF ~~ THEN DO ~SetGlobal("CbRangerDeadDear","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),5000)
AddJournalEntry(@99,INFO)~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @31
  IF ~~ THEN DO ~SetGlobal("CbRangerDeadDear","GLOBAL",1)
TriggerActivation("Door3595",TRUE)
AddJournalEntry(@100,QUEST)~ EXIT
END

IF ~Global("CbRangerDeadDear","GLOBAL",4)
Global("CbRangerDemon","GLOBAL",0)
Global("CbRangerTaught","AR3585",1)
Class(LastTalkedToBy(Myself),RANGER)~ THEN BEGIN 22
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 24
  IF ~~ THEN REPLY @34 GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @35
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24
  SAY @36
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @37
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @38
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 28
  IF ~~ THEN REPLY @41 GOTO 30
  IF ~~ THEN REPLY @42 GOTO 29
END

IF ~~ THEN BEGIN 28
  SAY @43
  IF ~~ THEN REPLY @41 GOTO 30
  IF ~~ THEN REPLY @42 GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @44
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @45
  IF ~~ THEN DO ~SetGlobal("CbRangerDemon","GLOBAL",1)
AddJournalEntry(@101,QUEST)~ EXIT
END

IF ~Global("CbRangerDemon","GLOBAL",1)
Class(LastTalkedToBy(Myself),RANGER)~ THEN BEGIN 31
  SAY @46
  IF ~Global("CbRangerDemonClue","LOCALS",0)~ THEN REPLY @47 DO ~IncrementGlobal("CbRangerDemonClue","LOCALS",1)~ GOTO 32
  IF ~Global("CbRangerDemonClue","LOCALS",1)~ THEN REPLY @47 DO ~IncrementGlobal("CbRangerDemonClue","LOCALS",1)~ GOTO 33
  IF ~Global("CbRangerDemonClue","LOCALS",2)~ THEN REPLY @47 DO ~IncrementGlobal("CbRangerDemonClue","LOCALS",1)~ GOTO 34
  IF ~Global("CbRangerDemonClue","LOCALS",3)~ THEN REPLY @47 DO ~IncrementGlobal("CbRangerDemonClue","LOCALS",1)~ GOTO 35
  IF ~GlobalGT("CbRangerDemonClue","LOCALS",3)~ THEN REPLY @47 DO ~IncrementGlobal("CbRangerDemonClue","LOCALS",1)~ GOTO 36
END

IF ~~ THEN BEGIN 32
  SAY @48
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 33
  SAY @49
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 34
  SAY @50
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 35
  SAY @51
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 36
  SAY @52
  IF ~~ THEN GOTO 39
END

IF ~Global("CbRangerDemon","GLOBAL",2)
Class(LastTalkedToBy(Myself),RANGER)~ THEN BEGIN 37
  SAY @53
  IF ~Global("CbElvenDemonBanished","GLOBAL",1)~ THEN REPLY @54 GOTO 38
  IF ~Global("CbElvenDemonDestroyed","GLOBAL",1)~ THEN REPLY @55 GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @56
  IF ~~ THEN DO ~SetGlobal("CbRangerDemon","GLOBAL",3)
AddJournalEntry(@102,QUEST_DONE)
EraseJournalEntry(@101)~ GOTO 40
END

IF ~~ THEN BEGIN 39
  SAY @57
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40
  SAY @58
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 42
  IF ~~ THEN REPLY @61 GOTO 44
  IF ~~ THEN REPLY @62 GOTO 46
END

IF ~~ THEN BEGIN 42
  SAY @63
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBRNGTS2")~ EXIT
END

IF ~Global("CbRangerDemon","GLOBAL",3)
Global("CbRangerTaught","AR3585",2)
Global("CbRangerTeachesSnares2","LOCALS",1)
Class(LastTalkedToBy(Myself),RANGER)~ THEN BEGIN 43
  SAY @64
  IF ~~ THEN DO ~SetGlobal("CbRangerDemon","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),10000)
AddJournalEntry(@98,INFO)~ EXIT
END

IF ~~ THEN BEGIN 44
  SAY @63
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBRNGTV1")~ EXIT
END

IF ~Global("CbRangerDemon","GLOBAL",3)
Global("CbRangerTaught","AR3585",2)
Global("CbRangerTeachesSurvive1","LOCALS",1)
Class(LastTalkedToBy(Myself),RANGER)~ THEN BEGIN 45
  SAY @65
  IF ~~ THEN DO ~SetGlobal("CbRangerDemon","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),10000)
AddJournalEntry(@103,INFO)~ EXIT
END

IF ~~ THEN BEGIN 46
  SAY @63
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBRNGTC1")~ EXIT
END

IF ~Global("CbRangerDemon","GLOBAL",3)
Global("CbRangerTaught","AR3585",2)
Global("CbRangerTeachesShots1","LOCALS",1)
Class(LastTalkedToBy(Myself),RANGER)~ THEN BEGIN 47
  SAY @66
  IF ~~ THEN DO ~SetGlobal("CbRangerDemon","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),10000)
AddJournalEntry(@104,INFO)~ EXIT
END

IF ~Global("CbRangerDemon","GLOBAL",4)
Global("CbRangerCapitalWeapon","GLOBAL",0)
Class(LastTalkedToBy(Myself),RANGER)~ THEN BEGIN 48
  SAY @67
  IF ~~ THEN REPLY @33 GOTO 50
  IF ~~ THEN REPLY @68 GOTO 49
END

IF ~~ THEN BEGIN 49
  SAY @69
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 50
  SAY @70
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51
  SAY @71
  IF ~~ THEN REPLY @72 GOTO 52
END

IF ~~ THEN BEGIN 52
  SAY @73
  IF ~~ THEN DO ~SetGlobal("CbRangerCapitalWeapon","GLOBAL",1)
GiveItemCreate("CBRNGax1",LastTalkedToBy(Myself),1,0,0)
AddJournalEntry(@105,QUEST)~ EXIT
END

IF ~Global("CbRangerCapitalWeapon","GLOBAL",1)
Class(LastTalkedToBy(Myself),RANGER)~ THEN BEGIN 53
  SAY @74
  IF ~HasItem("CBRNGax2",LastTalkedToBy(Myself))~ THEN REPLY @75 GOTO 55
  IF ~!HasItem("CBRNGax2",LastTalkedToBy(Myself))~ THEN REPLY @76 GOTO 54
END

IF ~~ THEN BEGIN 54
  SAY @77
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 55
  SAY @78
  IF ~~ THEN DO ~GiveItemCreate("CBRNGax3",LastTalkedToBy(Myself),1,0,0)
TakePartyItem("CBRNGax2")
DestroyItem("CBRNGax2")
SetGlobal("CbRangerCapitalWeapon","GLOBAL",2)
AddJournalEntry(@106,QUEST_DONE)
EraseJournalEntry(@105)~ GOTO 56
END

IF ~~ THEN BEGIN 56
  SAY @79
  IF ~LevelLT(LastTalkedToBy(Myself),24)~ THEN GOTO 57
  IF ~LevelGT(LastTalkedToBy(Myself),23)~ THEN GOTO 67
END

IF ~~ THEN BEGIN 57
  SAY @80
  IF ~~ THEN REPLY @81 GOTO 58
  IF ~~ THEN REPLY @82 GOTO 60
  IF ~~ THEN REPLY @83 GOTO 62
END

IF ~~ THEN BEGIN 58
  SAY @84
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBRNGTL1")~ EXIT
END

IF ~Global("CbRangerCapitalWeapon","GLOBAL",2)
Global("CbRangerTaught","AR3585",3)
Global("CbRangerTeachesStealth1","LOCALS",1)
Class(LastTalkedToBy(Myself),RANGER)~ THEN BEGIN 59
  SAY @85
  IF ~~ THEN DO ~SetGlobal("CbRangerCapitalWeapon","GLOBAL",3)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@107,INFO)~ EXIT
END

IF ~~ THEN BEGIN 60
  SAY @84
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBRNGTK1")~ EXIT
END

IF ~Global("CbRangerCapitalWeapon","GLOBAL",2)
Global("CbRangerTaught","AR3585",3)
Global("CbRangerTeachesCaltrops1","LOCALS",1)
Class(LastTalkedToBy(Myself),RANGER)~ THEN BEGIN 61
  SAY @86
  IF ~~ THEN DO ~SetGlobal("CbRangerCapitalWeapon","GLOBAL",3)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@108,INFO)~ EXIT
END

IF ~~ THEN BEGIN 62
  SAY @84
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBRNGTV2")~ EXIT
END

IF ~Global("CbRangerCapitalWeapon","GLOBAL",2)
Global("CbRangerTaught","AR3585",3)
Global("CbRangerTeachesSurvive2","LOCALS",1)
Class(LastTalkedToBy(Myself),RANGER)~ THEN BEGIN 63
  SAY @87
  IF ~~ THEN DO ~SetGlobal("CbRangerCapitalWeapon","GLOBAL",3)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@109,INFO)~ EXIT
END

IF ~!Class(LastTalkedToBy(Myself),RANGER)~ THEN BEGIN 64
  SAY @88
  IF ~~ THEN EXIT
END

IF ~OR(2)
GlobalGT("CbTumblingWizardWantsResearch","GLOBAL",0)
GlobalGT("CbElvenSorceressWantsSeeds","GLOBAL",0)~ THEN BEGIN 65
  SAY @88
  IF ~~ THEN EXIT
END

IF ~GlobalGT("CbRangerCapitalWeapon","GLOBAL",2)~ THEN BEGIN 66
  SAY @89
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 67
  SAY @90
  IF ~~ THEN REPLY @81 GOTO 58//62
  IF ~~ THEN REPLY @82 GOTO 60
  IF ~~ THEN REPLY @83 GOTO 62//58
  IF ~~ THEN REPLY @91 GOTO 68
END

IF ~~ THEN BEGIN 68
  SAY @92
  IF ~RandomNumGT(100,90)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBRNGTUP")~ EXIT
  IF ~RandomNumLT(100,91)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBRNGTUF")~ EXIT
END

IF ~Global("CbRangerCapitalWeapon","GLOBAL",2)
Global("CbRangerTeachTeach","AR3585",3)
Global("CbRangerUseItem","LOCALS",1)
Class(LastTalkedToBy(Myself),RANGER)~ THEN BEGIN 69
  SAY @93
  IF ~~ THEN DO ~SetGlobal("CbRangerCapitalWeapon","GLOBAL",3)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@110,INFO)~ EXIT
END

IF ~Global("CbRangerCapitalWeapon","GLOBAL",2)
Global("CbRangerTeachTeach","AR3585",3)
Global("CbRangerUseItemFail","LOCALS",1)
Class(LastTalkedToBy(Myself),RANGER)~ THEN BEGIN 70
  SAY @94
  IF ~~ THEN DO ~SetGlobal("CbRangerCapitalWeapon","GLOBAL",3)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@111,INFO)~ EXIT
END

IF ~OR(5)
GlobalGT("CbMasterBardWantsHarp","GLOBAL",0)
GlobalGT("CbDruidTeachingSeeds","GLOBAL",0)
GlobalGT("CbTumblingWizardWantsResearch","GLOBAL",0)
GlobalGT("CbElvenSorceressWantsSeeds","GLOBAL",0)
GlobalGT("CbNorthmenWantStaff","GLOBAL",0)~ THEN BEGIN 71
  SAY @95
  IF ~~ THEN EXIT
END
