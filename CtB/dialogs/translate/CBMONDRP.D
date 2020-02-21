BEGIN ~CBMONDRP~

IF ~~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXTERN ~CBTARDTH~ 22
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXTERN ~CBARKSLV~ 3
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXTERN ~CBSTTFLW~ 1
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN EXTERN ~CBARKSLV~ 7
END

IF ~~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN EXTERN ~CBLSLNDA~ 3
END

IF ~RandomNum(5,1)
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",0)
AreaCheck("AR2600")~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @11
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",0)
AreaCheck("AR2600")~ THEN BEGIN 9
  SAY @12
  IF ~~ THEN EXTERN ~CBHREDWN~ 7
END

IF ~~ THEN BEGIN 10
  SAY @13
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",0)
AreaCheck("AR2600")~ THEN BEGIN 11
  SAY @14
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",0)
AreaCheck("AR2600")~ THEN BEGIN 12
  SAY @15
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @16
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",0)
GlobalLT("ElvenCityTree","GLOBAL",2)
AreaCheck("AR2600")~ THEN BEGIN 14
  SAY @17
  IF ~~ THEN EXIT
END

IF ~Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",1)
HasItem("CBTENTBD",Myself)
AreaCheck("AR2600")~ THEN BEGIN 15
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @22
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @27
  IF ~~ THEN DO ~GiveItem("CBTENTBD",LastTalkedToBy(Myself))~ EXIT
END

IF ~Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",1)
!HasItem("CBTENTBD",Myself)
AreaCheck("AR2600")~ THEN BEGIN 21
  SAY @28
  IF ~~ THEN REPLY @29 EXIT
  IF ~Global("Cb_MoondropStopsArchery","AR2600",0)~ THEN REPLY @30 GOTO 22
  IF ~Global("Cb_MoondropStopsArchery","AR2600",0)~ THEN REPLY @31 GOTO 24
  IF ~Global("Cb_MoondropStopsArchery","AR2600",1)~ THEN REPLY @32 GOTO 23
  IF ~Global("Cb_MoondropStopsArchery","AR2600",1)~ THEN REPLY @33 EXIT
  IF ~~ THEN REPLY @34 GOTO 26
  IF ~~ THEN REPLY @35 GOTO 29
  IF ~~ THEN REPLY @36 GOTO 33
END

IF ~~ THEN BEGIN 22
  SAY @37
  IF ~~ THEN DO ~SetGlobal("Cb_MoondropStopsArchery","AR2600",1)
ClearActions(Myself)
ActionOverride("CBHREDWN",ClearActions("CBHREDWN"))
ActionOverride("CBTARDTH",ClearActions("CBTARDTH"))~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY @38
  IF ~~ THEN DO ~SetGlobal("Cb_MoondropStopsArchery","AR2600",0)
SetGlobal("Cb_MoondropsInteraction","AR2600",0)~ EXIT
END

IF ~~ THEN BEGIN 24
  SAY @39
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @40
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26
  SAY @41
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @42
  IF ~~ THEN EXTERN ~CBHREDWN~ 8
END

IF ~~ THEN BEGIN 28
  SAY @43
  IF ~~ THEN EXTERN ~CBHREDWN~ 9
END

IF ~~ THEN BEGIN 29
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 30
  IF ~~ THEN REPLY @46 GOTO 31
END

IF ~~ THEN BEGIN 30
  SAY @47
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @48
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @49
  IF ~~ THEN REPLY @50 EXIT
END

IF ~~ THEN BEGIN 33
  SAY @51
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @52
  IF ~~ THEN EXTERN ~CBLSLNDA~ 8
END

IF ~~ THEN BEGIN 35
  SAY @53
  IF ~~ THEN EXIT
END

IF ~!CombatCounter(0)
Global("Cb_MoondropWarns","AR3531",0)
HPGT("CBMONDRP",10)~ THEN BEGIN 36
  SAY @54
  IF ~~ THEN EXTERN ~CBTARDTH~ 92
END

IF ~Global("CbZannasterFinallyChanging","AR3532",2)
AreaCheck("AR3532")~ THEN BEGIN 37
  SAY @55
  IF ~!HasItem("CBCO8HP1","CBTARDTH")~ THEN EXTERN ~CBTARDTH~ 93
  IF ~HasItem("CBCO8HP1","CBTARDTH")~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @56
  IF ~~ THEN DO ~SetGlobal("CbZannasterFinallyChanging","AR3532",3)
SetGlobal("Cb_PartyAlliesWith_C_o_8","GLOBAL",3)
ActionOverride("CBTARDTH",ChangeEnemyAlly("CBTARDTH",NEUTRAL))
ActionOverride("CBHREDWN",ChangeEnemyAlly("CBHREDWN",NEUTRAL))
ActionOverride("CBMONDRP",ChangeEnemyAlly("CBMONDRP",NEUTRAL))
ActionOverride("CBSTTFLW",ChangeEnemyAlly("CBSTTFLW",NEUTRAL))
ActionOverride("CBLSLNDA",ChangeEnemyAlly("CBLSLNDA",NEUTRAL))
ActionOverride("CBMANARB",ChangeEnemyAlly("CBMANARB",NEUTRAL))
ActionOverride("CBARKSLV",ChangeEnemyAlly("CBARKSLV",NEUTRAL))
ActionOverride("CBLSLNDA",MoveBetweenAreas("AR2600",[4195.2457],0))
ActionOverride("CBHREDWN",MoveBetweenAreas("AR2600",[4276.2553],0))
ActionOverride("CBMANARB",MoveBetweenAreas("AR2600",[4117.2527],0))
ActionOverride("CBARKSLV",MoveBetweenAreas("AR2600",[4268.2606],0))
ActionOverride("CBSTTFLW",MoveBetweenAreas("AR2600",[4157.2457],0))
ActionOverride("CBTARDTH",MoveBetweenAreas("AR2600",[4221.2522],0))
ActionOverride("CBMONDRP",MoveBetweenAreas("AR2600",[4321.2618],0))~ EXIT
END

IF ~AreaCheck("AR2600")
Global("Cb_PartyAlliesWith_C_o_8","GLOBAL",3)~ THEN BEGIN 39
  SAY @57
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @58
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY @59
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @60
  IF ~~ THEN DO ~GiveItem("CBMNAMUL",LastTalkedToBy(Myself))
AddXPObject(Player1,20000)
AddXPObject(Player2,20000)
AddXPObject(Player3,20000)
AddXPObject(Player4,20000)
AddXPObject(Player5,20000)
AddXPObject(Player6,20000)
ReputationInc(1)
EraseJournalEntry(@63)
AddJournalEntry(@62,QUEST_DONE)~ GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY @61
  IF ~~ THEN DO ~SetGlobal("Cb_PartyAlliesWith_C_o_8","GLOBAL",4)
ActionOverride("CBTARDTH",EscapeArea())
ActionOverride("CBHREDWN",EscapeArea())
ActionOverride("CBSTTFLW",EscapeArea())
ActionOverride("CBMONDRP",EscapeArea())
ActionOverride("CBMANARB",EscapeArea())
ActionOverride("CBLSLNDA",EscapeArea())
ActionOverride("CBARKSLV",EscapeArea())~ EXIT
END
