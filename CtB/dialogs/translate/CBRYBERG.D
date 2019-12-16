BEGIN ~CBRYBERG~

IF ~Global("CbHelpRyberg","GLOBAL",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 21
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 18
  IF ~~ THEN REPLY @8 GOTO 19
  IF ~~ THEN REPLY @9 GOTO 20
END

IF ~~ THEN BEGIN 3
  SAY @10
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @11
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @12
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @14
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @15
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @19 GOTO 17
END

IF ~~ THEN BEGIN 10
  SAY @20
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @21
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
END

IF ~~ THEN BEGIN 14
  SAY @28
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 15
  SAY @29
  IF ~~ THEN DO ~SetGlobal("CbHelpRyberg","GLOBAL",1)
AddJournalEntry(@78,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @30
  IF ~~ THEN DO ~SetGlobal("CbHelpRyberg","GLOBAL",1)
AddJournalEntry(@78,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @31
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 18
  SAY @32
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
  SAY @33
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20
  SAY @34
  IF ~~ THEN DO ~SetGlobalTimer("#HCbRybSpwn","GLOBAL",ONE_DAY)
SetNumTimesTalkedTo(0)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @35
  IF ~~ THEN DO ~SetGlobalTimer("#HCbRybSpwn","GLOBAL",ONE_DAY)
SetNumTimesTalkedTo(0)
EscapeArea()~ EXIT
END

IF ~Global("CbHelpRyberg","GLOBAL",1)~ THEN BEGIN 22
  SAY @36
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @37
  IF ~!PartyHasItem("CBSPKDED")~ THEN REPLY @38 GOTO 19
  IF ~!PartyHasItem("CBSPKDED")~ THEN REPLY @39 GOTO 24
  IF ~PartyHasItem("CBSPKDED")~ THEN REPLY @40 GOTO 25
  IF ~PartyHasItem("CBSPKDED")~ THEN REPLY @41 GOTO 26
  IF ~~ THEN REPLY @42 GOTO 41
  IF ~PartyHasItem("CBSPKDED")
Global("PlayerHasStronghold","GLOBAL",1)~ THEN REPLY @43 GOTO 42
END

IF ~~ THEN BEGIN 24
  SAY @44
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25
  SAY @45
  IF ~~ THEN DO ~SetGlobal("CbHelpRyberg","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 27
  IF ~~ THEN REPLY @48 GOTO 28
  IF ~~ THEN REPLY @49 GOTO 25
END

IF ~~ THEN BEGIN 27
  SAY @50
  IF ~~ THEN DO ~AddExperienceParty(1000)
TakePartyItem("CBSPKDED")
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 28
  SAY @51
  IF ~~ THEN EXIT
END

IF ~Global("CbRybergMeetsRelative","GLOBAL",2)~ THEN BEGIN 29
  SAY @52
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @53
  IF ~~ THEN DO ~SetGlobal("CbRybergMeetsRelative","GLOBAL",3)~ EXTERN ~CBRYBREL~ 5
END

IF ~Global("CbRybergMeetsRelative","GLOBAL",4)~ THEN BEGIN 31
  SAY @54
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @55
  IF ~~ THEN DO ~ActionOverride("CBRYBREL",CreateVisualEffectObject("spflsrin","CBRYBREL"))
ActionOverride("CBRYBREL",Wait(1))
ActionOverride("CBRYBREL",CreateVisualEffectObject("sppowrrd","CBRYBREL"))
ActionOverride("CBRYBREL",Wait(2))
ActionOverride("CBRYBREL",CreateVisualEffectObject("spfirepi","CBRYBREL"))
ActionOverride("CBRYBREL",Wait(1))
ActionOverride("CBRYBREL",CreateVisualEffectObject("spplanar","CBRYBREL"))
ActionOverride("CBRYBREL",Wait(2))
ActionOverride("CBRYBREL",DestroySelf())
Wait(8)
SetGlobal("CbRybergMeetsRelative","GLOBAL",5)~ EXIT
END

IF ~Global("CbRybergMeetsRelative","GLOBAL",5)
Global("CbHelpRyberg","GLOBAL",2)~ THEN BEGIN 33
  SAY @56
  IF ~~ THEN REPLY @57 GOTO 34
  IF ~~ THEN REPLY @58 GOTO 35
  IF ~~ THEN REPLY @59 GOTO 36
END

IF ~~ THEN BEGIN 34
  SAY @60
  IF ~Global("CbRybergGaveExperience","LOCALS",0)~ THEN DO ~AddExperienceParty(2000)
AddJournalEntry(@79,QUEST)
EraseJournalEntry(@78)
EraseJournalEntry(@81)
EraseJournalEntry(@82)
SetGlobal("CbRybergGaveExperience","LOCALS",1)~ EXIT
  IF ~Global("CbRybergGaveExperience","LOCALS",1)~ THEN EXIT
END

IF ~~ THEN BEGIN 35
  SAY @61
  IF ~~ THEN DO ~SetGlobal("CbHelpRyberg","GLOBAL",3)
AddJournalEntry(@79,QUEST)
EraseJournalEntry(@78)
EraseJournalEntry(@81)
EraseJournalEntry(@82)~ EXIT
END

IF ~~ THEN BEGIN 36
  SAY @62
  IF ~Global("CbRybergGaveExperience","LOCALS",0)~ THEN DO ~AddExperienceParty(2000)
AddJournalEntry(@79,QUEST)
EraseJournalEntry(@78)
EraseJournalEntry(@81)
EraseJournalEntry(@82)
SetGlobal("CbRybergGaveExperience","LOCALS",1)~ EXIT
  IF ~Global("CbRybergGaveExperience","LOCALS",1)~ THEN EXIT
END

IF ~Global("CbHelpRyberg","GLOBAL",3)~ THEN BEGIN 37
  SAY @63
  IF ~~ THEN REPLY @64 GOTO 47
  IF ~PartyHasItem("CBRYBERG")~ THEN REPLY @65 GOTO 38
  IF ~PartyHasItem("CBRYBERG")~ THEN REPLY @66 GOTO 39
END

IF ~~ THEN BEGIN 38
  SAY @67
  IF ~~ THEN DO ~TakePartyItem("CBRYBERG")
GiveGoldForce(13000)
GivePartyGold(13000)
AddExperienceParty(5000)
AddJournalEntry(@80,QUEST_DONE)
EraseJournalEntry(@79)
SetGlobal("CbHelpRyberg","GLOBAL",4)
EscapeAreaDestroy(0)
~ EXIT
END

IF ~~ THEN BEGIN 39
  SAY @68
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 40
  SAY @69
  IF ~~ THEN DO ~SetGlobal("CbHelpRyberg","GLOBAL",1)
AddJournalEntry(@78,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 41
  SAY @70
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 42
  SAY @71
  IF ~~ THEN REPLY @72 GOTO 43
  IF ~~ THEN REPLY @73 GOTO 44
  IF ~~ THEN REPLY @74 GOTO 45
  IF ~~ THEN REPLY @75 GOTO 46
END

IF ~~ THEN BEGIN 43
  SAY @76
  IF ~~ THEN DO ~SetGlobal("CbHelpRyberg","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBRYBMV1")~ EXIT
END

IF ~~ THEN BEGIN 44
  SAY @76
  IF ~~ THEN DO ~SetGlobal("CbHelpRyberg","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBRYBMV2")~ EXIT
END

IF ~~ THEN BEGIN 45
  SAY @76
  IF ~~ THEN DO ~SetGlobal("CbHelpRyberg","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBRYBMV3")~ EXIT
END

IF ~~ THEN BEGIN 46
  SAY @76
  IF ~~ THEN DO ~SetGlobal("CbHelpRyberg","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBRYBMV4")~ EXIT
END

IF ~~ THEN BEGIN 47
  SAY @77
  IF ~~ THEN EXIT
END
