BEGIN ~CBCWLTCH~

IF ~Global("CbTumblingWizardTaught","AR0709",0)
Global("CbTumblingWizardWantsResearch","GLOBAL",0)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)
!GlobalGT("CbMasterBardWantsHarp","GLOBAL",0)
!GlobalGT("CbRangerDeadDear","GLOBAL",0)
!GlobalGT("CbDruidTeachingSeeds","GLOBAL",0)
!GlobalGT("CbTumblingWizardWantsResearch","GLOBAL",0)
!GlobalGT("CbElvenSorceressWantsSeeds","GLOBAL",0)
!GlobalGT("CbNorthmenWantStaff","GLOBAL",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @13
  IF ~IsGabber(Player1)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP1Da")~ EXIT
  IF ~IsGabber(Player2)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP2Da")~ EXIT
  IF ~IsGabber(Player3)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP3Da")~ EXIT
  IF ~IsGabber(Player4)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP4Da")~ EXIT
  IF ~IsGabber(Player5)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP5Da")~ EXIT
  IF ~IsGabber(Player6)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP6Da")~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @11 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @18
  IF ~~ THEN REPLY @12 GOTO 3
  IF ~~ THEN REPLY @19 GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY @20
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 8
  SAY @21
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY @22
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~~ THEN REPLY @26 GOTO 11
  IF ~~ THEN REPLY @27 GOTO 13
END

IF ~~ THEN BEGIN 11
  SAY @28
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 13
END

IF ~~ THEN BEGIN 12
  SAY @29
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY @30
  IF ~IsGabber(Player1)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP1Db")~ EXIT
  IF ~IsGabber(Player2)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP2Db")~ EXIT
  IF ~IsGabber(Player3)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP3Db")~ EXIT
  IF ~IsGabber(Player4)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP4Db")~ EXIT
  IF ~IsGabber(Player5)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP5Db")~ EXIT
  IF ~IsGabber(Player6)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP6Db")~ EXIT
END

IF ~Global("CbTumblingWizardWantsResearch","GLOBAL",1)
Global("CbTumblingWizardTaught","AR0709",0)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 14
  SAY @31
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 15
  SAY @32
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @33
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @34
  IF ~~ THEN DO ~SetGlobal("CbTumblingWizardWantsResearch","GLOBAL",2)
AddJournalEntry(@138,QUEST)~ EXIT
END

IF ~Global("CbTumblingWizardWantsResearch","GLOBAL",2)
Global("CbTumblingWizardTaught","AR0709",0)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 18
  SAY @35
  IF ~PartyHasItem("CBCWRSCH")~ THEN REPLY @36 GOTO 21
  IF ~!PartyHasItem("CBCWRSCH")~ THEN REPLY @37 GOTO 20
  IF ~!PartyHasItem("CBCWRSCH")~ THEN REPLY @38 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @39
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 20
  SAY @40
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21
  SAY @41
  IF ~~ THEN DO ~TakePartyItem("CBCWRSCH")
SetGlobal("CbTumblingWizardWantsResearch","GLOBAL",3)~ GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @44 GOTO 25
  IF ~~ THEN REPLY @45 GOTO 27
END

IF ~~ THEN BEGIN 23
  SAY @46
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBCWTHM1")~ EXIT
END

IF ~Global("CbTumblingWizardWantsResearch","GLOBAL",4)
Global("CbTumblingWizardTaught","AR0709",1)
Global("CbTumblingWizardMemory","LOCALS",1)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 24
  SAY @47
  IF ~~ THEN DO ~SetGlobal("CbTumblingWizardWantsResearch","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),1000)
AddJournalEntry(@139,QUEST_DONE)
EraseJournalEntry(@138)~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY @48
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBCWTHS1")~ EXIT
END

IF ~Global("CbTumblingWizardWantsResearch","GLOBAL",4)
Global("CbTumblingWizardTaught","AR0709",1)
Global("CbTumblingWizardSpeed","LOCALS",1)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 26
  SAY @49
  IF ~~ THEN DO ~SetGlobal("CbTumblingWizardWantsResearch","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),1000)
AddJournalEntry(@140,QUEST_DONE)
EraseJournalEntry(@138)~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @50
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBCWTHE1")~ EXIT
END

IF ~Global("CbTumblingWizardWantsResearch","GLOBAL",4)
Global("CbTumblingWizardTaught","AR0709",1)
Global("CbTumblingWizardEnchant","LOCALS",1)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 28
  SAY @51
  IF ~~ THEN DO ~SetGlobal("CbTumblingWizardWantsResearch","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),1000)
AddJournalEntry(@141,QUEST_DONE)
EraseJournalEntry(@138)~ EXIT
END

IF ~Global("CbTumblingWizardTaught","AR0709",1)
Global("CbTumblingWizardWantsStaff","GLOBAL",0)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 29
  SAY @52
  IF ~~ THEN REPLY @2 GOTO 36
  IF ~~ THEN REPLY @53 GOTO 33
  IF ~~ THEN REPLY @4 GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @54
  IF ~~ THEN REPLY @6 GOTO 37
  IF ~~ THEN REPLY @55 GOTO 34
  IF ~~ THEN REPLY @56 GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @57
  IF ~~ THEN REPLY @10 GOTO 38
  IF ~~ THEN REPLY @58 GOTO 35
  IF ~~ THEN REPLY @59 GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @60
  IF ~IsGabber(Player1)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP1Da")~ EXIT
  IF ~IsGabber(Player2)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP2Da")~ EXIT
  IF ~IsGabber(Player3)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP3Da")~ EXIT
  IF ~IsGabber(Player4)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP4Da")~ EXIT
  IF ~IsGabber(Player5)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP5Da")~ EXIT
  IF ~IsGabber(Player6)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP6Da")~ EXIT
END

IF ~~ THEN BEGIN 33
  SAY @61
  IF ~~ THEN REPLY @15 GOTO 38
  IF ~~ THEN REPLY @55 GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @62
  IF ~~ THEN REPLY @17 GOTO 38
  IF ~~ THEN REPLY @58 GOTO 35
END

IF ~~ THEN BEGIN 35
  SAY @63
  IF ~~ THEN REPLY @64 GOTO 32
  IF ~~ THEN REPLY @19 GOTO 37
END

IF ~~ THEN BEGIN 36
  SAY @65
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 37
  SAY @66
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 38
  SAY @67
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @68
  IF ~~ THEN REPLY @24 GOTO 41
  IF ~~ THEN REPLY @25 GOTO 44
  IF ~~ THEN REPLY @26 GOTO 40
  IF ~~ THEN REPLY @27 GOTO 42
END

IF ~~ THEN BEGIN 40
  SAY @69
  IF ~~ THEN REPLY @24 GOTO 41
  IF ~~ THEN REPLY @25 GOTO 44
  IF ~~ THEN REPLY @27 GOTO 42
END

IF ~~ THEN BEGIN 41
  SAY @70
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42
  SAY @71
  IF ~IsGabber(Player1)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP1Dc")~ EXIT
  IF ~IsGabber(Player2)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP2Dc")~ EXIT
  IF ~IsGabber(Player3)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP3Dc")~ EXIT
  IF ~IsGabber(Player4)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP4Dc")~ EXIT
  IF ~IsGabber(Player5)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP5Dc")~ EXIT
  IF ~IsGabber(Player6)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP6Dc")~ EXIT
END

IF ~Global("CbTumblingWizardWantsStaff","GLOBAL",1)
Global("CbTumblingWizardTaught","AR0709",1)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 43
  SAY @72
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 44
  SAY @73
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
  SAY @74
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY @75
  IF ~Dead("Rayic")
OR(2)
Global("SPRITE_IS_DEADFaldorn","GLOBAL",1)
Global("SPRITE_IS_DEADcefaldor","GLOBAL",1)~ THEN DO ~SetGlobal("CbDierdreHasStaff","GLOBAL",1)
SetGlobal("CbTumblingWizardWantsStaff","GLOBAL",2)
AddJournalEntry(@142,QUEST)~ EXIT
  IF ~Dead("Rayic")
OR(2)
Global("SPRITE_IS_DEADFaldorn","GLOBAL",0)
Global("SPRITE_IS_DEADcefaldor","GLOBAL",0)~ THEN DO ~SetGlobal("CbFaldornHasStaff","GLOBAL",1)
SetGlobal("CbTumblingWizardWantsStaff","GLOBAL",2)
AddJournalEntry(@142,QUEST)~ EXIT
  IF ~!Dead("Rayic")~ THEN DO ~SetGlobal("CbDockWizardHasStaff","GLOBAL",1)
SetGlobal("CbTumblingWizardWantsStaff","GLOBAL",2)
AddJournalEntry(@142,QUEST)~ EXIT
END

IF ~Global("CbTumblingWizardWantsStaff","GLOBAL",2)
Global("CbTumblingWizardTaught","AR0709",1)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 47
  SAY @76
  IF ~PartyHasItem("CBCWSTFF")~ THEN REPLY @36 GOTO 50
  IF ~!PartyHasItem("CBCWSTFF")~ THEN REPLY @37 GOTO 49
  IF ~!PartyHasItem("CBCWSTFF")~ THEN REPLY @38 GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY @77
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 49
  SAY @78
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 50
  SAY @79
  IF ~~ THEN DO ~TakePartyItem("CBCWSTFF")
SetGlobal("CbDockWizardHasStaff","GLOBAL",2)
SetGlobal("CbFaldornHasStaff","GLOBAL",2)
SetGlobal("CbDeirdreHasStaff","GLOBAL",2)
SetGlobal("CbTumblingWizardWantsStaff","GLOBAL",3)~ GOTO 51
END

IF ~~ THEN BEGIN 51
  SAY @80
  IF ~~ THEN REPLY @81 GOTO 52
  IF ~~ THEN REPLY @82 GOTO 54
  IF ~~ THEN REPLY @83 GOTO 56
END

IF ~~ THEN BEGIN 52
  SAY @84
  IF ~OR(2)
HaveSpellRES("SPCL918")
HaveSpellRES("SPWISH13")~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBCWTHA1")~ EXIT
  IF ~!HaveSpellRES("SPCL918")
!HaveSpellRES("SPWISH13")~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBCWTHA2")~ EXIT
END

IF ~Global("CbTumblingWizardTaught","AR0709",2)
Global("CbTumblingWizardWantsStaff","GLOBAL",4)
Global("CbTumblingWizardAdvancedAlchemy","LOCALS",1)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 53
  SAY @85
  IF ~~ THEN DO ~SetGlobal("CbTumblingWizardWantsStaff","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),5000)
AddJournalEntry(@143,QUEST_DONE)
EraseJournalEntry(@142)~ EXIT
END

IF ~~ THEN BEGIN 54
  SAY @86
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBCWTHE3")~ EXIT
END

IF ~Global("CbTumblingWizardTaught","AR0709",2)
Global("CbTumblingWizardWantsStaff","GLOBAL",4)
Global("CbTumblingWizardAdvancedEnchant","LOCALS",1)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 55
  SAY @87
  IF ~~ THEN DO ~SetGlobal("CbTumblingWizardWantsStaff","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),5000)
AddJournalEntry(@144,QUEST_DONE)
EraseJournalEntry(@142)~ EXIT
END

IF ~~ THEN BEGIN 56
  SAY @88
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBCWTHS2")~ EXIT
END

IF ~Global("CbTumblingWizardTaught","AR0709",2)
Global("CbTumblingWizardWantsStaff","GLOBAL",4)
Global("CbTumblingWizardImprovedCasting","LOCALS",1)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 57
  SAY @89
  IF ~~ THEN DO ~SetGlobal("CbTumblingWizardWantsStaff","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),5000)
AddJournalEntry(@145,QUEST_DONE)
EraseJournalEntry(@142)~ EXIT
END

IF ~Global("CbTumblingWizardTaught","AR0709",2)
Global("CbTumblingWizardWantsStaff","GLOBAL",5)
Global("CbTumblingWizardWantsCure","GLOBAL",0)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 58
  SAY @90
  IF ~~ THEN REPLY @91 GOTO 65
  IF ~~ THEN REPLY @92 GOTO 62
  IF ~~ THEN REPLY @93 GOTO 59
END

IF ~~ THEN BEGIN 59
  SAY @94
  IF ~~ THEN REPLY @95 GOTO 66
  IF ~~ THEN REPLY @96 GOTO 63
  IF ~~ THEN REPLY @97 GOTO 60
END

IF ~~ THEN BEGIN 60
  SAY @98
  IF ~~ THEN REPLY @99 GOTO 67
  IF ~~ THEN REPLY @100 GOTO 64
  IF ~~ THEN REPLY @101 GOTO 61
END

IF ~~ THEN BEGIN 61
  SAY @102
  IF ~IsGabber(Player1)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP1Da")~ EXIT
  IF ~IsGabber(Player2)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP2Da")~ EXIT
  IF ~IsGabber(Player3)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP3Da")~ EXIT
  IF ~IsGabber(Player4)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP4Da")~ EXIT
  IF ~IsGabber(Player5)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP5Da")~ EXIT
  IF ~IsGabber(Player6)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP6Da")~ EXIT
END

IF ~~ THEN BEGIN 62
  SAY @103
  IF ~~ THEN REPLY @104 GOTO 67
  IF ~~ THEN REPLY @96 GOTO 63
END

IF ~~ THEN BEGIN 63
  SAY @105
  IF ~~ THEN REPLY @106 GOTO 67
  IF ~~ THEN REPLY @100 GOTO 64
END

IF ~~ THEN BEGIN 64
  SAY @107
  IF ~~ THEN REPLY @101 GOTO 61
  IF ~~ THEN REPLY @108 GOTO 66
END

IF ~~ THEN BEGIN 65
  SAY @20
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 66
  SAY @21
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 67
  SAY @109
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68
  SAY @110
  IF ~~ THEN REPLY @24 GOTO 70
  IF ~~ THEN REPLY @25 GOTO 73
  IF ~~ THEN REPLY @26 GOTO 69
  IF ~~ THEN REPLY @27 GOTO 71
END

IF ~~ THEN BEGIN 69
  SAY @111
  IF ~~ THEN REPLY @24 GOTO 70
  IF ~~ THEN REPLY @25 GOTO 73
  IF ~~ THEN REPLY @27 GOTO 71
END

IF ~~ THEN BEGIN 70
  SAY @112
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 71
  SAY @113
  IF ~IsGabber(Player1)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP1Dd")~ EXIT
  IF ~IsGabber(Player2)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP2Dd")~ EXIT
  IF ~IsGabber(Player3)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP3Dd")~ EXIT
  IF ~IsGabber(Player4)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP4Dd")~ EXIT
  IF ~IsGabber(Player5)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP5Dd")~ EXIT
  IF ~IsGabber(Player6)~ THEN DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("CBCWP6Dd")~ EXIT
END

IF ~Global("CbTumblingWizardWantsCure","GLOBAL",1)
Global("CbTumblingWizardTaught","AR0709",2)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 72
  SAY @114
  IF ~LevelLT(LastTalkedToBy(Myself),24)~ THEN GOTO 80
  IF ~LevelGT(LastTalkedToBy(Myself),23)~ THEN GOTO 87
END

IF ~~ THEN BEGIN 73
  SAY @115
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74
  SAY @116
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75
  SAY @117
  IF ~~ THEN DO ~SetGlobal("CbTumblingWizardWantsCure","GLOBAL",2)
AddJournalEntry(@146,QUEST)~ EXIT
END

IF ~Global("CbTumblingWizardWantsCure","GLOBAL",2)
Global("CbTumblingWizardTaught","AR0709",2)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 76
  SAY @118
  IF ~PartyHasItem("CBCWUMST")~ THEN REPLY @36 GOTO 79
  IF ~!PartyHasItem("CBCWUMST")~ THEN REPLY @37 GOTO 78
  IF ~!PartyHasItem("CBCWUMST")~ THEN REPLY @38 GOTO 77
END

IF ~~ THEN BEGIN 77
  SAY @119
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 78
  SAY @120
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 79
  SAY @121
  IF ~LevelLT(LastTalkedToBy(Myself),24)~ THEN DO ~TakePartyItem("CBCWUMST")
SetGlobal("CbTumblingWizardWantsCure","GLOBAL",3)~ GOTO 80
  IF ~LevelGT(LastTalkedToBy(Myself),23)~ THEN DO ~TakePartyItem("CBCWUMST")
SetGlobal("CbTumblingWizardWantsCure","GLOBAL",3)~ GOTO 87
END

IF ~~ THEN BEGIN 80
  SAY @122
  IF ~~ THEN REPLY @43 GOTO 81
  IF ~~ THEN REPLY @44 GOTO 83
  IF ~~ THEN REPLY @123 GOTO 85
END

IF ~~ THEN BEGIN 81
  SAY @124
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBCWTHM3")~ EXIT
END

IF ~Global("CbTumblingWizardWantsCure","GLOBAL",4)
Global("CbTumblingWizardTaught","AR0709",3)
Global("CbTumblingWizardAdvancedMemory","LOCALS",1)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 82
  SAY @125
  IF ~~ THEN DO ~SetGlobal("CbTumblingWizardWantsCure","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),10000)
AddJournalEntry(@147,QUEST_DONE)
EraseJournalEntry(@146)
SetGlobal("CbTumblingWizardTaught","AR0709",4)~ EXIT
END

IF ~~ THEN BEGIN 83
  SAY @126
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBCWTHDS")~ EXIT
END

IF ~Global("CbTumblingWizardWantsCure","GLOBAL",4)
Global("CbTumblingWizardTaught","AR0709",3)
Global("CbTumblingWizardDoubleSpells","LOCALS",1)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 84
  SAY @127
  IF ~~ THEN DO ~SetGlobal("CbTumblingWizardWantsCure","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),10000)
AddJournalEntry(@148,QUEST_DONE)
EraseJournalEntry(@146)
SetGlobal("CbTumblingWizardTaught","AR0709",4)~ EXIT
END

IF ~~ THEN BEGIN 85
  SAY @128
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBCWTHWR")~ EXIT
END

IF ~Global("CbTumblingWizardWantsCure","GLOBAL",4)
Global("CbTumblingWizardTaught","AR0709",3)
Global("CbTumblingWizardWondrousRecall","LOCALS",1)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 86
  SAY @129
  IF ~~ THEN DO ~SetGlobal("CbTumblingWizardWantsCure","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),10000)
AddJournalEntry(@149,QUEST_DONE)
EraseJournalEntry(@146)
SetGlobal("CbTumblingWizardTaught","AR0709",4)~ EXIT
END

IF ~~ THEN BEGIN 87
  SAY @130
  IF ~~ THEN REPLY @43 GOTO 81
  IF ~~ THEN REPLY @44 GOTO 83
  IF ~~ THEN REPLY @123 GOTO 85
  IF ~~ THEN REPLY @131 GOTO 88
END

IF ~~ THEN BEGIN 88
  SAY @132
  IF ~RandomNumGT(100,90)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBCWTHUP")~ EXIT
  IF ~RandomNumLT(100,91)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBCWTHUF")~ EXIT
END

IF ~Global("CbTumblingWizardWantsCure","GLOBAL",4)
Global("CbTumblingWizardTaught","AR0709",3)
Global("CbTumblingWizardUseItem","LOCALS",1)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 89
  SAY @133
  IF ~~ THEN DO ~SetGlobal("CbTumbingWizardWantsCure","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),10000)
AddJournalEntry(@150,QUEST_DONE)
EraseJournalEntry(@146)
SetGlobal("CbTumblingWizardTaught","AR0709",4)~ EXIT
END

IF ~Global("CbTumblingWizardWantsCure","GLOBAL",4)
Global("CbTumblingWizardTaught","AR0709",3)
Global("CbTumblingWizardUseItem","LOCALS",2)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 90
  SAY @134
  IF ~~ THEN DO ~SetGlobal("CbTumbingWizardWantsCure","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),10000)
AddJournalEntry(@151,QUEST_DONE)
EraseJournalEntry(@146)
SetGlobal("CbTumblingWizardTaught","AR0709",4)~ EXIT
END

IF ~Global("CbTumblingWizardTaught","AR0709",4)
Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 91
  SAY @135
  IF ~~ THEN EXIT
END

IF ~Gender(LastTalkedToBy(Myself),FEMALE)
OR(2)
	!Class(LastTalkedToBy(Myself),SORCERER)
	!Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 92
  SAY @136
  IF ~~ THEN EXIT
END

IF ~Gender(LastTalkedToBy(Myself),MALE)
OR(2)
	!Class(LastTalkedToBy(Myself),SORCERER)
	!Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 93
  SAY @137
  IF ~~ THEN EXIT
END

IF ~Gender(LastTalkedToBy(Myself),MALE)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 94
  SAY @137
  IF ~~ THEN EXIT
END

IF ~OR(5)
GlobalGT("CbMasterBardWantsHarp","GLOBAL",0)
GlobalGT("CbRangerDeadDear","GLOBAL",0)
GlobalGT("CbDruidTeachingSeeds","GLOBAL",0)
GlobalGT("CbElvenSorceressWantsSeeds","GLOBAL",0)
GlobalGT("CbNorthmenWantStaff","GLOBAL",0)~ THEN BEGIN 95
  SAY @137
  IF ~~ THEN EXIT
END
