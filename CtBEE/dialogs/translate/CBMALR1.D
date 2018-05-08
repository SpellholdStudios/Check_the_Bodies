BEGIN ~CBMALR1~

IF ~!PartyHasItem("CBMALDUP")
NumTimesTalkedTo(0)
!Global("CbTweakToFixInsaneWizard","GLOBAL",1)~ THEN BEGIN 0
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
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 12
  IF ~~ THEN REPLY @9 GOTO 30
  IF ~~ THEN REPLY @10 GOTO 31
END

IF ~~ THEN BEGIN 5
  SAY @11
  IF ~~ THEN DO ~SetNumTimesTalkedTo(0)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @18
  IF ~~ THEN DO ~SetNumTimesTalkedTo(0)
StartStore("CBMALR1a",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @19
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @20
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @21 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 12
  IF ~~ THEN REPLY @9 GOTO 30
  IF ~~ THEN REPLY @10 GOTO 31
END

IF ~~ THEN BEGIN 10
  SAY @22
  IF ~~ THEN DO ~SetNumTimesTalkedTo(0)
StartStore("CBMALR1b",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @23
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @21 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 12
  IF ~~ THEN REPLY @9 GOTO 30
  IF ~~ THEN REPLY @10 GOTO 31
END

IF ~~ THEN BEGIN 12
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @28
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
  SAY @29
  IF ~AreaCheck("AR1202")~ THEN DO ~SetGlobal("CbMalteseArtifact","GLOBAL",6)
SetGlobal("CbMalteseMageInWindspear","GLOBAL",2)
SetGlobal("CbPartyJoinsMalteseMage","GLOBAL",1)
SetGlobalTimer("CbPartyJoinsMalteseMageTimer","GLOBAL",1200)~ EXIT
  IF ~AreaCheck("AR1401")~ THEN DO ~SetGlobal("CbMalteseArtifact","GLOBAL",6)
SetGlobal("CbMalteseMageInTemple","GLOBAL",2)
SetGlobal("CbPartyJoinsMalteseMage","GLOBAL",1)
SetGlobalTimer("CbPartyJoinsMalteseMageTimer","GLOBAL",1200)~ EXIT
  IF ~AreaCheck("AR3570")~ THEN DO ~SetGlobal("CbMalteseArtifact","GLOBAL",6)
SetGlobal("CbMalteseMageInMeadow","GLOBAL",2)
SetGlobal("CbPartyJoinsMalteseMage","GLOBAL",1)
SetGlobalTimer("CbPartyJoinsMalteseMageTimer","GLOBAL",1200)~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 16
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @33 GOTO 20
END

IF ~~ THEN BEGIN 16
  SAY @34
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @35
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @36
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @33 GOTO 20
  IF ~~ THEN REPLY @37 GOTO 22
  IF ~~ THEN REPLY @27 GOTO 13
END

IF ~~ THEN BEGIN 19
  SAY @38
  IF ~~ THEN REPLY @31 GOTO 16
  IF ~~ THEN REPLY @37 GOTO 22
  IF ~~ THEN REPLY @33 GOTO 20
  IF ~~ THEN REPLY @27 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 14
END

IF ~~ THEN BEGIN 20
  SAY @39
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @40
  IF ~~ THEN REPLY @31 GOTO 16
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @37 GOTO 22
  IF ~~ THEN REPLY @27 GOTO 13
END

IF ~~ THEN BEGIN 22
  SAY @41
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @42
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @43
  IF ~~ THEN REPLY @44 GOTO 25
  IF ~~ THEN REPLY @45 GOTO 27
  IF ~~ THEN REPLY @46 GOTO 29
END

IF ~~ THEN BEGIN 25
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 26
  IF ~~ THEN REPLY @49 GOTO 27
  IF ~~ THEN REPLY @50 GOTO 29
END

IF ~~ THEN BEGIN 26
  SAY @51
  IF ~~ THEN DO ~SetGlobal("CbSpawnMageProtectors","MYAREA",1)
SetGlobal("CbMalteseArtifact","GLOBAL",6)
ActionOverride("CBMALR2",ChangeEnemyAlly("CBMALR2",ENEMY))
ActionOverride("CBMALR3",ChangeEnemyAlly("CBMALR3",ENEMY))
ActionOverride("CBMALR4",ChangeEnemyAlly("CBMALR4",ENEMY))
ActionOverride("CBMALR5",ChangeEnemyAlly("CBMALR5",ENEMY))
ActionOverride("CBMALR6",ChangeEnemyAlly("CBMALR6",ENEMY))
ActionOverride("CBMALR7",ChangeEnemyAlly("CBMALR7",ENEMY))
ActionOverride("CBMALR8",ChangeEnemyAlly("CBMALR8",ENEMY))
ChangeEnemyAlly(Myself,ENEMY)~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @52
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @53
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29
  SAY @29
  IF ~AreaCheck("AR1202")~ THEN DO ~SetGlobal("CbMalteseArtifact","GLOBAL",6)
SetGlobal("CbMalteseMageInWindspear","GLOBAL",2)
SetGlobal("CbPartyJoinsMalteseMage","GLOBAL",1)
SetGlobalTimer("CbPartyJoinsMalteseMageTimer","GLOBAL",1200)~ EXIT
  IF ~AreaCheck("AR1401")~ THEN DO ~SetGlobal("CbMalteseArtifact","GLOBAL",6)
SetGlobal("CbMalteseMageInTemple","GLOBAL",2)
SetGlobal("CbPartyJoinsMalteseMage","GLOBAL",1)
SetGlobalTimer("CbPartyJoinsMalteseMageTimer","GLOBAL",1200)~ EXIT
  IF ~AreaCheck("AR3570")~ THEN DO ~SetGlobal("CbMalteseArtifact","GLOBAL",6)
SetGlobal("CbMalteseMageInMeadow","GLOBAL",2)
SetGlobal("CbPartyJoinsMalteseMage","GLOBAL",1)
SetGlobalTimer("CbPartyJoinsMalteseMageTimer","GLOBAL",1200)~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY @54
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 12
  IF ~~ THEN REPLY @10 GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @55
  IF ~~ THEN REPLY @56 GOTO 32
  IF ~~ THEN REPLY @57 GOTO 33
END

IF ~~ THEN BEGIN 32
  SAY @58
  IF ~~ THEN DO ~SetGlobal("CbSpawnMageProtectors","MYAREA",1)
SetGlobal("CbMalteseArtifact","GLOBAL",6)
ActionOverride("CBMALR2",ChangeEnemyAlly("CBMALR2",ENEMY))
ActionOverride("CBMALR3",ChangeEnemyAlly("CBMALR3",ENEMY))
ActionOverride("CBMALR4",ChangeEnemyAlly("CBMALR4",ENEMY))
ActionOverride("CBMALR5",ChangeEnemyAlly("CBMALR5",ENEMY))
ActionOverride("CBMALR6",ChangeEnemyAlly("CBMALR6",ENEMY))
ActionOverride("CBMALR7",ChangeEnemyAlly("CBMALR7",ENEMY))
ActionOverride("CBMALR8",ChangeEnemyAlly("CBMALR8",ENEMY))
ChangeEnemyAlly(Myself,ENEMY)~ EXIT
END

IF ~~ THEN BEGIN 33
  SAY @59
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 12
  IF ~~ THEN REPLY @9 GOTO 30
END

IF ~Global("CbMalteseArtifact","GLOBAL",6)
Global("CbPartyJoinsMalteseMage","GLOBAL",1)
!PartyHasItem("CBMALDUP")
!GlobalTimerExpired("CbPartyJoinsMalteseMageTimer","GLOBAL")
!Global("CbTweakToFixInsaneWizard","GLOBAL",1)~ THEN BEGIN 34
  SAY @60
  IF ~~ THEN REPLY @61 GOTO 35
  IF ~~ THEN REPLY @62 GOTO 36
END

IF ~~ THEN BEGIN 35
  SAY @63
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 36
  SAY @64
  IF ~~ THEN EXIT
END

IF ~Global("CbMalteseArtifact","GLOBAL",6)
Global("CbPartyJoinsMalteseMage","GLOBAL",1)
!PartyHasItem("CBMALDUP")
GlobalTimerExpired("CbPartyJoinsMalteseMageTimer","GLOBAL")
!Global("CbTweakToFixInsaneWizard","GLOBAL",1)~ THEN BEGIN 37
  SAY @60
  IF ~~ THEN REPLY @61 GOTO 38
  IF ~~ THEN REPLY @62 GOTO 36
END

IF ~~ THEN BEGIN 38
  SAY @65
  IF ~~ THEN REPLY @66 GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @67
  IF ~~ THEN DO ~SetGlobal("CbMalteseArtifact","GLOBAL",7)
SetGlobal("CbPartyJoinsMalteseMage","GLOBAL",2)~ EXIT
END

IF ~PartyHasItem("CBMALDUP")
!Global("CbTweakToFixInsaneWizard","GLOBAL",1)~ THEN BEGIN 40
  SAY @68
  IF ~~ THEN REPLY @69 GOTO 41
  IF ~~ THEN REPLY @70 GOTO 42
  IF ~~ THEN REPLY @71 GOTO 73
END

IF ~~ THEN BEGIN 41
  SAY @72
  IF ~~ THEN DO ~TakePartyItem("CBMALDUP")~ EXIT
END

IF ~~ THEN BEGIN 42
  SAY @73
  IF ~~ THEN REPLY @74 GOTO 45
  IF ~~ THEN REPLY @69 GOTO 45
  IF ~~ THEN REPLY @75 GOTO 45
  IF ~~ THEN REPLY @76 GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY @77
  IF ~~ THEN REPLY @78 GOTO 45
  IF ~~ THEN REPLY @79 GOTO 44
  IF ~~ THEN REPLY @69 GOTO 45
  IF ~~ THEN REPLY @80 GOTO 45
END

IF ~~ THEN BEGIN 44
  SAY @81
  IF ~~ THEN REPLY @82 GOTO 47
  IF ~~ THEN REPLY @78 GOTO 45
  IF ~~ THEN REPLY @69 GOTO 45
  IF ~~ THEN REPLY @80 GOTO 45
END

IF ~~ THEN BEGIN 45
  SAY @83
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY @84
  IF ~~ THEN DO ~TakePartyItem("CBMALDUP")~ EXIT
END

IF ~~ THEN BEGIN 47
  SAY @85
  IF ~~ THEN REPLY @86 GOTO 49
  IF ~~ THEN REPLY @87 GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY @88
  IF ~~ THEN REPLY @86 GOTO 49
END

IF ~~ THEN BEGIN 49
  SAY @89
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50
  SAY @90
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51
  SAY @91
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52
  SAY @92
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
  SAY @93
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54
  SAY @94
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55
  SAY @95
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBMALR7K")~ EXIT
END

IF ~Global("CbTweakToFixInsaneWizard","GLOBAL",1)~ THEN BEGIN 56
  SAY @96
  IF ~~ THEN REPLY @97 DO ~SetGlobal("CbTweakToFixInsaneWizard","GLOBAL",2)~ GOTO 57
  IF ~~ THEN REPLY @98 DO ~SetGlobal("CbTweakToFixInsaneWizard","GLOBAL",2)~ GOTO 57
END

IF ~~ THEN BEGIN 57
  SAY @99
  IF ~~ THEN REPLY @100 GOTO 64
  IF ~~ THEN REPLY @101 GOTO 58
  IF ~~ THEN REPLY @102 GOTO 64
END

IF ~~ THEN BEGIN 58
  SAY @103
  IF ~CheckStatGT(LastTalkedToBy(),13,CHR)~ THEN REPLY @104 GOTO 59
  IF ~CheckStatLT(LastTalkedToBy(),14,CHR)~ THEN REPLY @118 GOTO 67
  IF ~~ THEN REPLY @100 GOTO 67
END

IF ~~ THEN BEGIN 59
  SAY @105
  IF ~CheckStatGT(LastTalkedToBy(),14,CHR)~ THEN REPLY @104 GOTO 60
  IF ~CheckStatLT(LastTalkedToBy(),15,CHR)~ THEN REPLY @104 GOTO 74
  IF ~~ THEN REPLY @100 GOTO 68
END

IF ~~ THEN BEGIN 60
  SAY @106
  IF ~CheckStatGT(LastTalkedToBy(),16,CHR)~ THEN REPLY @104 GOTO 61
  IF ~CheckStatLT(LastTalkedToBy(),17,CHR)~ THEN REPLY @104 GOTO 75
  IF ~~ THEN REPLY @100 GOTO 69
END

IF ~~ THEN BEGIN 61
  SAY @107
  IF ~CheckStatGT(LastTalkedToBy(),17,CHR)~ THEN REPLY @104 GOTO 62
  IF ~CheckStatLT(LastTalkedToBy(),18,CHR)~ THEN REPLY @104 GOTO 76
  IF ~~ THEN REPLY @100 GOTO 70
END

IF ~~ THEN BEGIN 62
  SAY @108
  IF ~CheckStatGT(LastTalkedToBy(),18,CHR)~ THEN REPLY @104 GOTO 63
  IF ~CheckStatLT(LastTalkedToBy(),19,CHR)~ THEN REPLY @104 GOTO 77
  IF ~~ THEN REPLY @100 GOTO 71
END

IF ~~ THEN BEGIN 63
  SAY @109
  IF ~~ THEN REPLY @100 GOTO 72
END

IF ~~ THEN BEGIN 64
  SAY @110
  IF ~~ THEN DO ~SetGlobal("CbMalteseArtifact","GLOBAL",7)
SetGlobal("CbPartyJoinsMalteseMage","GLOBAL",2)
SetGlobal("CbFakeMalteseRitual","GLOBAL",1)
TakePartyItem("CBMALDUP")
GiveItemCreate("CBMALR6a",LastTalkedToBy(Myself),1,0,0)~ GOTO 65
END

IF ~~ THEN BEGIN 65
  SAY @111
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66
  SAY @112
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 67
  SAY @110
  IF ~~ THEN DO ~SetGlobal("CbMalteseArtifact","GLOBAL",7)
SetGlobal("CbPartyJoinsMalteseMage","GLOBAL",2)
SetGlobal("CbFakeMalteseRitual","GLOBAL",1)
TakePartyItem("CBMALDUP")
GiveItemCreate("CBMALR6a",LastTalkedToBy(Myself),1,0,0)
GiveGoldForce(10000)~ GOTO 65
END

IF ~~ THEN BEGIN 68
  SAY @110
  IF ~~ THEN DO ~SetGlobal("CbMalteseArtifact","GLOBAL",7)
SetGlobal("CbPartyJoinsMalteseMage","GLOBAL",2)
SetGlobal("CbFakeMalteseRitual","GLOBAL",1)
TakePartyItem("CBMALDUP")
GiveItemCreate("CBMALR6a",LastTalkedToBy(Myself),1,0,0)
GiveGoldForce(20000)~ GOTO 65
END

IF ~~ THEN BEGIN 69
  SAY @110
  IF ~~ THEN DO ~SetGlobal("CbMalteseArtifact","GLOBAL",7)
SetGlobal("CbPartyJoinsMalteseMage","GLOBAL",2)
SetGlobal("CbFakeMalteseRitual","GLOBAL",1)
TakePartyItem("CBMALDUP")
GiveItemCreate("CBMALR6a",LastTalkedToBy(Myself),1,0,0)
GiveGoldForce(40000)~ GOTO 65
END

IF ~~ THEN BEGIN 70
  SAY @110
  IF ~~ THEN DO ~SetGlobal("CbMalteseArtifact","GLOBAL",7)
SetGlobal("CbPartyJoinsMalteseMage","GLOBAL",2)
SetGlobal("CbFakeMalteseRitual","GLOBAL",1)
TakePartyItem("CBMALDUP")
GiveItemCreate("CBMALR6a",LastTalkedToBy(Myself),1,0,0)
GiveGoldForce(80000)~ GOTO 65
END

IF ~~ THEN BEGIN 71
  SAY @110
  IF ~~ THEN DO ~SetGlobal("CbMalteseArtifact","GLOBAL",7)
SetGlobal("CbPartyJoinsMalteseMage","GLOBAL",2)
SetGlobal("CbFakeMalteseRitual","GLOBAL",1)
TakePartyItem("CBMALDUP")
GiveItemCreate("CBMALR6a",LastTalkedToBy(Myself),1,0,0)
GiveGoldForce(160000)~ GOTO 65
END

IF ~~ THEN BEGIN 72
  SAY @110
  IF ~~ THEN DO ~SetGlobal("CbMalteseArtifact","GLOBAL",7)
SetGlobal("CbPartyJoinsMalteseMage","GLOBAL",2)
SetGlobal("CbFakeMalteseRitual","GLOBAL",1)
TakePartyItem("CBMALDUP")
GiveItemCreate("CBMALR6a",LastTalkedToBy(Myself),1,0,0)
GiveGoldForce(320000)~ GOTO 65
END

IF ~~ THEN BEGIN 73
  SAY @113
  IF ~~ THEN DO ~TakePartyItem("CBMALDUP")~ EXIT
END

IF ~~ THEN BEGIN 74
  SAY @114
  IF ~~ THEN REPLY @118 GOTO 68
END

IF ~~ THEN BEGIN 75
  SAY @115
  IF ~~ THEN REPLY @118 GOTO 69
END

IF ~~ THEN BEGIN 76
  SAY @116
  IF ~~ THEN REPLY @118 GOTO 70
END

IF ~~ THEN BEGIN 77
  SAY @117
  IF ~~ THEN REPLY @118 GOTO 71
END
