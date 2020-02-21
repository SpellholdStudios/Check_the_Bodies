BEGIN ~CBEM25T1~

IF ~Global("CbElvenSorceressWantsSeeds","GLOBAL",0)
Class(LastTalkedToBy(Myself),MAGE_ALL)
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
  IF ~~ THEN DO ~SetGlobal("CbElvenSorceressWantsSeeds","GLOBAL",1)
GiveItemCreate("CBEM25SD",LastTalkedToBy(Myself),1,0,0)
AddJournalEntry(@40,QUEST)~ EXIT
END

IF ~OR(2)
Global("CbElvenSorceressWantsSeeds","GLOBAL",1)
Global("CbElvenSorceressWantsSeeds","GLOBAL",2)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 9
  SAY @13
  IF ~!PartyHasItem("CBEM25SD")~ THEN REPLY @14 GOTO 10
  IF ~PartyHasItem("CBEM25SD")~ THEN REPLY @15 GOTO 11
  IF ~!PartyHasItem("CBEM25SD")
Global("CbElvenSorceressWantsSeeds","GLOBAL",2)~ THEN REPLY @16 GOTO 12
  IF ~PartyHasItem("CBEM25SD")
Dead("vaelasa")~ THEN REPLY @17 GOTO 28
END

IF ~~ THEN BEGIN 10
  SAY @18
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBEM25LV")~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @20
  IF ~~ THEN DO ~SetGlobal("CbElvenSorceressWantsSeeds","GLOBAL",3)
AddJournalEntry(@41,QUEST_DONE)
EraseJournalEntry(@40)~ EXIT
END

IF ~Global("CbElvenSorceressWantsBlade","GLOBAL",2)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 13
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
StartCutScene("CBEM25M3")~ EXIT
END

IF ~Global("CbElvenSorceressWantsBlade","GLOBAL",3)
Global("CbElvenSorceressTeach","AR2500",3)
Global("CbElvenSorceressAdvMemory","LOCALS",1)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 17
  SAY @29
  IF ~~ THEN DO ~SetGlobal("CbElvenSorceressWantsBlade","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@42,INFO)~ GOTO 25
END

IF ~~ THEN BEGIN 18
  SAY @30
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBEM25DS")~ EXIT
END

IF ~Global("CbElvenSorceressWantsBlade","GLOBAL",3)
Global("CbElvenSorceressTeach","AR2500",3)
Global("CbElvenSorceressDoubleSpells","LOCALS",1)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 19
  SAY @31
  IF ~~ THEN DO ~SetGlobal("CbElvenSorceressWantsBlade","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@43,INFO)~ GOTO 25
END

IF ~~ THEN BEGIN 20
  SAY @32
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBEM25WR")~ EXIT
END

IF ~Global("CbElvenSorceressWantsBlade","GLOBAL",3)
Global("CbElvenSorceressTeach","AR2500",3)
Global("CbElvenSorceressRecall","LOCALS",1)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 21
  SAY @33
  IF ~~ THEN DO ~SetGlobal("CbElvenSorceressWantsBlade","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@44,INFO)~ GOTO 25
END

IF ~~ THEN BEGIN 22
  SAY @34
  IF ~RandomNumGT(100,90)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBEM25UP")~ EXIT
  IF ~RandomNumLT(100,91)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBEM25UF")~ EXIT
END

IF ~Global("CbElvenSorceressWantsBlade","GLOBAL",3)
Global("CbElvenSorceressTeach","AR2500",3)
Global("CbElvenSorceressUseItem","LOCALS",1)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 23
  SAY @35
  IF ~~ THEN DO ~SetGlobal("CbElvenSorceressWantsBlade","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@45,INFO)~ GOTO 25
END

IF ~Global("CbElvenSorceressWantsBlade","GLOBAL",3)
Global("CbElvenSorceressTeach","AR2500",3)
Global("CbElvenSorceressUseItem","LOCALS",2)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 24
  SAY @36
  IF ~~ THEN DO ~SetGlobal("CbElvenSorceressWantsBlade","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@46,INFO)~ GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @37
  IF ~~ THEN DO ~SetGlobal("CbElvenSorceressWantsBlade","GLOBAL",5)
SetGlobal("CbElvenSorceressTeach","AR2500",4)
AddJournalEntry(@47,INFO)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBEM25LV")~ EXIT
END

IF ~OR(2)
	!Class(LastTalkedToBy(Myself),SORCERER)
	!Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 26
  SAY @38
  IF ~~ THEN EXIT
END

IF ~OR(5)
GlobalGT("CbMasterBardWantsHarp","GLOBAL",0)
GlobalGT("CbRangerDeadDear","GLOBAL",0)
GlobalGT("CbDruidTeachingSeeds","GLOBAL",0)
GlobalGT("CbTumblingWizardWantsResearch","GLOBAL",0)
GlobalGT("CbNorthmenWantStaff","GLOBAL",0)~ THEN BEGIN 27
  SAY @38
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28
  SAY @39
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBEM25LV")~ EXIT
END
