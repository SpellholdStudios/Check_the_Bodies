BEGIN ~CBSMHORS~

IF ~Global("MoondropsHorseStolenP1","AR2600",1)
Global("Cb_MoondropCounts","LOCALS",0)
!Global("MoondropsHorseKilled","AR2600",1)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("MoondropsHorseStolenP1","AR2600",0)
IncrementGlobal("Cb_MoondropCounts","LOCALS",1)
SetGlobalTimer("CbMoondropsHorseBothered","AR2600",60)
ClearAllActions()~ EXIT
END

IF ~Global("MoondropsHorseStolenP1","AR2600",1)
Global("Cb_MoondropCounts","LOCALS",1)
!Global("MoondropsHorseKilled","AR2600",1)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~SetGlobal("MoondropsHorseStolenP1","AR2600",0)
IncrementGlobal("Cb_MoondropCounts","LOCALS",1)
SetGlobalTimer("CbMoondropsHorseBothered","AR2600",60)
ClearAllActions()~ EXIT
END

IF ~Global("MoondropsHorseStolenP1","AR2600",1)
Global("Cb_MoondropCounts","LOCALS",2)
!Global("MoondropsHorseKilled","AR2600",1)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~SetGlobal("MoondropsHorseStolenP1","AR2600",0)
IncrementGlobal("Cb_MoondropCounts","LOCALS",1)
SetGlobalTimer("CbMoondropsHorseBothered","AR2600",60)
ClearAllActions()~ EXIT
END

IF ~Global("MoondropsHorseStolenP1","AR2600",1)
Global("Cb_MoondropCounts","LOCALS",3)
!Global("MoondropsHorseKilled","AR2600",1)~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~SetGlobal("MoondropsHorseStolenP1","AR2600",0)
IncrementGlobal("Cb_MoondropCounts","LOCALS",1)
SetGlobalTimer("CbMoondropsHorseBothered","AR2600",60)
ClearAllActions()~ EXIT
END

IF ~Global("MoondropsHorseStolenP1","AR2600",1)
Global("Cb_MoondropCounts","LOCALS",4)
!Global("MoondropsHorseKilled","AR2600",1)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN DO ~SetGlobal("MoondropsHorseStolenP1","AR2600",0)
IncrementGlobal("Cb_MoondropCounts","LOCALS",1)
SetGlobalTimer("CbMoondropsHorseBothered","AR2600",60)
ClearAllActions()~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN DO ~SetGlobal("Cb_CompanyOfEight_Attacked","GLOBAL",1)
SetGlobal("Cb_CompanyOfEightEnemy","LOCALS",1)
ActionOverride("CBARKSLV",ChangeEnemyAlly("CBARKSLV",ENEMY))
ActionOverride("CBHREDWN",ChangeEnemyAlly("CBHREDWN",ENEMY))
ActionOverride("CBLSLNDA",ChangeEnemyAlly("CBLSLNDA",ENEMY))
ActionOverride("CBMANARB",ChangeEnemyAlly("CBMANARB",ENEMY))
ActionOverride("CBSTTFLW",ChangeEnemyAlly("CBSTTFLW",ENEMY))
ActionOverride("CBMONDRP",ChangeEnemyAlly("CBMONDRP",ENEMY))
ActionOverride("CBTARDTH",ChangeEnemyAlly("CBTARDTH",ENEMY))
Shout(208)
Shout(209)
Enemy()~ EXIT
END

IF ~Global("MoondropsHorseStolenP2","AR2600",1)
Global("Cb_MoondropCounts","LOCALS",0)
!Global("MoondropsHorseKilled","AR2600",1)~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @8
  IF ~~ THEN DO ~SetGlobal("MoondropsHorseStolenP2","AR2600",0)
IncrementGlobal("Cb_MoondropCounts","LOCALS",1)
SetGlobalTimer("CbMoondropsHorseBothered","AR2600",60)
ClearAllActions()~ EXIT
END

IF ~Global("MoondropsHorseStolenP2","AR2600",1)
!Global("MoondropsHorseKilled","AR2600",1)
Global("Cb_MoondropCounts","LOCALS",1)
OR(3)
Global("Cb_MoondropCounts","LOCALS",2)
Global("Cb_MoondropCounts","LOCALS",3)
Global("Cb_MoondropCounts","LOCALS",4)~ THEN BEGIN 8
  SAY @9
  IF ~~ THEN DO ~SetGlobal("MoondropsHorseStolenP2","AR2600",0)
IncrementGlobal("Cb_MoondropCounts","LOCALS",1)
ClearAllActions()~ EXIT
END

IF ~Global("MoondropsHorseStolenP2","AR2600",1)
Global("Cb_MoondropCounts","LOCALS",5)
!Global("MoondropsHorseKilled","AR2600",1)~ THEN BEGIN 9
  SAY @10
  IF ~~ THEN GOTO 5
END

IF ~Global("MoondropsHorseKilled","AR2600",1)~ THEN BEGIN 10
  SAY @11
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Cb_CompanyOfEight_Attacked","GLOBAL",1)
SetGlobal("Cb_CompanyOfEightEnemy","LOCALS",1)
ActionOverride("CBARKSLV",ChangeEnemyAlly("CBARKSLV",ENEMY))
ActionOverride("CBHREDWN",ChangeEnemyAlly("CBHREDWN",ENEMY))
ActionOverride("CBLSLNDA",ChangeEnemyAlly("CBLSLNDA",ENEMY))
ActionOverride("CBMANARB",ChangeEnemyAlly("CBMANARB",ENEMY))
ActionOverride("CBSTTFLW",ChangeEnemyAlly("CBSTTFLW",ENEMY))
ActionOverride("CBMONDRP",ChangeEnemyAlly("CBMONDRP",ENEMY))
ActionOverride("CBTARDTH",ChangeEnemyAlly("CBTARDTH",ENEMY))
Shout(208)
Shout(209)
Enemy()~ EXIT
END
