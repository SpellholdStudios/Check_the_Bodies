BEGIN ~CB587DR3~

IF ~GlobalLT("CbDruidTeachingDemon","GLOBAL",3)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("CbDruidTeachingDemon","GLOBAL",3)
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
StartCutScene("CB587TDR")~ EXIT
END

IF ~Global("CbDruidTeachingDemon","GLOBAL",4)
Global("CbTrioDruidsTaught","AR3587",2)
Global("CbDruidShapeshiftDragon","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingDemon","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),10000)
AddJournalEntry(@39,INFO)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @7
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587THL")~ EXIT
END

IF ~Global("CbDruidTeachingDemon","GLOBAL",4)
Global("CbTrioDruidsTaught","AR3587",2)
Global("CbDruidBonusToHeal","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 6
  SAY @9
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingDemon","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),10000)
AddJournalEntry(@40,INFO)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @7
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587TS2")~ EXIT
END

IF ~Global("CbDruidTeachingDemon","GLOBAL",4)
Global("CbTrioDruidsTaught","AR3587",2)
Global("CbDruidCastingSpeedTwo","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 8
  SAY @10
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingDemon","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),10000)
AddJournalEntry(@41,INFO)~ EXIT
END

IF ~Global("CbDruidTeachingDemon","GLOBAL",5)
Global("CbDruidCapitalWeapon","GLOBAL",0)
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
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @18
  IF ~~ THEN DO ~SetGlobal("CbDruidCapitalWeapon","GLOBAL",1)
GiveItemCreate("CBDRSTF1",LastTalkedToBy(Myself),1,0,0)
AddJournalEntry(@42,QUEST)~ EXIT
END

IF ~Global("CbDruidCapitalWeapon","GLOBAL",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 14
  SAY @19
  IF ~HasItem("CBDRSTF2",LastTalkedToBy(Myself))~ THEN REPLY @20 GOTO 16
  IF ~!HasItem("CBDRSTF2",LastTalkedToBy(Myself))~ THEN REPLY @21 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
  SAY @23
  IF ~~ THEN DO ~GiveItemCreate("CBDRSTF3",LastTalkedToBy(Myself),1,0,0)
TakePartyItem("CBDRSTF2")
DestroyItem("CBDRSTF2")
SetGlobal("CbDruidCapitalWeapon","GLOBAL",2)
AddJournalEntry(@43,QUEST_DONE)
EraseJournalEntry(@42)~ EXIT
END

IF ~!Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 17
  SAY @24
  IF ~~ THEN EXIT
END

IF ~OR(5)
GlobalGT("CbMasterBardWantsHarp","GLOBAL",0)
GlobalGT("CbRangerDeadDear","GLOBAL",0)
GlobalGT("CbTumblingWizardWantsResearch","GLOBAL",0)
GlobalGT("CbElvenSorceressWantsSeeds","GLOBAL",0)
GlobalGT("CbNorthmenWantStaff","GLOBAL",0)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 18
  SAY @24
  IF ~~ THEN EXIT
END

IF ~GlobalLT("CbDruidTeachingDemon","GLOBAL",3)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 19
  SAY @25
  IF ~~ THEN EXIT
END

IF ~Global("CbDruidTeachingDemon","GLOBAL",3)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 20
  SAY @26
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @27
  IF ~~ THEN REPLY @4 GOTO 22
  IF ~~ THEN REPLY @5 GOTO 24
  IF ~~ THEN REPLY @6 GOTO 26
END

IF ~~ THEN BEGIN 22
  SAY @28
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587TDR")~ EXIT
END

IF ~Global("CbDruidTeachingDemon","GLOBAL",4)
Global("CbTrioDruidsTaught","AR3587",2)
Global("CbDruidShapeshiftDragon","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 23
  SAY @29
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingDemon","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),10000)
AddJournalEntry(@39,INFO)~ EXIT
END

IF ~~ THEN BEGIN 24
  SAY @28
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587THL")~ EXIT
END

IF ~Global("CbDruidTeachingDemon","GLOBAL",4)
Global("CbTrioDruidsTaught","AR3587",2)
Global("CbDruidBonusToHeal","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 25
  SAY @30
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingDemon","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),10000)
AddJournalEntry(@40,INFO)~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @28
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB587TS2")~ EXIT
END

IF ~Global("CbDruidTeachingDemon","GLOBAL",4)
Global("CbTrioDruidsTaught","AR3587",2)
Global("CbDruidCastingSpeedTwo","LOCALS",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 27
  SAY @31
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingDemon","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),10000)
AddJournalEntry(@41,INFO)~ EXIT
END

IF ~Global("CbDruidTeachingDemon","GLOBAL",5)
Global("CbDruidCapitalWeapon","GLOBAL",0)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 28
  SAY @32
  IF ~~ THEN REPLY @12 GOTO 30
  IF ~~ THEN REPLY @13 GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @33
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 30
  SAY @34
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @35
  IF ~~ THEN DO ~SetGlobal("CbDruidCapitalWeapon","GLOBAL",1)
GiveItemCreate("CBDRSTF1",LastTalkedToBy(Myself),1,0,0)
AddJournalEntry(@42,QUEST)~ EXIT
END

IF ~Global("CbDruidCapitalWeapon","GLOBAL",1)
Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 33
  SAY @36
  IF ~HasItem("CBDRSTF2",LastTalkedToBy(Myself))~ THEN REPLY @20 GOTO 35
  IF ~!HasItem("CBDRSTF2",LastTalkedToBy(Myself))~ THEN REPLY @21 GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @37
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35
  SAY @38
  IF ~~ THEN DO ~GiveItemCreate("CBDRSTF3",LastTalkedToBy(Myself),1,0,0)
TakePartyItem("CBDRSTF2")
DestroyItem("CBDRSTF2")
SetGlobal("CbDruidCapitalWeapon","GLOBAL",2)
AddJournalEntry(@43,QUEST_DONE)
EraseJournalEntry(@42)~ EXIT
END

IF ~!Class(LastTalkedToBy(Myself),DRUID)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 36
  SAY @24
  IF ~~ THEN EXIT
END

IF ~OR(5)
GlobalGT("CbMasterBardWantsHarp","GLOBAL",0)
GlobalGT("CbRangerDeadDear","GLOBAL",0)
GlobalGT("CbTumblingWizardWantsResearch","GLOBAL",0)
GlobalGT("CbElvenSorceressWantsSeeds","GLOBAL",0)
GlobalGT("CbNorthmenWantStaff","GLOBAL",0)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 37
  SAY @24
  IF ~~ THEN EXIT
END
