BEGIN ~CBARKSLV~

IF ~~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXTERN ~CBMANARB~ 0
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXTERN ~CBTARDTH~ 28
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN REPLY @5 EXTERN ~CBTARDTH~ 51
  IF ~~ THEN REPLY @6 EXTERN ~CBTARDTH~ 51
  IF ~~ THEN REPLY @7 EXTERN ~CBTARDTH~ 51
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN EXTERN ~CBLSLNDA~ 2
END

IF ~RandomNum(4,1)
AreaCheck("AR2600")
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",0)~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)
AreaCheck("AR2600")
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",0)~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN EXTERN ~CBMONDRP~ 4
END

IF ~~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN EXTERN ~CBMONDRP~ 5
END

IF ~~ THEN BEGIN 8
  SAY @12
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3)
AreaCheck("AR2600")
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",0)~ THEN BEGIN 9
  SAY @13
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @14
  IF ~~ THEN EXTERN ~CBMANARB~ 2
END

IF ~~ THEN BEGIN 11
  SAY @15
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,4)
AreaCheck("AR2600")
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",0)~ THEN BEGIN 12
  SAY @16
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @17
  IF ~~ THEN EXIT
END

IF ~AreaCheck("AR2600")
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",1)
Class(LastTalkedToBy(Myself),DRUID)
OR(3)
Class(LastTalkedToBy(Myself),FIGHTER_DRUID)
Class(LastTalkedToBy(Myself),CLERIC_RANGER)
Class(LastTalkedToBy(Myself),RANGER)~ THEN BEGIN 14
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @20
  IF ~~ THEN EXIT
END

IF ~AreaCheck("AR2600")
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",1)
!Class(LastTalkedToBy(Myself),DRUID)
OR(3)
!Class(LastTalkedToBy(Myself),FIGHTER_DRUID)
!Class(LastTalkedToBy(Myself),CLERIC_RANGER)
!Class(LastTalkedToBy(Myself),RANGER)~ THEN BEGIN 16
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 17
  IF ~~ THEN REPLY @23 GOTO 18
  IF ~~ THEN REPLY @24 GOTO 19
END

IF ~~ THEN BEGIN 17
  SAY @25
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18
  SAY @26
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
  SAY @27
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20
  SAY @28
  IF ~~ THEN EXTERN ~CBSTTFLW~ 22
END

IF ~~ THEN BEGIN 21
  SAY @29
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @30
  IF ~~ THEN EXTERN ~CBMANARB~ 5
END

IF ~~ THEN BEGIN 23
  SAY @31
  IF ~~ THEN EXTERN ~CBLSLNDA~ 10
END

IF ~~ THEN BEGIN 24
  SAY @32
  IF ~~ THEN EXTERN ~CBHREDWN~ 13
END

IF ~~ THEN BEGIN 25
  SAY @33
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26
  SAY @34
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27
  SAY @35
  IF ~~ THEN EXTERN ~CBHREDWN~ 90
END

IF ~AreaCheck("AR2600")
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",3)~ THEN BEGIN 28
  SAY @36
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @37
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @38
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @39
  IF ~~ THEN DO ~GiveItem("STAF14",LastTalkedToBy(Myself))
AddXPObject(Player1,20000)
AddXPObject(Player2,20000)
AddXPObject(Player3,20000)
AddXPObject(Player4,20000)
AddXPObject(Player5,20000)
AddXPObject(Player6,20000)
ReputationInc(1)
EraseJournalEntry(@42)
AddJournalEntry(@41,QUEST_DONE)~ GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @40
  IF ~~ THEN DO ~SetGlobal("Cb_PartyAlliesWith_C_o_8","GLOBAL",4)
ActionOverride("CBTARDTH",EscapeArea())
ActionOverride("CBHREDWN",EscapeArea())
ActionOverride("CBSTTFLW",EscapeArea())
ActionOverride("CBMONDRP",EscapeArea())
ActionOverride("CBMANARB",EscapeArea())
ActionOverride("CBLSLNDA",EscapeArea())
ActionOverride("CBARKSLV",EscapeArea())~ EXIT
END
