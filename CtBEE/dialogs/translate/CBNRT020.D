BEGIN ~CBNRT020~

IF ~Global("CbNorthmenWantStaff","GLOBAL",0)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)
Global("CbBarbariansTaught","AR3591",0)
!GlobalGT("CbMasterBardWantsHarp","GLOBAL",0)
!GlobalGT("CbRangerDeadDear","GLOBAL",0)
!GlobalGT("CbDruidTeachingSeeds","GLOBAL",0)
!GlobalGT("CbTumblingWizardWantsResearch","GLOBAL",0)
!GlobalGT("CbElvenSorceressWantsSeeds","GLOBAL",0)
!GlobalGT("CbNorthmenWantStaff","GLOBAL",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXTERN ~CBNRT025~ 0
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXTERN ~CBNRT025~ 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXTERN ~CBNRT025~ 3
END

IF ~Global("CbNorthmenWantStaff","GLOBAL",2)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)
Global("CbBarbariansTaught","AR3591",0)~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXTERN ~CBNRT025~ 6
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @9
  IF ~~ THEN DO ~TakePartyItem("CBNRTSTF")
DestroyItem("CBNRTSTF")
SetGlobal("CbNorthmenWantStaff","GLOBAL",3)
AddexperienceParty(20000)
EraseJournalEntry(@61)
AddJournalEntry(@60,QUEST_DONE)~ EXTERN ~CBNRT025~ 7
END

IF ~~ THEN BEGIN 9
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @12 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 12
END

IF ~~ THEN BEGIN 10
  SAY @14
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBNRTTST")~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @14
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBNRTTPA")~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @14
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBNRTTEB")~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @15
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @16
  IF ~~ THEN EXTERN ~CBNRT025~ 15
END

IF ~~ THEN BEGIN 15
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 18
  IF ~~ THEN REPLY @19 GOTO 19
END

IF ~~ THEN BEGIN 16
  SAY @20
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 17
  SAY @21
  IF ~~ THEN DO ~SetGlobal("CbNorthmenTeachingDemon","GLOBAL",1)
AddJournalEntry(@62,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @21
  IF ~~ THEN DO ~SetGlobal("CbNorthmenTeachingDemon","GLOBAL",1)
AddJournalEntry(@62,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @20
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @21
  IF ~~ THEN DO ~SetGlobal("CbNorthmenTeachingDemon","GLOBAL",1)
AddJournalEntry(@62,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @22
  IF ~~ THEN EXTERN ~CBNRT025~ 17
END

IF ~~ THEN BEGIN 22
  SAY @23
  IF ~~ THEN EXTERN ~CBNRT025~ 17
END

IF ~~ THEN BEGIN 23
  SAY @24
  IF ~~ THEN EXTERN ~CBNRT025~ 17
END

IF ~~ THEN BEGIN 24
  SAY @25
  IF ~~ THEN EXTERN ~CBNRT025~ 17
END

IF ~~ THEN BEGIN 25
  SAY @26
  IF ~~ THEN EXTERN ~CBNRT025~ 17
END

IF ~Global("CbNorthmenTeachingDemon","GLOBAL",2)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 26
  SAY @27
  IF ~~ THEN DO ~SetGlobal("CbNorthmenTeachingDemon","GLOBAL",3)~ EXIT
END

IF ~Global("CbNorthmenTeachingDemon","GLOBAL",3)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 27
  SAY @28
  IF ~~ THEN EXIT
END

IF ~Global("CbNorthmenTeachingDemon","GLOBAL",4)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 28
  SAY @29
  IF ~Global("CbElvenDemonBanished","GLOBAL",1)~ THEN REPLY @30 GOTO 29
  IF ~Global("CbElvenDemonDestroyed","GLOBAL",1)~ THEN REPLY @31 GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @34
  IF ~~ THEN DO ~SetGlobal("CbNorthmenTeachingDemon","GLOBAL",5)
AddJournalEntry(@63,QUEST_DONE)
EraseJournalEntry(@62)~ EXIT
END

IF ~Global("CbNorthmenTeachingDemon","GLOBAL",5)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 31
  SAY @35
  IF ~~ THEN EXTERN ~CBNRT025~ 23
END

IF ~Global("CbNorthmenTeachingDemon","GLOBAL",6)
Global("CbNorthmenTaught","AR3591",2)
Global("CbNorthmentTeachSurvival","AR3591",1)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 32
  SAY @36
  IF ~~ THEN DO ~SetGlobal("CbNorthmenTeachingDemon","GLOBAL",7)
AddJournalEntry(@64,INFO)
AddXPObject(LastTalkedToBy(Myself),20000)~ EXIT
END

IF ~Global("CbNorthmenTeachingDemon","GLOBAL",6)
Global("CbNorthmenTaught","AR3591",2)
Global("CbNorthmentTeachWarCry","AR3591",1)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 33
  SAY @37
  IF ~~ THEN DO ~SetGlobal("CbNorthmenTeachingDemon","GLOBAL",7)
AddJournalEntry(@65,INFO)
AddXPObject(LastTalkedToBy(Myself),20000)~ EXIT
END

IF ~Global("CbNorthmenTeachingDemon","GLOBAL",6)
Global("CbNorthmenTaught","AR3591",2)
Global("CbNorthmentTeachDeathBlow","AR3591",1)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 34
  SAY @38
  IF ~~ THEN DO ~SetGlobal("CbNorthmenTeachingDemon","GLOBAL",7)
AddJournalEntry(@66,INFO)
AddXPObject(LastTalkedToBy(Myself),20000)~ EXIT
END

IF ~Global("CbNorthmenTeachingDemon","GLOBAL",6)
Global("CbNorthmenTaught","AR3591",2)
Global("CbNorthmentTeachGreaterDeath","AR3591",1)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 35
  SAY @38
  IF ~~ THEN DO ~SetGlobal("CbNorthmenTeachingDemon","GLOBAL",7)
AddJournalEntry(@66,INFO)
AddXPObject(LastTalkedToBy(Myself),20000)~ EXIT
END

IF ~~ THEN BEGIN 36
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 38
  IF ~~ THEN REPLY @41 GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @42
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38
  SAY @43
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @44
  IF ~~ THEN REPLY @45 EXTERN ~CBNRT025~ 29
END

IF ~Global("CbNorthmenCapitalWeapon","GLOBAL",1)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 40
  SAY @46
  IF ~HasItem("CBNRTHMM",LastTalkedToBy(Myself))~ THEN REPLY @47 EXTERN ~CBNRT025~ 30
  IF ~!HasItem("CBNRTHMM",LastTalkedToBy(Myself))~ THEN REPLY @48 GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY @49
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42
  SAY @50
  IF ~LevelGT(LastTalkedToBy(Myself),23)~ THEN GOTO 44
  IF ~LevelLT(LastTalkedToBy(Myself),24)~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY @51
  IF ~~ THEN REPLY @52 EXTERN ~CBNRT025~ 32
  IF ~~ THEN REPLY @53 EXTERN ~CBNRT025~ 33
  IF ~~ THEN REPLY @54 EXTERN ~CBNRT025~ 34
END

IF ~~ THEN BEGIN 44
  SAY @55
  IF ~~ THEN REPLY @52 EXTERN ~CBNRT025~ 32
  IF ~~ THEN REPLY @53 EXTERN ~CBNRT025~ 33
  IF ~~ THEN REPLY @54 EXTERN ~CBNRT025~ 34
  IF ~~ THEN REPLY @56 EXTERN ~CBNRT025~ 35
END

IF ~Global("CbNorthmenCapitalWeapon","GLOBAL",4)~ THEN BEGIN 45
  SAY @57
  IF ~~ THEN EXIT
END

IF ~OR(2)
!Class(LastTalkedToBy(Myself),FIGHTER)
!IsGabber(Player1)~ THEN BEGIN 46
  SAY @58
  IF ~~ THEN EXIT
END

IF ~OR(5)
GlobalGT("CbMasterBardWantsHarp","GLOBAL",0)
GlobalGT("CbRangerDeadDear","GLOBAL",0)
GlobalGT("CbDruidTeachingSeeds","GLOBAL",0)
GlobalGT("CbTumblingWizardWantsResearch","GLOBAL",0)
GlobalGT("CbElvenSorceressWantsSeeds","GLOBAL",0)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 47
  SAY @59
  IF ~~ THEN EXIT
END

IF ~OR(5)
GlobalGT("CbMasterBardWantsHarp","GLOBAL",0)
GlobalGT("CbRangerDeadDear","GLOBAL",0)
GlobalGT("CbDruidTeachingSeeds","GLOBAL",0)
GlobalGT("CbTumblingWizardWantsResearch","GLOBAL",0)
GlobalGT("CbElvenSorceressWantsSeeds","GLOBAL",0)~ THEN BEGIN 48
  SAY @58
  IF ~~ THEN EXIT
END
