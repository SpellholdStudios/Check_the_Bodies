BEGIN ~CBEM25T2~

IF ~GlobalLT("CbElvenSorceressWantsSeeds","GLOBAL",3)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("CbElvenSorceressWantsSeeds","GLOBAL",3)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 1
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
StartCutScene("CBEM25M1")~ EXIT
END

IF ~Global("CbElvenSorceressWantsSeeds","GLOBAL",4)
Global("CbElvenSorceressTeach","AR2500",1)
Global("CbElvenSorceressMemory","LOCALS",1)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN DO ~SetGlobal("CbElvenSorceressWantsSeeds","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),5000)
AddJournalEntry(@40,INFO)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBEM25S1")~ EXIT
END

IF ~Global("CbElvenSorceressWantsSeeds","GLOBAL",4)
Global("CbElvenSorceressTeach","AR2500",1)
Global("CbElvenSorceressSpeed","LOCALS",1)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN DO ~SetGlobal("CbElvenSorceressWantsSeeds","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),5000)
AddJournalEntry(@41,INFO)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBEM25E1")~ EXIT
END

IF ~Global("CbElvenSorceressWantsSeeds","GLOBAL",4)
Global("CbElvenSorceressTeach","AR2500",1)
Global("CbElvenSorceressEnchant","LOCALS",1)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 8
  SAY @12
  IF ~~ THEN DO ~SetGlobal("CbElvenSorceressWantsSeeds","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),5000)
AddJournalEntry(@42,INFO)~ EXIT
END

IF ~Global("CbElvenSorceressWantsSeeds","GLOBAL",5)
Global("CbElvenSorceressDemon","GLOBAL",0)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 9
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @15 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @17
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @18
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @19
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @22 GOTO 17
  IF ~~ THEN REPLY @23 GOTO 16
END

IF ~~ THEN BEGIN 15
  SAY @24
  IF ~~ THEN REPLY @22 GOTO 17
  IF ~~ THEN REPLY @23 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @25
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @26
  IF ~~ THEN DO ~SetGlobal("CbElvenSorceressDemon","GLOBAL",1)
AddJournalEntry(@43,QUEST)~ EXIT
END

IF ~Global("CbElvenSorceressDemon","GLOBAL",1)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 18
  SAY @27
  IF ~Global("CbElvenDemonClue","LOCALS",0)~ THEN REPLY @28 DO ~IncrementGlobal("CbElvenDemonClue","LOCALS",1)~ GOTO 19
  IF ~Global("CbElvenDemonClue","LOCALS",1)~ THEN REPLY @28 DO ~IncrementGlobal("CbElvenDemonClue","LOCALS",1)~ GOTO 20
  IF ~Global("CbElvenDemonClue","LOCALS",2)~ THEN REPLY @28 DO ~IncrementGlobal("CbElvenDemonClue","LOCALS",1)~ GOTO 21
  IF ~Global("CbElvenDemonClue","LOCALS",3)~ THEN REPLY @28 DO ~IncrementGlobal("CbElvenDemonClue","LOCALS",1)~ GOTO 22
  IF ~GlobalGT("CbElvenDemonClue","LOCALS",3)~ THEN REPLY @28 DO ~IncrementGlobal("CbElvenDemonClue","LOCALS",1)~ GOTO 23
END

IF ~~ THEN BEGIN 19
  SAY @29
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 20
  SAY @30
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 21
  SAY @31
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 22
  SAY @32
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 23
  SAY @33
  IF ~~ THEN GOTO 26
END

IF ~Global("CbElvenSorceressDemon","GLOBAL",2)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 24
  SAY @34
  IF ~Global("CbElvenDemonBanished","GLOBAL",1)~ THEN REPLY @35 GOTO 25
  IF ~Global("CbElvenDemonDestroyed","GLOBAL",1)~ THEN REPLY @36 GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @37
  IF ~~ THEN DO ~SetGlobal("CbElvenSorceressDemon","GLOBAL",3)
AddJournalEntry(@44,QUEST_DONE)
EraseJournalEntry(@43)~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @38
  IF ~~ THEN EXIT
END

IF ~OR(2)
	!Class(LastTalkedToBy(Myself),SORCERER)
	!Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 27
  SAY @39
  IF ~~ THEN EXIT
END

IF ~OR(5)
GlobalGT("CbMasterBardWantsHarp","GLOBAL",0)
GlobalGT("CbRangerDeadDear","GLOBAL",0)
GlobalGT("CbDruidTeachingSeeds","GLOBAL",0)
GlobalGT("CbTumblingWizardWantsResearch","GLOBAL",0)
GlobalGT("CbNorthmenWantStaff","GLOBAL",0)~ THEN BEGIN 28
  SAY @39
  IF ~~ THEN EXIT
END
