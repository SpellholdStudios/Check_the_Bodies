BEGIN ~CBMANARB~

IF ~~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXTERN ~CBARKSLV~ 2
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXTERN ~CBARKSLV~ 8
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXTERN ~CBARKSLV~ 11
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXTERN ~CBSTTFLW~ 24
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN EXTERN ~CBLSLNDA~ 9
END

IF ~~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN EXIT
END

IF ~RandomNum(2,1)
AreaCheck("AR2600")
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",0)~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @8
  IF ~~ THEN EXTERN ~CBARKSLV~ 23
END

IF ~RandomNum(2,2)
AreaCheck("AR2600")
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",0)~ THEN BEGIN 8
  SAY @9
  IF ~Gender([PC],MALE)~ THEN GOTO 10
  IF ~!Gender([PC],MALE)~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 11
  IF ~Global("JaheiraMatch","GLOBAL",1)
InParty("JAHEIRA")
InPartySlot(LastTalkedToBy(Myself),0)~ THEN REPLY @13 GOTO 12
  IF ~Global("AerieMatch","GLOBAL",1)
InParty("AERIE")
InPartySlot(LastTalkedToBy(Myself),0)~ THEN REPLY @14 GOTO 13
  IF ~Global("ViconiaMatch","GLOBAL",1)
InParty("VICONIA")
InPartySlot(LastTalkedToBy(Myself),0)~ THEN REPLY @15 GOTO 15
  IF ~~ THEN REPLY @16 GOTO 16
END

IF ~~ THEN BEGIN 11
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @18
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 14
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @23
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15
  SAY @24
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 18
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~~ THEN REPLY @28 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @29
  IF ~~ THEN EXTERN ~CBLSLNDA~ 11
END

IF ~~ THEN BEGIN 18
  SAY @30
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
  SAY @31
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20
  SAY @32
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @33
  IF ~~ THEN EXIT
END

IF ~Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",1)
Global("DruidStronghold","GLOBAL",1)
Global("Cb_MannyCommentsOnDruid","LOCALS",0)
AreaCheck("AR2602")~ THEN BEGIN 22
  SAY @34
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @35
  IF ~~ THEN DO ~SetGlobal("Cb_MannyCommentsOnDruid","LOCALS",1)
AddXPObject(Player1,2500)~ EXTERN ~CBARKSLV~ 25
END

IF ~Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",1)
Global("DruidStronghold","GLOBAL",1)
Global("Cb_MannyCommentsOnDruid","LOCALS",1)
AreaCheck("AR2602")~ THEN BEGIN 24
  SAY @36
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25
  SAY @37
  IF ~~ THEN DO ~SetGlobal("Cb_MoondropWarns","AR3531",1)~ EXIT
END

IF ~AreaCheck("AR2600")
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",1)~ THEN BEGIN 26
  SAY @9
  IF ~Gender([PC],MALE)~ THEN GOTO 10
  IF ~!Gender([PC],MALE)~ THEN GOTO 9
END

IF ~AreaCheck("AR2600")
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",3)~ THEN BEGIN 27
  SAY @38
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @39
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @40
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @41
  IF ~~ THEN DO ~AddXPObject(Player1,20000)
AddXPObject(Player2,20000)
AddXPObject(Player3,20000)
AddXPObject(Player4,20000)
AddXPObject(Player5,20000)
AddXPObject(Player6,20000)
ReputationInc(1)
EraseJournalEntry(@44)
AddJournalEntry(@43,QUEST_DONE)~ GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @42
  IF ~~ THEN DO ~SetGlobal("Cb_PartyAlliesWith_C_o_8","GLOBAL",4)
ActionOverride("CBTARDTH",EscapeArea())
ActionOverride("CBHREDWN",EscapeArea())
ActionOverride("CBSTTFLW",EscapeArea())
ActionOverride("CBMONDRP",EscapeArea())
ActionOverride("CBMANARB",EscapeArea())
ActionOverride("CBLSLNDA",EscapeArea())
ActionOverride("CBARKSLV",EscapeArea())~ EXIT
END
