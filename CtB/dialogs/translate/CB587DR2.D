BEGIN ~CB587DR2~

IF ~GlobalLT("CbDruidTeachingSeeds","GLOBAL",3)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("CbDruidTeachingSeeds","GLOBAL",3)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587TM1")~ EXIT
END

IF ~Global("CbDruidTeachingSeeds","GLOBAL",4)
Global("CbTrioDruidsTaught","AR3587",1)
Global("CbDruidMemoryOne","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingSeeds","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),5000)
AddJournalEntry(@56,INFO)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @7
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587TS1")~ EXIT
END

IF ~Global("CbDruidTeachingSeeds","GLOBAL",4)
Global("CbTrioDruidsTaught","AR3587",1)
Global("CbDruidCastSpeedOne","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 6
  SAY @9
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingSeeds","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),5000)
AddJournalEntry(@57,INFO)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @7
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587TGC")~ EXIT
END

IF ~Global("CbDruidTeachingSeeds","GLOBAL",4)
Global("CbTrioDruidsTaught","AR3587",1)
Global("CbDruidShapeshiftCat","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 8
  SAY @10
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingSeeds","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),5000)
AddJournalEntry(@58,INFO)~ EXIT
END

IF ~Global("CbDruidTeachingSeeds","GLOBAL",5)
Global("CbDruidTeachingDemon","GLOBAL",0)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 9
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @14
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @15
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @16
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @17
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~~ THEN REPLY @21 GOTO 16
END

IF ~~ THEN BEGIN 15
  SAY @22
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~~ THEN REPLY @21 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @23
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @24
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingDemon","GLOBAL",1)
AddJournalEntry(@55,QUEST)~ EXIT
END

IF ~Global("CbDruidTeachingDemon","GLOBAL",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 18
  SAY @25
  IF ~Global("CbDruidDemonClue","LOCALS",0)~ THEN REPLY @26 DO ~IncrementGlobal("CbDruidDemonClue","LOCALS",1)~ GOTO 19
  IF ~Global("CbDruidDemonClue","LOCALS",1)~ THEN REPLY @26 DO ~IncrementGlobal("CbDruidDemonClue","LOCALS",1)~ GOTO 20
  IF ~Global("CbDruidDemonClue","LOCALS",2)~ THEN REPLY @26 DO ~IncrementGlobal("CbDruidDemonClue","LOCALS",1)~ GOTO 21
  IF ~Global("CbDruidDemonClue","LOCALS",3)~ THEN REPLY @26 DO ~IncrementGlobal("CbDruidDemonClue","LOCALS",1)~ GOTO 22
  IF ~GlobalGT("CbDruidDemonClue","LOCALS",3)~ THEN REPLY @26 DO ~IncrementGlobal("CbDruidDemonClue","LOCALS",1)~ GOTO 23
END

IF ~~ THEN BEGIN 19
  SAY @27
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 20
  SAY @28
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 21
  SAY @29
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 22
  SAY @30
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 23
  SAY @31
  IF ~~ THEN GOTO 26
END

IF ~Global("CbDruidTeachingDemon","GLOBAL",2)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 24
  SAY @32
  IF ~Global("CbElvenDemonBanished","GLOBAL",1)~ THEN REPLY @33 GOTO 25
  IF ~Global("CbElvenDemonDestroyed","GLOBAL",1)~ THEN REPLY @34 GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @35
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingDemon","GLOBAL",3)
AddJournalEntry(@59,QUEST_DONE)
EraseJournalEntry(@55)~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @36
  IF ~~ THEN EXIT
END

IF ~!Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 27
  SAY @37
  IF ~~ THEN EXIT
END

IF ~OR(5)
GlobalGT("CbMasterBardWantsHarp","GLOBAL",0)
GlobalGT("CbRangerDeadDear","GLOBAL",0)
GlobalGT("CbTumblingWizardWantsResearch","GLOBAL",0)
GlobalGT("CbElvenSorceressWantsSeeds","GLOBAL",0)
GlobalGT("CbNorthmenWantStaff","GLOBAL",0)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 28
  SAY @37
  IF ~~ THEN EXIT
END

IF ~GlobalLT("CbDruidTeachingSeeds","GLOBAL",3)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 29
  SAY @38
  IF ~~ THEN EXIT
END

IF ~Global("CbDruidTeachingSeeds","GLOBAL",3)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 30
  SAY @2
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @39
  IF ~~ THEN REPLY @4 GOTO 32
  IF ~~ THEN REPLY @5 GOTO 34
  IF ~~ THEN REPLY @6 GOTO 36
END

IF ~~ THEN BEGIN 32
  SAY @40
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587TM1")~ EXIT
END

IF ~Global("CbDruidTeachingSeeds","GLOBAL",4)
Global("CbTrioDruidsTaught","AR3587",1)
Global("CbDruidMemoryOne","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 33
  SAY @41
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingSeeds","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),5000)
AddJournalEntry(@56,INFO)~ EXIT
END

IF ~~ THEN BEGIN 34
  SAY @40
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587TS1")~ EXIT
END

IF ~Global("CbDruidTeachingSeeds","GLOBAL",4)
Global("CbTrioDruidsTaught","AR3587",1)
Global("CbDruidCastSpeedOne","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 35
  SAY @42
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingSeeds","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),5000)
AddJournalEntry(@57,INFO)~ EXIT
END

IF ~~ THEN BEGIN 36
  SAY @40
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587TGC")~ EXIT
END

IF ~Global("CbDruidTeachingSeeds","GLOBAL",4)
Global("CbTrioDruidsTaught","AR3587",1)
Global("CbDruidShapeshiftCat","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 37
  SAY @43
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingSeeds","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),5000)
AddJournalEntry(@58,INFO)~ EXIT
END

IF ~Global("CbDruidTeachingSeeds","GLOBAL",5)
Global("CbDruidTeachingDemon","GLOBAL",0)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 38
  SAY @44
  IF ~~ THEN REPLY @12 GOTO 40
  IF ~~ THEN REPLY @13 GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @45
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40
  SAY @15
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY @16
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @46
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY @47
  IF ~~ THEN REPLY @19 GOTO 44
  IF ~~ THEN REPLY @20 GOTO 46
  IF ~~ THEN REPLY @21 GOTO 45
END

IF ~~ THEN BEGIN 44
  SAY @22
  IF ~~ THEN REPLY @20 GOTO 46
  IF ~~ THEN REPLY @21 GOTO 45
END

IF ~~ THEN BEGIN 45
  SAY @48
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY @49
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingDemon","GLOBAL",1)
AddJournalEntry(@55,QUEST)~ EXIT
END

IF ~Global("CbDruidTeachingDemon","GLOBAL",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 47
  SAY @25
  IF ~Global("CbDruidDemonClue","LOCALS",0)~ THEN REPLY @26 DO ~IncrementGlobal("CbDruidDemonClue","LOCALS",1)~ GOTO 48
  IF ~Global("CbDruidDemonClue","LOCALS",1)~ THEN REPLY @26 DO ~IncrementGlobal("CbDruidDemonClue","LOCALS",1)~ GOTO 49
  IF ~Global("CbDruidDemonClue","LOCALS",2)~ THEN REPLY @26 DO ~IncrementGlobal("CbDruidDemonClue","LOCALS",1)~ GOTO 50
  IF ~Global("CbDruidDemonClue","LOCALS",3)~ THEN REPLY @26 DO ~IncrementGlobal("CbDruidDemonClue","LOCALS",1)~ GOTO 51
  IF ~GlobalGT("CbDruidDemonClue","LOCALS",3)~ THEN REPLY @26 DO ~IncrementGlobal("CbDruidDemonClue","LOCALS",1)~ GOTO 52
END

IF ~~ THEN BEGIN 48
  SAY @50
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 49
  SAY @28
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 50
  SAY @29
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 51
  SAY @51
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 52
  SAY @52
  IF ~~ THEN GOTO 55
END

IF ~Global("CbDruidTeachingDemon","GLOBAL",2)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 53
  SAY @32
  IF ~Global("CbElvenDemonBanished","GLOBAL",1)~ THEN REPLY @33 GOTO 54
  IF ~Global("CbElvenDemonDestroyed","GLOBAL",1)~ THEN REPLY @34 GOTO 54
END

IF ~~ THEN BEGIN 54
  SAY @53
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingDemon","GLOBAL",3)
AddJournalEntry(@59,QUEST_DONE)
EraseJournalEntry(@55)~ EXIT
END

IF ~~ THEN BEGIN 55
  SAY @54
  IF ~~ THEN EXIT
END

IF ~!Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 56
  SAY @37
  IF ~~ THEN EXIT
END

IF ~OR(5)
GlobalGT("CbMasterBardWantsHarp","GLOBAL",0)
GlobalGT("CbRangerDeadDear","GLOBAL",0)
GlobalGT("CbTumblingWizardWantsResearch","GLOBAL",0)
GlobalGT("CbElvenSorceressWantsSeeds","GLOBAL",0)
GlobalGT("CbNorthmenWantStaff","GLOBAL",0)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 57
  SAY @37
  IF ~~ THEN EXIT
END
