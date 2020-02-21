BEGIN ~CBSTTFLW~

IF ~~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXTERN ~CBTARDTH~ 24
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXTERN ~CBHREDWN~ 4
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXTERN ~CBHREDWN~ 5
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXTERN ~CBMONDRP~ 35
END

IF ~RandomNum(5,1)
AreaCheck("AR2600")
GlobalGT("CbLetsMovePaddy","AR2600",4)
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",0)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN GOTO 5
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

IF ~RandomNum(5,2)
AreaCheck("AR2600")
GlobalGT("CbLetsMovePaddy","AR2600",4)
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",0)~ THEN BEGIN 8
  SAY @9
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @10
  IF ~~ THEN DO ~TakePartyGold(1)~ EXIT
END

IF ~RandomNum(5,3)
AreaCheck("AR2600")
GlobalGT("CbLetsMovePaddy","AR2600",4)
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",0)~ THEN BEGIN 10
  SAY @11
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @12
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @13
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)
AreaCheck("AR2600")
GlobalGT("CbLetsMovePaddy","AR2600",4)
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",0)~ THEN BEGIN 13
  SAY @14
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @15
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)
AreaCheck("AR2600")
GlobalGT("CbLetsMovePaddy","AR2600",4)
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",0)~ THEN BEGIN 15
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 18
  IF ~~ THEN REPLY @18 GOTO 16
  IF ~~ THEN REPLY @19 GOTO 19
END

IF ~~ THEN BEGIN 16
  SAY @20
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
  SAY @23
  IF ~~ THEN EXIT
END

IF ~Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",1)
AreaCheck("AR2600")~ THEN BEGIN 20
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 21
  IF ~~ THEN REPLY @26 GOTO 25
  IF ~~ THEN REPLY @27 GOTO 23
END

IF ~~ THEN BEGIN 21
  SAY @28
  IF ~~ THEN EXTERN ~CBHREDWN~ 10
END

IF ~~ THEN BEGIN 22
  SAY @29
  IF ~~ THEN EXTERN ~CBHREDWN~ 12
END

IF ~~ THEN BEGIN 23
  SAY @30
  IF ~~ THEN EXTERN ~CBMANARB~ 3
END

IF ~~ THEN BEGIN 24
  SAY @31
  IF ~~ THEN EXTERN ~CBMANARB~ 4
END

IF ~~ THEN BEGIN 25
  SAY @32
  IF ~~ THEN REPLY @33 EXIT
  IF ~~ THEN REPLY @34 EXIT
END

IF ~Global("CbZannasterFinallyChanging","AR3532",2)
AreaCheck("AR3532")~ THEN BEGIN 26
  SAY @35
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @36
  IF ~!HasItem("CBCO8HP1","CBMONDRP")
!HasItem("CBCO8HP1","CBTARDTH")~ THEN EXTERN ~CBMONDRP~ 37
  IF ~HasItem("CBCO8HP1","CBMONDRP")
!HasItem("CBCO8HP1","CBTARDTH")~ THEN EXTERN ~CBTARDTH~ 94
  IF ~HasItem("CBCO8HP1","CBMONDRP")
HasItem("CBCO8HP1","CBTARDTH")~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @37
  IF ~~ THEN DO ~SetGlobal("CbZannasterFinallyChanging","AR3532",3)
SetGlobal("Cb_PartyAlliesWith_C_o_8","GLOBAL",3)
ActionOverride("CBTARDTH",ChangeEnemyAlly("CBTARDTH",NEUTRAL))
ActionOverride("CBHREDWN",ChangeEnemyAlly("CBHREDWN",NEUTRAL))
ActionOverride("CBMONDRP",ChangeEnemyAlly("CBMONDRP",NEUTRAL))
ActionOverride("CBSTTFLW",ChangeEnemyAlly("CBSTTFLW",NEUTRAL))
ActionOverride("CBLSLNDA",ChangeEnemyAlly("CBLSLNDA",NEUTRAL))
ActionOverride("CBMANARB",ChangeEnemyAlly("CBMANARB",NEUTRAL))
ActionOverride("CBARKSLV",ChangeEnemyAlly("CBARKSLV",NEUTRAL))
ActionOverride("CBMONDRP",MoveBetweenAreas("AR2600",[4321.2618],0))
ActionOverride("CBLSLNDA",MoveBetweenAreas("AR2600",[4195.2457],0))
ActionOverride("CBHREDWN",MoveBetweenAreas("AR2600",[4276.2553],0))
ActionOverride("CBMANARB",MoveBetweenAreas("AR2600",[4117.2527],0))
ActionOverride("CBARKSLV",MoveBetweenAreas("AR2600",[4268.2606],0))
ActionOverride("CBTARDTH",MoveBetweenAreas("AR2600",[4221.2522],0))
ActionOverride("CBSTTFLW",MoveBetweenAreas("AR2600",[4157.2457],0))~ EXIT
END

IF ~AreaCheck("AR2600")
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",3)~ THEN BEGIN 29
  SAY @38
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @39
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @40
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @41
  IF ~~ THEN DO ~GiveItem("CBTTOOL1",LastTalkedToBy(Myself))
AddXPObject(Player1,20000)
AddXPObject(Player2,20000)
AddXPObject(Player3,20000)
AddXPObject(Player4,20000)
AddXPObject(Player5,20000)
AddXPObject(Player6,20000)
ReputationInc(1)
EraseJournalEntry(@44)
AddJournalEntry(@43,QUEST_DONE)~ GOTO 33
END

IF ~~ THEN BEGIN 33
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
