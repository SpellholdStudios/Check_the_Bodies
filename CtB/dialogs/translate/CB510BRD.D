BEGIN ~CB510BRD~

IF ~Class(LastTalkedToBy(Myself),BARD)
Global("CbMasterBardWantsHarp","GLOBAL",0)
Global("CbMasterBardTaught","AR0510",0)
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
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 4
  IF ~~ THEN REPLY @13 GOTO 6
  IF ~~ THEN REPLY @14 GOTO 6
  IF ~~ THEN REPLY @15 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @16
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 8
  IF ~~ THEN REPLY @19 GOTO 21
END

IF ~~ THEN BEGIN 8
  SAY @20
  IF ~~ THEN GOTO 22
END

IF ~Class(LastTalkedToBy(Myself),BARD)
Global("CbMasterBardWantsHarp","GLOBAL",1)
Global("CbMasterBardTaught","AR0510",0)~ THEN BEGIN 9
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 10
  IF ~OR(4)
PartyHasItem("CBWTNI1A")
PartyHasItem("CBWTNI1B")
PartyHasItem("CBWTNI1C")
PartyHasItem("CBWTNI1D")~ THEN REPLY @23 GOTO 12
  IF ~OR(4)
PartyHasItem("CBWTNI1A")
PartyHasItem("CBWTNI1B")
PartyHasItem("CBWTNI1C")
PartyHasItem("CBWTNI1D")~ THEN REPLY @24 GOTO 11
END

IF ~~ THEN BEGIN 10
  SAY @25
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @26
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @27
  IF ~PartyHasItem("CBWTNI1A")~ THEN DO ~SetGlobal("CbMasterBardWantsHarp","GLOBAL",2)
TakePartyItem("CBWTNI1A")
AddExperienceParty(25000)
AddJournalEntry(@105,QUEST_DONE)
EraseJournalEntry(@102)~ GOTO 13
  IF ~PartyHasItem("CBWTNI1B")~ THEN DO ~SetGlobal("CbMasterBardWantsHarp","GLOBAL",2)
TakePartyItem("CBWTNI1B")
AddExperienceParty(25000)
AddJournalEntry(@105,QUEST_DONE)
EraseJournalEntry(@102)~ GOTO 13
  IF ~PartyHasItem("CBWTNI1C")~ THEN DO ~SetGlobal("CbMasterBardWantsHarp","GLOBAL",2)
TakePartyItem("CBWTNI1C")
AddExperienceParty(25000)
AddJournalEntry(@105,QUEST_DONE)
EraseJournalEntry(@102)~ GOTO 13
  IF ~PartyHasItem("CBWTNI1D")~ THEN DO ~SetGlobal("CbMasterBardWantsHarp","GLOBAL",2)
TakePartyItem("CBWTNI1D")
AddExperienceParty(25000)
AddJournalEntry(@105,QUEST_DONE)
EraseJournalEntry(@102)~ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @28
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 15
  IF ~~ THEN REPLY @31 GOTO 17
  IF ~~ THEN REPLY @32 GOTO 19
END

IF ~~ THEN BEGIN 15
  SAY @33
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBBARDM3")~ EXIT
END

IF ~Global("CbMasterBardWantsHarp","GLOBAL",3)
Global("CbMasterBardTaught","AR0510",1)
Global("CbMasterBardMemory","LOCALS",1)
Class(LastTalkedToBy(Myself),BARD)~ THEN BEGIN 16
  SAY @34
  IF ~~ THEN DO ~SetGlobal("CbMasterBardWantsHarp","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),5000)
AddJournalEntry(@106,INFO)~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @35
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBBARDED")~ EXIT
END

IF ~Global("CbMasterBardWantsHarp","GLOBAL",3)
Global("CbMasterBardTaught","AR0510",1)
Global("CbMasterBardEvade","LOCALS",1)
Class(LastTalkedToBy(Myself),BARD)~ THEN BEGIN 18
  SAY @36
  IF ~~ THEN DO ~SetGlobal("CbMasterBardWantsHarp","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),5000)
AddJournalEntry(@107,INFO)~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @37
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBBARDCT")~ EXIT
END

IF ~Global("CbMasterBardWantsHarp","GLOBAL",3)
Global("CbMasterBardTaught","AR0510",1)
Global("CbMasterBardCaltrops","LOCALS",1)
Class(LastTalkedToBy(Myself),BARD)~ THEN BEGIN 20
  SAY @38
  IF ~~ THEN DO ~SetGlobal("CbMasterBardWantsHarp","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),5000)
AddJournalEntry(@108,INFO)~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @39
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22
  SAY @40
  IF ~~ THEN DO ~SetGlobal("CbMasterBardWantsHarp","GLOBAL",1)
AddJournalEntry(@109,QUEST)~ EXIT
END

IF ~Global("CbMasterBardWantsHarp","GLOBAL",4)
Global("CbMasterBardTaught","AR0510",1)
Global("CbMasterBardDemon","GLOBAL",0)
Class(LastTalkedToBy(Myself),BARD)~ THEN BEGIN 23
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 25
  IF ~~ THEN REPLY @43 GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @44
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25
  SAY @45
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @46
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @47
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 29
  IF ~~ THEN REPLY @50 GOTO 31
  IF ~~ THEN REPLY @51 GOTO 30
END

IF ~~ THEN BEGIN 29
  SAY @52
  IF ~~ THEN REPLY @50 GOTO 40
  IF ~~ THEN REPLY @51 GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @53
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @54
  IF ~~ THEN DO ~SetGlobal("CbMasterBardDemon","GLOBAL",1)
AddJournalEntry(@110,QUEST)~ EXIT
END

IF ~Global("CbMasterBardDemon","GLOBAL",1)
Class(LastTalkedToBy(Myself),BARD)~ THEN BEGIN 32
  SAY @55
  IF ~Global("CbBardDemonClue","LOCALS",0)~ THEN REPLY @56 DO ~IncrementGlobal("CbBardDemonClue","LOCALS",1)~ GOTO 33
  IF ~Global("CbBardDemonClue","LOCALS",1)~ THEN REPLY @56 DO ~IncrementGlobal("CbBardDemonClue","LOCALS",1)~ GOTO 34
  IF ~Global("CbBardDemonClue","LOCALS",2)~ THEN REPLY @56 DO ~IncrementGlobal("CbBardDemonClue","LOCALS",1)~ GOTO 35
  IF ~Global("CbBardDemonClue","LOCALS",3)~ THEN REPLY @56 DO ~IncrementGlobal("CbBardDemonClue","LOCALS",1)~ GOTO 36
  IF ~GlobalGT("CbBardDemonClue","LOCALS",3)~ THEN REPLY @56 DO ~IncrementGlobal("CbBardDemonClue","LOCALS",1)~ GOTO 37
END

IF ~~ THEN BEGIN 33
  SAY @57
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 34
  SAY @58
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 35
  SAY @59
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 36
  SAY @60
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 37
  SAY @61
  IF ~~ THEN GOTO 40
END

IF ~Global("CbMasterBardDemon","GLOBAL",2)
Class(LastTalkedToBy(Myself),BARD)~ THEN BEGIN 38
  SAY @62
  IF ~Global("CbElvenDemonBanished","GLOBAL",1)~ THEN REPLY @63 GOTO 39
  IF ~Global("CbElvenDemonDestroyed","GLOBAL",1)~ THEN REPLY @64 GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @65
  IF ~~ THEN DO ~SetGlobal("CbMasterBardDemon","GLOBAL",3)
AddJournalEntry(@111,QUEST_DONE)
EraseJournalEntry(@103)~ GOTO 41
END

IF ~~ THEN BEGIN 40
  SAY @66
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41
  SAY @67
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @68
  IF ~~ THEN REPLY @69 GOTO 43
  IF ~~ THEN REPLY @70 GOTO 45
  IF ~~ THEN REPLY @71 GOTO 47
END

IF ~~ THEN BEGIN 43
  SAY @72
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBBARDBS")~ EXIT
END

IF ~Global("CbMasterBardDemon","GLOBAL",3)
Global("CbMasterBardTaught","AR0510",2)
Global("CbMasterBardSong","LOCALS",1)
Class(LastTalkedToBy(Myself),BARD)~ THEN BEGIN 44
  SAY @73
  IF ~~ THEN DO ~SetGlobal("CbMasterBardDemon","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),10000)
AddJournalEntry(@112,INFO)~ EXIT
END

IF ~~ THEN BEGIN 45
  SAY @74
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBBARDM2")~ EXIT
END

IF ~Global("CbMasterBardDemon","GLOBAL",3)
Global("CbMasterBardTaught","AR0510",2)
Global("CbMasterBardAdvMemory","LOCALS",1)
Class(LastTalkedToBy(Myself),BARD)~ THEN BEGIN 46
  SAY @75
  IF ~~ THEN DO ~SetGlobal("CbMasterBardDemon","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),10000)
AddJournalEntry(@113,INFO)~ EXIT
END

IF ~~ THEN BEGIN 47
  SAY @76
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBBARDCB")~ EXIT
END

IF ~Global("CbMasterBardDemon","GLOBAL",3)
Global("CbMasterBardTaught","AR0510",2)
Global("CbMasterBardMedCaltrops","LOCALS",1)
Class(LastTalkedToBy(Myself),BARD)~ THEN BEGIN 48
  SAY @77
  IF ~~ THEN DO ~SetGlobal("CbMasterBardDemon","GLOBAL",4)
AddXPObject(LastTalkedToBy(Myself),10000)
AddJournalEntry(@114,INFO)~ EXIT
END

IF ~Global("CbMasterBardDemon","GLOBAL",4)
Global("CbMasterBardWantsBlade","GLOBAL",0)
Class(LastTalkedToBy(Myself),BARD)~ THEN BEGIN 49
  SAY @78
  IF ~~ THEN REPLY @79 GOTO 51
  IF ~~ THEN REPLY @80 GOTO 50
END

IF ~~ THEN BEGIN 50
  SAY @81
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51
  SAY @82
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52
  SAY @83
  IF ~~ THEN REPLY @84 GOTO 53
END

IF ~~ THEN BEGIN 53
  SAY @85
  IF ~~ THEN DO ~SetGlobal("CbMasterBardWantsBlade","GLOBAL",1)
GiveItem("CBSSHILT",LastTalkedToBy(Myself))
AddJournalEntry(@115,QUEST)~ EXIT
END

IF ~Global("CbMasterBardWantsBlade","GLOBAL",1)
Class(LastTalkedToBy(Myself),BARD)~ THEN BEGIN 54
  SAY @86
  IF ~HasItem("CBSSSHRT",LastTalkedToBy(Myself))~ THEN REPLY @87 GOTO 56
  IF ~!HasItem("CBSSSHRT",LastTalkedToBy(Myself))~ THEN REPLY @88 GOTO 55
END

IF ~~ THEN BEGIN 55
  SAY @89
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56
  SAY @90
  IF ~IsGabber(Player1)~ THEN DO ~GiveItemCreate("CBSSLNG1",LastTalkedToBy(Myself),1,0,0)
TakePartyItem("CBSSSHRT")
SetGlobal("CbMasterBardWantsBlade","GLOBAL",2)
SetGlobal("CbPlayer_1_HasSpellsung","GLOBAL",1)
AddJournalEntry(@116,QUEST_DONE)
EraseJournalEntry(@104)~ GOTO 57
  IF ~IsGabber(Player2)~ THEN DO ~GiveItemCreate("CBSSLNG2",LastTalkedToBy(Myself),1,0,0)
TakePartyItem("CBSSSHRT")
SetGlobal("CbMasterBardWantsBlade","GLOBAL",2)
SetGlobal("CbPlayer_2_HasSpellsung","GLOBAL",1)
AddJournalEntry(@116,QUEST_DONE)
EraseJournalEntry(@104)~ GOTO 57
  IF ~IsGabber(Player3)~ THEN DO ~GiveItemCreate("CBSSLNG3",LastTalkedToBy(Myself),1,0,0)
TakePartyItem("CBSSSHRT")
SetGlobal("CbMasterBardWantsBlade","GLOBAL",2)
SetGlobal("CbPlayer_3_HasSpellsung","GLOBAL",1)
AddJournalEntry(@116,QUEST_DONE)
EraseJournalEntry(@104)~ GOTO 57
  IF ~IsGabber(Player4)~ THEN DO ~GiveItemCreate("CBSSLNG4",LastTalkedToBy(Myself),1,0,0)
TakePartyItem("CBSSSHRT")
SetGlobal("CbMasterBardWantsBlade","GLOBAL",2)
SetGlobal("CbPlayer_4_HasSpellsung","GLOBAL",1)
AddJournalEntry(@116,QUEST_DONE)
EraseJournalEntry(@104)~ GOTO 57
  IF ~IsGabber(Player5)~ THEN DO ~GiveItemCreate("CBSSLNG5",LastTalkedToBy(Myself),1,0,0)
TakePartyItem("CBSSSHRT")
SetGlobal("CbMasterBardWantsBlade","GLOBAL",2)
SetGlobal("CbPlayer_5_HasSpellsung","GLOBAL",1)
AddJournalEntry(@116,QUEST_DONE)
EraseJournalEntry(@104)~ GOTO 57
  IF ~IsGabber(Player6)~ THEN DO ~GiveItemCreate("CBSSLNG6",LastTalkedToBy(Myself),1,0,0)
TakePartyItem("CBSSSHRT")
SetGlobal("CbMasterBardWantsBlade","GLOBAL",2)
SetGlobal("CbPlayer_6_HasSpellsung","GLOBAL",1)
AddJournalEntry(@116,QUEST_DONE)
EraseJournalEntry(@104)~ GOTO 57
END

IF ~~ THEN BEGIN 57
  SAY @91
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58
  SAY @92
  IF ~~ THEN REPLY @93 GOTO 63
  IF ~~ THEN REPLY @31 GOTO 61
  IF ~~ THEN REPLY @32 GOTO 59
END

IF ~~ THEN BEGIN 59
  SAY @94
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBBARDCA")~ EXIT
END

IF ~Global("CbMasterBardWantsBlade","GLOBAL",2)
Global("CbMasterBardTaught","AR0510",3)
Global("CbMasterBardAdvCaltrops","LOCALS",1)
Class(LastTalkedToBy(Myself),BARD)~ THEN BEGIN 60
  SAY @95
  IF ~~ THEN DO ~SetGlobal("CbMasterBardWantsBlade","GLOBAL",3)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@114,INFO)~ EXIT
END

IF ~~ THEN BEGIN 61
  SAY @96
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBBARDEE")~ EXIT
END

IF ~Global("CbMasterBardWantsBlade","GLOBAL",2)
Global("CbMasterBardTaught","AR0510",3)
Global("CbMasterBardEvade","LOCALS",3)
Class(LastTalkedToBy(Myself),BARD)~ THEN BEGIN 62
  SAY @97
  IF ~~ THEN DO ~SetGlobal("CbMasterBardWantsBlade","GLOBAL",3)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@107,INFO)~ EXIT
END

IF ~~ THEN BEGIN 63
  SAY @98
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBBARDUI")~ EXIT
END

IF ~Global("CbMasterBardWantsBlade","GLOBAL",2)
Global("CbMasterBardTaught","AR0510",3)
Global("CbMasterBardUseItem","LOCALS",1)
Class(LastTalkedToBy(Myself),BARD)~ THEN BEGIN 64
  SAY @99
  IF ~~ THEN DO ~SetGlobal("CbMasterBardWantsBlade","GLOBAL",3)
AddXPObject(LastTalkedToBy(Myself),20000)
AddJournalEntry(@117,INFO)~ EXIT
END

IF ~!Class(LastTalkedToBy(Myself),BARD)~ THEN BEGIN 65
  SAY @100
  IF ~~ THEN EXIT
END

IF ~OR(5)
GlobalGT("CbRangerDeadDear","GLOBAL",0)
GlobalGT("CbDruidTeachingSeeds","GLOBAL",0)
GlobalGT("CbTumblingWizardWantsResearch","GLOBAL",0)
GlobalGT("CbElvenSorceressWantsSeeds","GLOBAL",0)
GlobalGT("CbNorthmenWantStaff","GLOBAL",0)~ THEN BEGIN 66
  SAY @100
  IF ~~ THEN EXIT
END

IF ~GlobalGT("CbMasterBardWantsBlade","GLOBAL",2)~ THEN BEGIN 67
  SAY @101
  IF ~~ THEN EXIT
END
