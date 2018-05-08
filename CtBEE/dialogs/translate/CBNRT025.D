BEGIN ~CBNRT025~

IF ~~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXTERN ~CBNRT020~ 1
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXTERN ~CBNRT020~ 2
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~Dead("Rayic")
OR(2)
Global("SPRITE_IS_DEADFaldorn","GLOBAL",1)
Global("SPRITE_IS_DEADcefaldor","GLOBAL",1)~ THEN DO ~SetGlobal("CbDierdreHasShaman","GLOBAL",1)
SetGlobal("CbNorthmenWantStaff","GLOBAL",2)
AddJournalEntry(@57,QUEST)~ EXIT
  IF ~Dead("Rayic")
OR(2)
Global("SPRITE_IS_DEADFaldorn","GLOBAL",0)
Global("SPRITE_IS_DEADcefaldor","GLOBAL",0)~ THEN DO ~SetGlobal("CbFaldornHasShaman","GLOBAL",1)
SetGlobal("CbNorthmenWantStaff","GLOBAL",2)
AddJournalEntry(@57,QUEST)~ EXIT
  IF ~!Dead("Rayic")~ THEN DO ~SetGlobal("CbDockWizardHasShaman","GLOBAL",1)
SetGlobal("CbNorthmenWantStaff","GLOBAL",2)
AddJournalEntry(@57,QUEST)~ EXIT
END

IF ~GlobalLT("CbNorthmenWantStaff","GLOBAL",3)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)
Global("CbBarbariansTaught","AR3591",0)~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @7
  IF ~PartyHasItem("CBNRTSTF")~ THEN REPLY @8 EXTERN ~CBNRT020~ 8
  IF ~!PartyHasItem("CBNRTSTF")~ THEN REPLY @9 EXTERN ~CBNRT020~ 4
  IF ~!PartyHasItem("CBNRTSTF")~ THEN REPLY @10 EXTERN ~CBNRT020~ 5
END

IF ~~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @12
  IF ~~ THEN EXTERN ~CBNRT020~ 9
END

IF ~Global("CbNorthmenWantStaff","GLOBAL",4)
Global("CbNorthmenTaught","AR3591",1)
Global("CbNorthmentTeachSnares1","AR3591",1)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 9
  SAY @13
  IF ~~ THEN DO ~SetGlobal("CbNorthmenWantStaff","GLOBAL",5)
AddJournalEntry(@58,INFO)
AddXPObject(LastTalkedToBy(Myself),10000)~ GOTO 12
END

IF ~Global("CbNorthmenWantStaff","GLOBAL",4)
Global("CbNorthmenTaught","AR3591",1)
Global("CbNorthmentTeachPower","AR3591",1)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 10
  SAY @14
  IF ~~ THEN DO ~SetGlobal("CbNorthmenWantStaff","GLOBAL",5)
AddJournalEntry(@59,INFO)
AddXPObject(LastTalkedToBy(Myself),10000)~ GOTO 12
END

IF ~Global("CbNorthmenWantStaff","GLOBAL",4)
Global("CbNorthmenTaught","AR3591",1)
Global("CbNorthmentTeachEnrage","AR3591",1)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 11
  SAY @14
  IF ~~ THEN DO ~SetGlobal("CbNorthmenWantStaff","GLOBAL",5)
AddJournalEntry(@60,INFO)
AddXPObject(LastTalkedToBy(Myself),10000)~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 14
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @18
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
  SAY @19
  IF ~~ THEN EXTERN ~CBNRT020~ 13
END

IF ~~ THEN BEGIN 15
  SAY @20
  IF ~~ THEN REPLY @21 EXTERN ~CBNRT020~ 15
  IF ~~ THEN REPLY @22 EXTERN ~CBNRT020~ 17
  IF ~~ THEN REPLY @23 EXTERN ~CBNRT020~ 16
END

IF ~Global("CbNorthmenTeachingDemon","GLOBAL",1)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 16
  SAY @24
  IF ~Global("CbNorthmenDemonClue","AR3591",0)~ THEN REPLY @25 DO ~IncrementGlobal("CbNorthmenDemonClue","AR3591",1)~ EXTERN ~CBNRT020~ 21
  IF ~Global("CbNorthmenDemonClue","AR3591",1)~ THEN REPLY @25 DO ~IncrementGlobal("CbNorthmenDemonClue","AR3591",1)~ EXTERN ~CBNRT020~ 22
  IF ~Global("CbNorthmenDemonClue","AR3591",2)~ THEN REPLY @25 DO ~IncrementGlobal("CbNorthmenDemonClue","AR3591",1)~ EXTERN ~CBNRT020~ 23
  IF ~Global("CbNorthmenDemonClue","AR3591",3)~ THEN REPLY @25 DO ~IncrementGlobal("CbNorthmenDemonClue","AR3591",1)~ EXTERN ~CBNRT020~ 24
  IF ~GlobalGT("CbNorthmenDemonClue","AR3591",3)~ THEN REPLY @25 DO ~IncrementGlobal("CbNorthmenDemonClue","AR3591",1)~ EXTERN ~CBNRT020~ 25
END

IF ~~ THEN BEGIN 17
  SAY @26
  IF ~~ THEN EXIT
END

IF ~Global("CbNorthmenTeachingDemon","GLOBAL",2)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 18
  SAY @27
  IF ~~ THEN DO ~SetGlobal("CbNorthmenTeachingDemon","GLOBAL",3)~ EXIT
END

IF ~Global("CbNorthmenTeachingDemon","GLOBAL",3)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 19
  SAY @28
  IF ~~ THEN EXIT
END

IF ~Global("CbNorthmenTeachingDemon","GLOBAL",4)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 20
  SAY @29
  IF ~Global("CbElvenDemonBanished","GLOBAL",1)~ THEN REPLY @30 GOTO 21
  IF ~Global("CbElvenDemonDestroyed","GLOBAL",1)~ THEN REPLY @31 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @34
  IF ~~ THEN DO ~SetGlobal("CbNorthmenTeachingDemon","GLOBAL",5)
AddJournalEntry(@61,QUEST_DONE)
EraseJournalEntry(@56)~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @37 GOTO 25
  IF ~LevelLT(LastTalkedToBy(Myself),16)~ THEN REPLY @38 GOTO 26
  IF ~LevelGT(LastTalkedToBy(Myself),15)~ THEN REPLY @38 GOTO 27
END

IF ~~ THEN BEGIN 24
  SAY @39
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBNRTTSV")~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY @39
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBNRTTWC")~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @39
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBNRTTDB")~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @39
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBNRTTGD")~ EXIT
END

IF ~Global("CbNorthmenTeachingDemon","GLOBAL",7)
Global("CbNorthmenTaught","AR3591",2)
Global("CbNorthmenCapitalWeapon","GLOBAL",0)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 28
  SAY @40
  IF ~~ THEN EXTERN ~CBNRT020~ 36
END

IF ~~ THEN BEGIN 29
  SAY @41
  IF ~~ THEN DO ~SetGlobal("CbNorthmenCapitalWeapon","GLOBAL",1)
GiveItemCreate("CBNRTHM1",LastTalkedToBy(Myself),1,0,0)
AddJournalEntry(@62,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY @42
  IF ~~ THEN DO ~GiveItemCreate("CBNRTH01",LastTalkedToBy(Myself),1,0,0)
TakePartyItem("CBNRTHMM")
DestroyItem("CBNRTHMM")
SetGlobal("CbNorthmenCapitalWeapon","GLOBAL",2)
AddJournalEntry(@63,QUEST_DONE)
EraseJournalEntry(@62)~ EXIT
END

IF ~Global("CbNorthmenCapitalWeapon","GLOBAL",2)
Global("CbNorthmenTaught","AR3591",2)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 31
  SAY @43
  IF ~~ THEN EXTERN ~CBNRT020~ 42
END

IF ~~ THEN BEGIN 32
  SAY @44
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBNRTTBF")~ EXIT
END

IF ~~ THEN BEGIN 33
  SAY @45
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBNRTTEC")~ EXIT
END

IF ~~ THEN BEGIN 34
  SAY @46
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBNRTTHD")~ EXIT
END

IF ~~ THEN BEGIN 35
  SAY @47
  IF ~RandomNumGT(100,90)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBNRTTUP")~ EXIT
  IF ~RandomNumLT(100,91)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBNRTTUF")~ EXIT
END

IF ~Global("CbNorthmenCapitalWeapon","GLOBAL",3)
Global("CbNorthmenTaught","AR3591",3)
Global("CbNorthmenUseItemPass","AR3591",1)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 36
  SAY @48
  IF ~~ THEN DO ~SetGlobal("CbNorthmenCapitalWeapon","GLOBAL",4)
AddJournalEntry(@64,INFO)
AddXPObject(LastTalkedToBy(Myself),40000)~ EXIT
END

IF ~Global("CbNorthmenCapitalWeapon","GLOBAL",3)
Global("CbNorthmenTaught","AR3591",3)
Global("CbNorthmenUseItemFail","AR3591",1)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 37
  SAY @49
  IF ~~ THEN DO ~SetGlobal("CbNorthmenCapitalWeapon","GLOBAL",4)
AddJournalEntry(@65,INFO)
AddXPObject(LastTalkedToBy(Myself),40000)~ EXIT
END

IF ~Global("CbNorthmenCapitalWeapon","GLOBAL",3)
Global("CbNorthmenTaught","AR3591",3)
Global("CbNorthmentTeachEnrage2","AR3591",1)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 38
  SAY @50
  IF ~~ THEN DO ~SetGlobal("CbNorthmenCapitalWeapon","GLOBAL",4)
AddJournalEntry(@66,INFO)
AddXPObject(LastTalkedToBy(Myself),40000)~ EXIT
END

IF ~Global("CbNorthmenCapitalWeapon","GLOBAL",3)
Global("CbNorthmenTaught","AR3591",3)
Global("CbNorthmentTeachHardiness","AR3591",1)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 39
  SAY @51
  IF ~~ THEN DO ~SetGlobal("CbNorthmenCapitalWeapon","GLOBAL",4)
AddJournalEntry(@67,INFO)
AddXPObject(LastTalkedToBy(Myself),40000)~ EXIT
END

IF ~Global("CbNorthmenCapitalWeapon","GLOBAL",3)
Global("CbNorthmenTaught","AR3591",3)
Global("CbNorthmentTeachBlindness","AR3591",1)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 40
  SAY @52
  IF ~~ THEN DO ~SetGlobal("CbNorthmenCapitalWeapon","GLOBAL",4)
AddJournalEntry(@68,INFO)
AddXPObject(LastTalkedToBy(Myself),40000)~ EXIT
END

IF ~Global("CbNorthmenCapitalWeapon","GLOBAL",4)~ THEN BEGIN 41
  SAY @53
  IF ~~ THEN EXIT
END

IF ~OR(2)
!Class(LastTalkedToBy(Myself),FIGHTER)
!IsGabber(Player1)~ THEN BEGIN 42
  SAY @54
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
Kit(Player1,0)~ THEN BEGIN 43
  SAY @55
  IF ~~ THEN EXIT
END

IF ~OR(5)
GlobalGT("CbMasterBardWantsHarp","GLOBAL",0)
GlobalGT("CbRangerDeadDear","GLOBAL",0)
GlobalGT("CbDruidTeachingSeeds","GLOBAL",0)
GlobalGT("CbTumblingWizardWantsResearch","GLOBAL",0)
GlobalGT("CbElvenSorceressWantsSeeds","GLOBAL",0)~ THEN BEGIN 44
  SAY @54
  IF ~~ THEN EXIT
END

IF ~Global("CbNorthmenWantStaff","GLOBAL",5)
Global("CbNorthmenTeachingDemon","GLOBAL",0)
Global("CbNorthmenTaught","AR3591",1)
IsGabber(Player1)
Class(Player1,FIGHTER)
Kit(Player1,0)~ THEN BEGIN 45
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 14
  IF ~~ THEN REPLY @17 GOTO 13
END
