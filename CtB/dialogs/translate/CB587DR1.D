BEGIN ~CB587DR1~

IF ~Global("CbDruidTeachingSeeds","GLOBAL",0)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)
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
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @12
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingSeeds","GLOBAL",1)
GiveItemCreate("CB587SED",LastTalkedToBy(Myself),1,0,0)
AddJournalEntry(@71,QUEST)~ EXIT
END

IF ~OR(2)
Global("CbDruidTeachingSeeds","GLOBAL",1)
Global("CbDruidTeachingSeeds","GLOBAL",2)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 9
  SAY @13
  IF ~!PartyHasItem("CB587SED")~ THEN REPLY @14 GOTO 10
  IF ~PartyHasItem("CB587SED")~ THEN REPLY @15 GOTO 11
  IF ~!PartyHasItem("CB587SED")
Global("CbDruidTeachingSeeds","GLOBAL",2)~ THEN REPLY @16 GOTO 12
  IF ~PartyHasItem("CB587SED")
Dead("cechalle")~ THEN REPLY @17 GOTO 28
END

IF ~~ THEN BEGIN 10
  SAY @18
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @20
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingSeeds","GLOBAL",3)
AddJournalEntry(@65,QUEST_DONE)
EraseJournalEntry(@64)~ EXIT
END

IF ~Global("CbDruidCapitalWeapon","GLOBAL",2)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 13
  SAY @21
  IF ~LevelGT(LastTalkedToBy(Myself),23)~ THEN GOTO 15
  IF ~LevelLT(LastTalkedToBy(Myself),24)~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @25 GOTO 20
END

IF ~~ THEN BEGIN 15
  SAY @26
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @25 GOTO 20
  IF ~~ THEN REPLY @27 GOTO 22
END

IF ~~ THEN BEGIN 16
  SAY @28
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587TM3")~ EXIT
END

IF ~Global("CbDruidCapitalWeapon","GLOBAL",3)
Global("CbTrioDruidsTaught","AR3587",3)
Global("CbDruidMemoryTwo","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 17
  SAY @29
  IF ~~ THEN DO ~SetGlobal("CbDruidCapitalWeapon","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@66,INFO)~ GOTO 25
END

IF ~~ THEN BEGIN 18
  SAY @30
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587TS3")~ EXIT
END

IF ~Global("CbDruidCapitalWeapon","GLOBAL",3)
Global("CbTrioDruidsTaught","AR3587",3)
Global("CbDruidDoubleSpells","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 19
  SAY @31
  IF ~~ THEN DO ~SetGlobal("CbDruidCapitalWeapon","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@67,INFO)~ GOTO 25
END

IF ~~ THEN BEGIN 20
  SAY @32
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587TSV")~ EXIT
END

IF ~Global("CbDruidCapitalWeapon","GLOBAL",3)
Global("CbTrioDruidsTaught","AR3587",3)
Global("CbDruidStormVengeance","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 21
  SAY @33
  IF ~~ THEN DO ~SetGlobal("CbDruidCapitalWeapon","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@68,INFO)~ GOTO 25
END

IF ~~ THEN BEGIN 22
  SAY @34
  IF ~RandomNumGT(100,90)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587TUP")~ EXIT
  IF ~RandomNumLT(100,91)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587TUF")~ EXIT
END

IF ~Global("CbDruidCapitalWeapon","GLOBAL",3)
Global("CbTrioDruidsTaught","AR3587",3)
Global("CbDruidUseItemPass","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 23
  SAY @35
  IF ~~ THEN DO ~SetGlobal("CbDruidCapitalWeapon","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@69,INFO)~ GOTO 25
END

IF ~Global("CbDruidCapitalWeapon","GLOBAL",3)
Global("CbTrioDruidsTaught","AR3587",3)
Global("CbDruidUseItemFail","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 24
  SAY @36
  IF ~~ THEN DO ~SetGlobal("CbDruidCapitalWeapon","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@70,INFO)~ GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @37
  IF ~~ THEN DO ~SetGlobal("CbDruidCapitalWeapon","GLOBAL",5)
SetGlobal("CbTrioDruidsTaught","AR3587",4)~ EXIT
END

IF ~!Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 26
  SAY @38
  IF ~~ THEN EXIT
END

IF ~OR(5)
GlobalGT("CbMasterBardWantsHarp","GLOBAL",0)
GlobalGT("CbRangerDeadDear","GLOBAL",0)
GlobalGT("CbTumblingWizardWantsResearch","GLOBAL",0)
GlobalGT("CbElvenSorceressWantsSeeds","GLOBAL",0)
GlobalGT("CbNorthmenWantStaff","GLOBAL",0)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 27
  SAY @39
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28
  SAY @40
  IF ~~ THEN EXIT
END

IF ~Global("CbDruidTeachingSeeds","GLOBAL",0)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)
!GlobalGT("CbTumblingWizardWantsResearch","GLOBAL",0)~ THEN BEGIN 29
  SAY @41
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @2
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @3
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @42
  IF ~~ THEN REPLY @5 GOTO 33
  IF ~~ THEN REPLY @6 GOTO 35
  IF ~~ THEN REPLY @7 GOTO 34
END

IF ~~ THEN BEGIN 33
  SAY @43
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34
  SAY @44
  IF ~~ THEN REPLY @5 GOTO 33
  IF ~~ THEN REPLY @6 GOTO 35
END

IF ~~ THEN BEGIN 35
  SAY @45
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY @46
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @47
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingSeeds","GLOBAL",1)
GiveItemCreate("CB587SED",LastTalkedToBy(Myself),1,0,0)
AddJournalEntry(@64,QUEST)~ EXIT
END

IF ~OR(2)
Global("CbDruidTeachingSeeds","GLOBAL",1)
Global("CbDruidTeachingSeeds","GLOBAL",2)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 38
  SAY @48
  IF ~!PartyHasItem("CB587SED")~ THEN REPLY @14 GOTO 39
  IF ~PartyHasItem("CB587SED")~ THEN REPLY @15 GOTO 40
  IF ~!PartyHasItem("CB587SED")
Global("CbDruidTeachingSeeds","GLOBAL",2)~ THEN REPLY @16 GOTO 41
  IF ~PartyHasItem("CB587SED")
Dead("cechalle")~ THEN REPLY @17 GOTO 57
END

IF ~~ THEN BEGIN 39
  SAY @49
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40
  SAY @50
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41
  SAY @51
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingSeeds","GLOBAL",3)
AddJournalEntry(@65,QUEST_DONE)
EraseJournalEntry(@64)~ EXIT
END

IF ~Global("CbDruidCapitalWeapon","GLOBAL",2)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 42
  SAY @52
  IF ~LevelGT(LastTalkedToBy(Myself),23)~ THEN GOTO 44
  IF ~LevelLT(LastTalkedToBy(Myself),24)~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 45
  IF ~~ THEN REPLY @24 GOTO 47
  IF ~~ THEN REPLY @25 GOTO 49
END

IF ~~ THEN BEGIN 44
  SAY @26
  IF ~~ THEN REPLY @23 GOTO 45
  IF ~~ THEN REPLY @24 GOTO 47
  IF ~~ THEN REPLY @25 GOTO 49
  IF ~~ THEN REPLY @27 GOTO 51
END

IF ~~ THEN BEGIN 45
  SAY @53
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587TM3")~ EXIT
END

IF ~Global("CbDruidCapitalWeapon","GLOBAL",3)
Global("CbTrioDruidsTaught","AR3587",3)
Global("CbDruidMemoryTwo","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 46
  SAY @54
  IF ~~ THEN DO ~SetGlobal("CbDruidCapitalWeapon","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@66,INFO)~ GOTO 54
END

IF ~~ THEN BEGIN 47
  SAY @55
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587TS3")~ EXIT
END

IF ~Global("CbDruidCapitalWeapon","GLOBAL",3)
Global("CbTrioDruidsTaught","AR3587",3)
Global("CbDruidDoubleSpells","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 48
  SAY @56
  IF ~~ THEN DO ~SetGlobal("CbDruidCapitalWeapon","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@67,INFO)~ GOTO 54
END

IF ~~ THEN BEGIN 49
  SAY @57
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587TSV")~ EXIT
END

IF ~Global("CbDruidCapitalWeapon","GLOBAL",3)
Global("CbTrioDruidsTaught","AR3587",3)
Global("CbDruidStormVengeance","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 50
  SAY @58
  IF ~~ THEN DO ~SetGlobal("CbDruidCapitalWeapon","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@68,INFO)~ GOTO 54
END

IF ~~ THEN BEGIN 51
  SAY @59
  IF ~RandomNumGT(100,90)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587TUP")~ EXIT
  IF ~RandomNumLT(100,91)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587TUF")~ EXIT
END

IF ~Global("CbDruidCapitalWeapon","GLOBAL",3)
Global("CbTrioDruidsTaught","AR3587",3)
Global("CbDruidUseItemPass","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 52
  SAY @60
  IF ~~ THEN DO ~SetGlobal("CbDruidCapitalWeapon","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@69,INFO)~ GOTO 54
END

IF ~Global("CbDruidCapitalWeapon","GLOBAL",3)
Global("CbTrioDruidsTaught","AR3587",3)
Global("CbDruidUseItemFail","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 53
  SAY @61
  IF ~~ THEN DO ~SetGlobal("CbDruidCapitalWeapon","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@70,INFO)~ GOTO 54
END

IF ~~ THEN BEGIN 54
  SAY @62
  IF ~~ THEN DO ~SetGlobal("CbDruidCapitalWeapon","GLOBAL",5)
SetGlobal("CbTrioDruidsTaught","AR3587",4)~ EXIT
END

IF ~!Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 55
  SAY @38
  IF ~~ THEN EXIT
END

IF ~OR(5)
GlobalGT("CbMasterBardWantsHarp","GLOBAL",0)
GlobalGT("CbRangerDeadDear","GLOBAL",0)
GlobalGT("CbTumblingWizardWantsResearch","GLOBAL",0)
GlobalGT("CbElvenSorceressWantsSeeds","GLOBAL",0)
GlobalGT("CbNorthmenWantStaff","GLOBAL",0)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 56
  SAY @39
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 57
  SAY @63
  IF ~~ THEN EXIT
END
