BEGIN ~CBBDAW01~

IF ~Global("CbBlueDragonAttacked","AR3521",1)
NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @1
  IF ~NumInParty(1)
~ THEN GOTO 1
  IF ~NumInParty(2)
~ THEN GOTO 2
  IF ~NumInParty(3)
~ THEN GOTO 3
  IF ~NumInParty(4)
~ THEN GOTO 4
  IF ~NumInParty(5)
~ THEN GOTO 5
  IF ~NumInParty(6)
~ THEN GOTO 6
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @8
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @9
  IF ~~ THEN DO ~SetGlobal("CbBlueDragonAttacked","AR3521",2)
SetGlobal("CbDSACKhasenemyscript","AR3521",1)
ChangeAIScript("CBBDENEM",OVERRIDE)
Enemy()
~ EXIT
END

IF ~Global("CbBlueDragonStealth","AR3521",1)
NumberOfTimesTalkedTo(0)
~ THEN BEGIN 9
  SAY @1
  IF ~NumInParty(1)
~ THEN GOTO 10
  IF ~NumInParty(2)
~ THEN GOTO 11
  IF ~NumInParty(3)
~ THEN GOTO 12
  IF ~NumInParty(4)
~ THEN GOTO 13
  IF ~NumInParty(5)
~ THEN GOTO 14
  IF ~NumInParty(6)
~ THEN GOTO 15
END

IF ~~ THEN BEGIN 10
  SAY @10
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 11
  SAY @11
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 12
  SAY @12
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 13
  SAY @13
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 14
  SAY @14
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 15
  SAY @15
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @16
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @17
  IF ~~ THEN GOTO 36
END

IF ~Global("CbBlueDragonStole","AR3521",1)
NumberOfTimesTalkedTo(0)
~ THEN BEGIN 18
  SAY @18
  IF ~NumInParty(1)
~ THEN GOTO 19
  IF ~NumInParty(2)
~ THEN GOTO 20
  IF ~NumInParty(3)
~ THEN GOTO 21
  IF ~NumInParty(4)
~ THEN GOTO 22
  IF ~NumInParty(5)
~ THEN GOTO 23
  IF ~NumInParty(6)
~ THEN GOTO 24
END

IF ~~ THEN BEGIN 19
  SAY @19
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 20
  SAY @20
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 21
  SAY @21
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 22
  SAY @22
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 23
  SAY @23
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 24
  SAY @24
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @25
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @17
  IF ~~ THEN GOTO 36
END

IF ~Global("CbBlueDragonSpoke","AR3521",1)
NumberOfTimesTalkedTo(0)
~ THEN BEGIN 27
  SAY @18
  IF ~NumInParty(1)
~ THEN GOTO 28
  IF ~NumInParty(2)
~ THEN GOTO 29
  IF ~NumInParty(3)
~ THEN GOTO 30
  IF ~NumInParty(4)
~ THEN GOTO 31
  IF ~NumInParty(5)
~ THEN GOTO 32
  IF ~NumInParty(6)
~ THEN GOTO 33
END

IF ~~ THEN BEGIN 28
  SAY @26
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 29
  SAY @27
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 30
  SAY @28
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 31
  SAY @29
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 32
  SAY @30
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 33
  SAY @31
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @32
  IF ~~ THEN GOTO 36
END

IF ~Global("CbBlueDragonAlerted","GLOBAL",1)
!Global("CbBlueDragonAttacked","AR3521",1)
!Global("CbBlueDragonStealth","AR3521",1)
!Global("CbBlueDragonStole","AR3521",1)
!Global("CbBlueDragonSpoke","AR3521",1)
NumberOfTimesTalkedTo(0)
~ THEN BEGIN 35
  SAY @33
  IF ~NumInParty(1)
~ THEN GOTO 28
  IF ~NumInParty(2)
~ THEN GOTO 29
  IF ~NumInParty(3)
~ THEN GOTO 30
  IF ~NumInParty(4)
~ THEN GOTO 31
  IF ~NumInParty(5)
~ THEN GOTO 32
  IF ~NumInParty(6)
~ THEN GOTO 33
END

IF ~~ THEN BEGIN 36
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 40
  IF ~~ THEN REPLY @36 GOTO 37
  IF ~~ THEN REPLY @37 GOTO 39
END

IF ~~ THEN BEGIN 37
  SAY @38
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @39
  IF ~~ THEN DO ~SetGlobal("CbBlueDragonAttacked","AR3521",2)
SetGlobal("CbDSACKhasenemyscript","AR3521",1)
ChangeAIScript("CBBDENEM",OVERRIDE)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 39
  SAY @40
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @41
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY @42
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @43
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 44
  IF ~~ THEN REPLY @46 GOTO 37
  IF ~~ THEN REPLY @47 GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 48
  IF ~~ THEN REPLY @50 GOTO 37
  IF ~~ THEN REPLY @51 GOTO 49
  IF ~~ THEN REPLY @52 GOTO 45
  IF ~~ THEN REPLY @53 GOTO 45
END

IF ~~ THEN BEGIN 45
  SAY @54
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY @55
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @39
  IF ~~ THEN DO ~SetGlobal("CbBlueDragonAttacked","AR3521",2)
SetGlobal("CbDSACKhasenemyscript","AR3521",1)
ChangeAIScript("CBBDENEM",OVERRIDE)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 48
  SAY @56
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 49
  SAY @57
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50
  SAY @58
  IF ~~ THEN REPLY @59 GOTO 51
  IF ~~ THEN REPLY @60 GOTO 54
  IF ~~ THEN REPLY @61 GOTO 52
  IF ~~ THEN REPLY @62 GOTO 53
END

IF ~~ THEN BEGIN 51
  SAY @63
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 52
  SAY @64
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 53
  SAY @65
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54
  SAY @66
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55
  SAY @67
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56
  SAY @68
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57
  SAY @69
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58
  SAY @70
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59
  SAY @71
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60
  SAY @72
  IF ~~ THEN REPLY @73 DO ~SetGlobal("Cb_DSACK_FeintDamage","AR3521",1)
~ GOTO 61
  IF ~~ THEN REPLY @74 DO ~SetGlobal("Cb_DSACK_FeintDamage","AR3521",2)
~ GOTO 61
  IF ~~ THEN REPLY @75 DO ~SetGlobal("Cb_DSACK_FeintDamage","AR3521",3)
~ GOTO 61
  IF ~~ THEN REPLY @76 DO ~SetGlobal("Cb_DSACK_FeintDamage","AR3521",4)
~ GOTO 61
END

IF ~~ THEN BEGIN 61
  SAY @77
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62
  SAY @78
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63
  SAY @79
  IF ~~ THEN REPLY @80 DO ~SetGlobal("Cb_DSACK_SpellLevel","AR3521",1)
~ GOTO 64
  IF ~~ THEN REPLY @81 DO ~SetGlobal("Cb_DSACK_SpellLevel","AR3521",2)
~ GOTO 65
  IF ~~ THEN REPLY @82 DO ~SetGlobal("Cb_DSACK_SpellLevel","AR3521",3)
~ GOTO 66
END

IF ~~ THEN BEGIN 64
  SAY @83
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 65
  SAY @84
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 66
  SAY @85
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67
  SAY @86
  IF ~~ THEN REPLY @87 DO ~SetGlobal("Cb_DSACK_WeaponChoice","AR3521",1)
~ GOTO 68
  IF ~~ THEN REPLY @88 DO ~SetGlobal("Cb_DSACK_WeaponChoice","AR3521",2)
~ GOTO 68
  IF ~~ THEN REPLY @89 DO ~SetGlobal("Cb_DSACK_WeaponChoice","AR3521",3)
~ GOTO 68
END

IF ~~ THEN BEGIN 68
  SAY @70
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69
  SAY @90
  IF ~~ THEN REPLY @91 DO ~SetGlobal("CbPlayerWantsTreasure","AR3521",1)
~ GOTO 70
  IF ~~ THEN REPLY @92 DO ~SetGlobal("CbPlayerWantsMagic","AR3521",1)
~ GOTO 71
  IF ~~ THEN REPLY @93 DO ~SetGlobal("CbPlayerWantsScales","AR3521",1)
~ GOTO 72
  IF ~~ THEN REPLY @94 DO ~SetGlobal("CbPlayerWantsDragon","AR3521",1)
~ GOTO 73
END

IF ~~ THEN BEGIN 70
  SAY @95
  IF ~~ THEN DO ~SetGlobal("Cb_DSACK_FeintAwards","AR3521",1)
SetGlobal("CbDragonWantsTreasure","AR3521",1)
~ GOTO 79
END

IF ~~ THEN BEGIN 71
  SAY @96
  IF ~~ THEN DO ~SetGlobal("Cb_DSACK_FeintAwards","AR3521",2)
SetGlobal("CbDragonWantsTreasure","AR3521",1)
~ GOTO 79
END

IF ~~ THEN BEGIN 72
  SAY @97
  IF ~~ THEN DO ~SetGlobal("Cb_DSACK_FeintAwards","AR3521",3)
SetGlobal("CbDragonWantsSkin","AR3521",1)
~ GOTO 79
END

IF ~~ THEN BEGIN 73
  SAY @98
  IF ~~ THEN REPLY @99 GOTO 75
  IF ~~ THEN REPLY @100 GOTO 74
END

IF ~~ THEN BEGIN 74
  SAY @101
  IF ~~ THEN REPLY @91 DO ~SetGlobal("CbPlayerWantsTreasure","AR3521",1)
~ GOTO 70
  IF ~~ THEN REPLY @92 DO ~SetGlobal("CbPlayerWantsMagic","AR3521",1)
~ GOTO 71
  IF ~~ THEN REPLY @93 DO ~SetGlobal("CbPlayerWantsScales","AR3521",1)
~ GOTO 72
  IF ~~ THEN REPLY @94 DO ~SetGlobal("CbPlayerWantsDragon","AR3521",1)
~ GOTO 73
END

IF ~~ THEN BEGIN 75
  SAY @102
  IF ~RandomNum(2,1)
~ THEN GOTO 76
  IF ~RandomNum(2,2)
~ THEN GOTO 77
END

IF ~~ THEN BEGIN 76
  SAY @103
  IF ~~ THEN DO ~SetGlobal("Cb_DSACK_FeintAwards","AR3521",4)
SetGlobal("CbDragonWantsTreasure","AR3521",1)
~ GOTO 78
END

IF ~~ THEN BEGIN 77
  SAY @104
  IF ~~ THEN DO ~SetGlobal("Cb_DSACK_FeintAwards","AR3521",4)
SetGlobal("CbDragonWantsSkin","AR3521",1)
~ GOTO 78
END

IF ~~ THEN BEGIN 78
  SAY @105
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79
  SAY @106
  IF ~Global("Cb_DSACK_SpellLevel","AR3521",1)
~ THEN GOTO 80
  IF ~Global("Cb_DSACK_SpellLevel","AR3521",2)
~ THEN GOTO 81
  IF ~Global("Cb_DSACK_SpellLevel","AR3521",3)
~ THEN GOTO 82
END

IF ~~ THEN BEGIN 80
  SAY @107
  IF ~Global("Cb_DSACK_FeintDamage","AR3521",1)
~ THEN GOTO 83
  IF ~Global("Cb_DSACK_FeintDamage","AR3521",2)
~ THEN GOTO 84
  IF ~Global("Cb_DSACK_FeintDamage","AR3521",3)
~ THEN GOTO 85
  IF ~Global("Cb_DSACK_FeintDamage","AR3521",4)
~ THEN GOTO 86
END

IF ~~ THEN BEGIN 81
  SAY @108
  IF ~Global("Cb_DSACK_FeintDamage","AR3521",1)
~ THEN GOTO 83
  IF ~Global("Cb_DSACK_FeintDamage","AR3521",2)
~ THEN GOTO 84
  IF ~Global("Cb_DSACK_FeintDamage","AR3521",3)
~ THEN GOTO 85
  IF ~Global("Cb_DSACK_FeintDamage","AR3521",4)
~ THEN GOTO 86
END

IF ~~ THEN BEGIN 82
  SAY @109
  IF ~Global("Cb_DSACK_FeintDamage","AR3521",1)
~ THEN GOTO 83
  IF ~Global("Cb_DSACK_FeintDamage","AR3521",2)
~ THEN GOTO 84
  IF ~Global("Cb_DSACK_FeintDamage","AR3521",3)
~ THEN GOTO 85
  IF ~Global("Cb_DSACK_FeintDamage","AR3521",4)
~ THEN GOTO 86
END

IF ~~ THEN BEGIN 83
  SAY @110
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 84
  SAY @111
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 85
  SAY @112
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 86
  SAY @113
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87
  SAY @114
  IF ~Global("Cb_DSACK_WeaponChoice","AR3521",1)
~ THEN GOTO 88
  IF ~Global("Cb_DSACK_WeaponChoice","AR3521",2)
~ THEN GOTO 89
  IF ~Global("Cb_DSACK_WeaponChoice","AR3521",3)
~ THEN GOTO 90
END

IF ~~ THEN BEGIN 88
  SAY @115
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 89
  SAY @116
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 90
  SAY @117
  IF ~~ THEN GOTO 93
END

IF ~False()~ THEN BEGIN 91
  SAY @118
  IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 92
  SAY @119
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 93
  SAY @120
  IF ~~ THEN DO ~SetGlobal("Cb_DSACKsFeintStart","AR3521",1)
ChangeAIScript("CBBDFENT",CLASS)
TriggerActivation("Tran3520",FALSE)
~ EXIT
END

IF ~Global("Cb_DSACKsFeintReady","AR3531",1)
~ THEN BEGIN 94
  SAY @121
  IF ~~ THEN REPLY @122 GOTO 95
  IF ~~ THEN REPLY @123 GOTO 96
END

IF ~~ THEN BEGIN 95
  SAY @124
  IF ~~ THEN DO ~SetGlobal("Cb_DSACKsFeintReady","AR3521",2)
SetGlobal("Cb_DSACKsFeintStart","AR3531",1)
ChangeAIScript("CBBDFENT",CLASS)
TriggerActivation("Tran3520",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 96
  SAY @125
  IF ~~ THEN EXIT
END

IF ~Global("Cb_DSACKsFeintStart","AR3521",2)
Global("Cb_DSACKsFeintLose","AR3521",1)
~ THEN BEGIN 97
  SAY @126
  IF ~Race(LastTalkedToBy(Myself),HUMAN)
~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)
ChangeAIScript("CBBDclas",CLASS)
ClearAllActions()
ClearAllActions()
ChangeAIScript("CBBDclas",CLASS)
ChangeEnemyAlly(Myself,NEUTRAL)
~ GOTO 98
END

IF ~~ THEN BEGIN 98
  SAY @127
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99
  SAY @128
  IF ~Global("CbDragonWantsTreasure","AR3521",1)
~ THEN GOTO 100
  IF ~Global("CbDragonWantsSkin","AR3521",1)
~ THEN GOTO 103
END

IF ~~ THEN BEGIN 100
  SAY @129
  IF ~~ THEN REPLY @130 GOTO 101
  IF ~~ THEN REPLY @131 GOTO 102
END

IF ~~ THEN BEGIN 101
  SAY @132
  IF ~~ THEN DO ~TakePartyGold(2147483647)
ActionOverride(Player1,DestroyAllEquipment())
ActionOverride(Player2,DestroyAllEquipment())
ActionOverride(Player3,DestroyAllEquipment())
ActionOverride(Player4,DestroyAllEquipment())
ActionOverride(Player5,DestroyAllEquipment())
ActionOverride(Player6,DestroyAllEquipment())
ClearAllActions()
SetGlobal("Cb_DSACK_FeintAwards","AR3521",3)
SetGlobal("CbDragonWantsTreasure","AR3521",2)
SetGlobal("Cb_DSACKsFeintStart","AR3521",3)
ActionOverride("CBBDFHJD",DestroySelf())
ActionOverride("CBBDFHJE",DestroySelf())
ChangeAIScript("CBBDclas",CLASS)
ClearAllActions()
ClearAllActions()
ChangeAIScript("CBBDclas",CLASS)
ChangeEnemyAlly(Myself,NEUTRAL)
TriggerActivation("Tran3520",TRUE)
ActionOverride(Player1,JumpToPoint([842.916]))
ActionOverride(Player2,JumpToPoint([852.926]))
ActionOverride(Player3,JumpToPoint([832.986]))
ActionOverride(Player4,JumpToPoint([842.876]))
ActionOverride(Player5,JumpToPoint([852.886]))
ActionOverride(Player6,JumpToPoint([832.866]))
~ EXIT
END

IF ~~ THEN BEGIN 102
  SAY @133
  IF ~~ THEN DO ~SetGlobal("Cb_DSACK_FeintAwards","AR3521",2)
SetGlobal("CbDragonWantsTreasure","AR3521",2)
SetGlobal("Cb_DSACKsFeintStart","AR3521",3)
SetGlobal("CbBlueDragonAttacked","AR3521",2)
ChangeAIScript("CBBDENEM",OVERRIDE)
ChangeEnemyAlly("CBBDAW01",ENEMY)
ActionOverride("CBBDFHJD",DestroySelf())
ActionOverride("CBBDFHJE",DestroySelf())
ClearAllActions()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 103
  SAY @134
  IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 104
  SAY @135
  IF ~~ THEN REPLY @136 GOTO 106
  IF ~~ THEN REPLY @137 GOTO 105
END

IF ~~ THEN BEGIN 105
  SAY @138
  IF ~~ THEN DO ~SetGlobal("Cb_DSACK_FeintAwards","AR3521",2)
SetGlobal("CbDragonWantsSkin","AR3521",2)
SetGlobal("Cb_DSACKsFeintStart","AR3521",3)
SetGlobal("CbBlueDragonAttacked","AR3521",2)
ChangeAIScript("CBBDENEM",OVERRIDE)
ActionOverride("CBBDFHJD",DestroySelf())
ActionOverride("CBBDFHJE",DestroySelf())
ClearAllActions()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 106
  SAY @139
  IF ~~ THEN DO ~SetGlobal("Cb_DSACK_FeintAwards","AR3521",2)
SetGlobal("CbDragonWantsSkin","AR3521",2)
SetGlobal("Cb_DSACKsFeintStart","AR3521",3)
SetGlobal("Cb_DSACK_TakesPlayer1sSkin","GLOBAL",1)
SetGlobal("Cb_DSACK_TakesPlayer1sSkin","AR3521",1)
ChangeAIScript("CBBDCLAS",CLASS)
ActionOverride("CBBDFHJD",DestroySelf())
ActionOverride("CBBDFHJE",DestroySelf())
ClearAllActions()
ClearAllActions()
ChangeAIScript("CBBDclas",CLASS)
ChangeEnemyAlly(Myself,NEUTRAL)
TriggerActivation("Tran3520",TRUE)
ActionOverride(Player1,JumpToPoint([842.916]))
ActionOverride(Player2,JumpToPoint([852.926]))
ActionOverride(Player3,JumpToPoint([832.986]))
ActionOverride(Player4,JumpToPoint([842.876]))
ActionOverride(Player5,JumpToPoint([852.886]))
ActionOverride(Player6,JumpToPoint([832.866]))
~ EXIT
END

IF ~Global("Cb_DSACKsFeintStart","AR3521",2)
Global("Cb_DSACKsFeintWin","AR3521",1)
~ THEN BEGIN 107
  SAY @140
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)
ClearAllActions()
ClearAllActions()
ChangeAIScript("CBBDclas",CLASS)
ChangeEnemyAlly(Myself,NEUTRAL)
~ GOTO 108
END

IF ~~ THEN BEGIN 108
  SAY @127
  IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 109
  SAY @141
  IF ~Global("CbPlayerWantsTreasure","AR3521",1)
~ THEN GOTO 110
  IF ~Global("CbPlayerWantsMagic","AR3521",1)
~ THEN GOTO 112
  IF ~Global("CbPlayerWantsScales","AR3521",1)
~ THEN GOTO 116
  IF ~Global("CbPlayerWantsDragon","AR3521",1)
~ THEN GOTO 118
END

IF ~~ THEN BEGIN 110
  SAY @142
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111
  SAY @143
  IF ~~ THEN DO ~ClearAllActions()
GivePartyAllEquipment()
ActionOverride("CBBDFHJD",DestroySelf())
ActionOverride("CBBDFHJE",DestroySelf())
SetGlobal("Cb_DSACKsFeintStart","AR3521",3)
SetGlobal("Cb_DSACKsFeintWin","AR3521",2)
SetGlobal("Cb_DSACK_FeintAwards","AR3521",2)
SetGlobal("Cb_DSACK_Pissed","AR3521",1)
ClearAllActions()
ClearAllActions()
ChangeAIScript("CBBDclas",CLASS)
ChangeEnemyAlly(Myself,NEUTRAL)
TriggerActivation("Tran3520",TRUE)
ActionOverride(Player1,JumpToPoint([842.916]))
ActionOverride(Player2,JumpToPoint([852.926]))
ActionOverride(Player3,JumpToPoint([832.986]))
ActionOverride(Player4,JumpToPoint([842.876]))
ActionOverride(Player5,JumpToPoint([852.886]))
ActionOverride(Player6,JumpToPoint([832.866]))
~ EXIT
END

IF ~~ THEN BEGIN 112
  SAY @144
  IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 113
  SAY @145
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114
  SAY @146
  IF ~~ THEN DO ~ClearAllActions()
GiveItemCreate("SCRL1E",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRL1K",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRL1P",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRL1T",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRL1Z",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRL2E",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRL5C",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRL5F",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRL5T",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRL6D",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRL6K",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRL6Q",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRL6W",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRL7E",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRL7C",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRL7S",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRL7W",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRL8P",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRL8Y",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRL9E",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRLB1",LastTalkedToBy(Myself),1,1,1)
GiveItemCreate("SCRLB4",LastTalkedToBy(Myself),1,1,1)
ActionOverride("CBBDFHJD",DestroySelf())
ActionOverride("CBBDFHJE",DestroySelf())
ClearAllActions()
ClearAllActions()
ChangeAIScript("CBBDclas",CLASS)
ChangeEnemyAlly(Myself,NEUTRAL)
~ GOTO 115
END

IF ~~ THEN BEGIN 115
  SAY @147
  IF ~~ THEN DO ~SetGlobal("Cb_DSACK_Pissed","AR3521",1)
SetGlobal("Cb_DSACK_FeintAwards","AR3521",2)
SetGlobal("Cb_DSACKsFeintStart","AR3521",3)
SetGlobal("Cb_DSACKsFeintWin","AR3521",2)
ActionOverride("CBBDFHJD",DestroySelf())
ActionOverride("CBBDFHJE",DestroySelf())
ClearAllActions()
ClearAllActions()
ChangeAIScript("CBBDclas",CLASS)
ChangeEnemyAlly(Myself,NEUTRAL)
TriggerActivation("Tran3520",TRUE)
ActionOverride(Player1,JumpToPoint([842.916]))
ActionOverride(Player2,JumpToPoint([852.926]))
ActionOverride(Player3,JumpToPoint([832.986]))
ActionOverride(Player4,JumpToPoint([842.876]))
ActionOverride(Player5,JumpToPoint([852.886]))
ActionOverride(Player6,JumpToPoint([832.866]))
~ EXIT
END

IF ~~ THEN BEGIN 116
  SAY @148
  IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117
  SAY @149
  IF ~~ THEN DO ~ClearAllActions()
ApplySpell(Myself,FORCE_DAMAGE_1)
ApplySpell(Myself,FORCE_DAMAGE_1)
ApplySpell(Myself,FORCE_DAMAGE_1)
GiveItemCreate("CBBDSCLE",Player1,1,0,0)
ActionOverride("CBBDFHJD",DestroySelf())
ActionOverride("CBBDFHJE",DestroySelf())
~ GOTO 115
END

IF ~~ THEN BEGIN 118
  SAY @150
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 119
  SAY @151
  IF ~~ THEN GOTO 120
END

IF ~~ THEN BEGIN 120
  SAY @152
  IF ~~ THEN GOTO 121
END

IF ~~ THEN BEGIN 121
  SAY @153
  IF ~~ THEN DO ~ClearAllActions()
GiveItemCreate("CBBDTOTH",Player1,1,3,0)
ActionOverride("CBBDFHJD",DestroySelf())
ActionOverride("CBBDFHJE",DestroySelf())
~ GOTO 122
END

IF ~~ THEN BEGIN 122
  SAY @154
  IF ~~ THEN GOTO 123
END

IF ~~ THEN BEGIN 123
  SAY @155
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("Cb_DSACK_Pissed","AR3521",1)
SetGlobal("CbSubduedBlueDragon","GLOBAL",1)
SetGlobal("Cb_DSACK_FeintAwards","AR3521",2)
SetGlobal("Cb_DSACKsFeintStart","AR3521",3)
SetGlobal("Cb_DSACKsFeintWin","AR3521",2)
ActionOverride("CBBDFHJD",DestroySelf())
ActionOverride("CBBDFHJE",DestroySelf())
ClearAllActions()
TriggerActivation("Tran3520",TRUE)
ActionOverride(Player1,JumpToPoint([842.916]))
ActionOverride(Player2,JumpToPoint([852.926]))
ActionOverride(Player3,JumpToPoint([832.986]))
ActionOverride(Player4,JumpToPoint([842.876]))
ActionOverride(Player5,JumpToPoint([852.886]))
ActionOverride(Player6,JumpToPoint([832.866]))
~ EXIT
END

IF ~Global("Cb_DSACK_Pissed","AR3521",1)
Global("CbEnteredDSACKsLair","AR3521",0)
~ THEN BEGIN 124
  SAY @156
  IF ~~ THEN DO ~SetGlobal("CbEnteredDSACKsLair","AR3521",1)
~ EXIT
END

IF ~Global("Cb_DSACK_Pissed","AR3521",1)
Global("CbEnteredDSACKsLair","AR3521",1)
~ THEN BEGIN 125
  SAY @157
  IF ~~ THEN GOTO 126
END

IF ~~ THEN BEGIN 126
  SAY @39
  IF ~~ THEN DO ~SetGlobal("CbBlueDragonAttacked","AR3521",2)
ChangeAIScript("CBBDENEM",OVERRIDE)
Enemy()
~ EXIT
END

IF ~Global("Cb_DSACKsFeintReady","AR3531",1)
HPPercentGT(Player1,99)
HPPercentGT(Player2,99)
HPPercentGT(Player3,99)
HPPercentGT(Player4,99)
HPPercentGT(Player5,99)
HPPercentGT(Player6,99)~ THEN BEGIN 127
  SAY @120
  IF ~~ THEN DO ~SetGlobal("Cb_DSACKsFeintReady","AR3531",1)
SetGlobal("Cb_DSACKsFeintStart","AR3521",1)
ChangeAIScript("CBBDFENT",CLASS)
TriggerActivation("Tran3520",FALSE)
~ EXIT
END
