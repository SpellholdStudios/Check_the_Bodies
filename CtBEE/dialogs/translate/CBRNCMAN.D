BEGIN ~CBRNCMAN~

IF ~Global("CbVampireSubQuestStart","GLOBAL",0)
Global("CbVernonDidIntro","LOCALS",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("CbVernonDidIntro","LOCALS",1)~ GOTO 4
  IF ~~ THEN REPLY @5 DO ~SetGlobal("CbVernonDidIntro","LOCALS",1)~ GOTO 6
  IF ~~ THEN REPLY @6 DO ~SetGlobal("CbVernonDidIntro","LOCALS",1)~ GOTO 9
  IF ~~ THEN REPLY @7 DO ~SetGlobal("CbVernonDidIntro","LOCALS",1)~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 9
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @12
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @13
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 9
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 9
  SAY @14
  IF ~~ THEN DO ~StartStore("CBRNCMAN",LastTalkedToBy(Myself))~ EXIT
END

IF ~Global("CbVampireSubQuestStart","GLOBAL",0)
Global("CbVernonDidIntro","LOCALS",1)~ THEN BEGIN 10
  SAY @15
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 9
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~Global("CbVampireSubQuestStart","GLOBAL",1)~ THEN BEGIN 11
  SAY @16
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @17
  IF ~!AreaCheck("AR3598")~ THEN GOTO 13
  IF ~AreaCheck("AR3598")~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY @18
  IF ~~ THEN DO ~SetGlobal("CbVampireSubQuestStart","GLOBAL",2)
MoveBetweenAreas("AR3598",[966.224],0)~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @19
  IF ~~ THEN DO ~SetGlobal("CbVampireSubQuestStart","GLOBAL",2)
MoveToPointNoInterrupt([966.224])
Face(0)~ EXIT
END

IF ~Global("CbVampireSubQuestStart","GLOBAL",2)~ THEN BEGIN 15
  SAY @20
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @21
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 18
  IF ~~ THEN REPLY @24 GOTO 19
  IF ~~ THEN REPLY @25 GOTO 20
  IF ~~ THEN REPLY @26 GOTO 21
  IF ~~ THEN REPLY @27 GOTO 22
END

IF ~~ THEN BEGIN 18
  SAY @28
  IF ~~ THEN REPLY @23 GOTO 18
  IF ~~ THEN REPLY @24 GOTO 19
  IF ~~ THEN REPLY @25 GOTO 20
  IF ~~ THEN REPLY @29 GOTO 23
  IF ~~ THEN REPLY @26 GOTO 21
  IF ~~ THEN REPLY @27 GOTO 22
END

IF ~~ THEN BEGIN 19
  SAY @30
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 20
  SAY @31
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 21
  SAY @32
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 22
  SAY @33
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 23
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 24
  IF ~~ THEN REPLY @36 GOTO 25
  IF ~~ THEN REPLY @37 GOTO 32
  IF ~~ THEN REPLY @38 GOTO 26
  IF ~~ THEN REPLY @39 GOTO 27
  IF ~~ THEN REPLY @40 GOTO 28
  IF ~~ THEN REPLY @41 GOTO 29
END

IF ~~ THEN BEGIN 24
  SAY @42
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 25
  SAY @43
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 26
  SAY @44
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 27
  SAY @45
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 28
  SAY @46
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 29
  SAY @47
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @48
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @49
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @50
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @51
  IF ~~ THEN REPLY @52 DO ~SetGlobal("CbThisGuyDid_34","LOCALS",1)~ GOTO 34
  IF ~~ THEN REPLY @53 DO ~SetGlobal("CbThisGuyDid_35","LOCALS",1)~ GOTO 35
  IF ~~ THEN REPLY @54 DO ~SetGlobal("CbThisGuyDid_36","LOCALS",1)~ GOTO 36
  IF ~~ THEN REPLY @55 DO ~SetGlobal("CbThisGuyDid_37","LOCALS",1)~ GOTO 37
  IF ~Global("CbThisGuyDid_34","LOCALS",1)
Global("CbThisGuyDid_35","LOCALS",1)
Global("CbThisGuyDid_36","LOCALS",1)
Global("CbThisGuyDid_37","LOCALS",1)~ THEN REPLY @56 GOTO 38
END

IF ~~ THEN BEGIN 34
  SAY @57
  IF ~~ THEN REPLY @53 DO ~SetGlobal("CbThisGuyDid_35","LOCALS",1)~ GOTO 35
  IF ~~ THEN REPLY @54 DO ~SetGlobal("CbThisGuyDid_36","LOCALS",1)~ GOTO 36
  IF ~~ THEN REPLY @55 DO ~SetGlobal("CbThisGuyDid_37","LOCALS",1)~ GOTO 37
  IF ~Global("CbThisGuyDid_34","LOCALS",1)
Global("CbThisGuyDid_35","LOCALS",1)
Global("CbThisGuyDid_36","LOCALS",1)
Global("CbThisGuyDid_37","LOCALS",1)~ THEN REPLY @56 GOTO 38
END

IF ~~ THEN BEGIN 35
  SAY @58
  IF ~~ THEN REPLY @52 DO ~SetGlobal("CbThisGuyDid_34","LOCALS",1)~ GOTO 34
  IF ~~ THEN REPLY @54 DO ~SetGlobal("CbThisGuyDid_36","LOCALS",1)~ GOTO 36
  IF ~~ THEN REPLY @55 DO ~SetGlobal("CbThisGuyDid_37","LOCALS",1)~ GOTO 37
  IF ~Global("CbThisGuyDid_34","LOCALS",1)
Global("CbThisGuyDid_35","LOCALS",1)
Global("CbThisGuyDid_36","LOCALS",1)
Global("CbThisGuyDid_37","LOCALS",1)~ THEN REPLY @56 GOTO 38
END

IF ~~ THEN BEGIN 36
  SAY @59
  IF ~~ THEN REPLY @52 DO ~SetGlobal("CbThisGuyDid_34","LOCALS",1)~ GOTO 34
  IF ~~ THEN REPLY @53 DO ~SetGlobal("CbThisGuyDid_35","LOCALS",1)~ GOTO 35
  IF ~~ THEN REPLY @55 DO ~SetGlobal("CbThisGuyDid_37","LOCALS",1)~ GOTO 37
  IF ~Global("CbThisGuyDid_34","LOCALS",1)
Global("CbThisGuyDid_35","LOCALS",1)
Global("CbThisGuyDid_36","LOCALS",1)
Global("CbThisGuyDid_37","LOCALS",1)~ THEN REPLY @56 GOTO 38
END

IF ~~ THEN BEGIN 37
  SAY @60
  IF ~~ THEN REPLY @52 DO ~SetGlobal("CbThisGuyDid_34","LOCALS",1)~ GOTO 34
  IF ~~ THEN REPLY @53 DO ~SetGlobal("CbThisGuyDid_35","LOCALS",1)~ GOTO 35
  IF ~~ THEN REPLY @54 DO ~SetGlobal("CbThisGuyDid_36","LOCALS",1)~ GOTO 36
  IF ~Global("CbThisGuyDid_34","LOCALS",1)
Global("CbThisGuyDid_35","LOCALS",1)
Global("CbThisGuyDid_36","LOCALS",1)
Global("CbThisGuyDid_37","LOCALS",1)~ THEN REPLY @56 GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @61
  IF ~~ THEN REPLY @62 DO ~SetGlobal("CbThisGuyDid_39","LOCALS",1)~ GOTO 39
  IF ~~ THEN REPLY @63 DO ~SetGlobal("CbThisGuyDid_40","LOCALS",1)~ GOTO 40
  IF ~~ THEN REPLY @64 DO ~SetGlobal("CbThisGuyDid_41","LOCALS",1)~ GOTO 41
  IF ~Global("CbThisGuyDid_39","LOCALS",1)
Global("CbThisGuyDid_40","LOCALS",1)
Global("CbThisGuyDid_41","LOCALS",1)~ THEN REPLY @65 GOTO 42
END

IF ~~ THEN BEGIN 39
  SAY @66
  IF ~~ THEN REPLY @62 DO ~SetGlobal("CbThisGuyDid_39","LOCALS",1)~ GOTO 39
  IF ~~ THEN REPLY @63 DO ~SetGlobal("CbThisGuyDid_40","LOCALS",1)~ GOTO 40
  IF ~~ THEN REPLY @64 DO ~SetGlobal("CbThisGuyDid_41","LOCALS",1)~ GOTO 41
  IF ~Global("CbThisGuyDid_39","LOCALS",1)
Global("CbThisGuyDid_40","LOCALS",1)
Global("CbThisGuyDid_41","LOCALS",1)~ THEN REPLY @65 GOTO 42
END

IF ~~ THEN BEGIN 40
  SAY @67
  IF ~~ THEN REPLY @62 DO ~SetGlobal("CbThisGuyDid_39","LOCALS",1)~ GOTO 39
  IF ~~ THEN REPLY @63 DO ~SetGlobal("CbThisGuyDid_40","LOCALS",1)~ GOTO 40
  IF ~~ THEN REPLY @64 DO ~SetGlobal("CbThisGuyDid_41","LOCALS",1)~ GOTO 41
  IF ~Global("CbThisGuyDid_39","LOCALS",1)
Global("CbThisGuyDid_40","LOCALS",1)
Global("CbThisGuyDid_41","LOCALS",1)~ THEN REPLY @65 GOTO 42
END

IF ~~ THEN BEGIN 41
  SAY @68
  IF ~~ THEN REPLY @62 DO ~SetGlobal("CbThisGuyDid_39","LOCALS",1)~ GOTO 39
  IF ~~ THEN REPLY @63 DO ~SetGlobal("CbThisGuyDid_40","LOCALS",1)~ GOTO 40
  IF ~~ THEN REPLY @64 DO ~SetGlobal("CbThisGuyDid_41","LOCALS",1)~ GOTO 41
  IF ~Global("CbThisGuyDid_39","LOCALS",1)
Global("CbThisGuyDid_40","LOCALS",1)
Global("CbThisGuyDid_41","LOCALS",1)~ THEN REPLY @65 GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @69
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY @70
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY @71
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
  SAY @72
  IF ~~ THEN REPLY @73 GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY @74
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @75
  IF ~OR(9)
Time(21)
Time(22)
Time(23)
Time(0)
Time(1)
Time(2)
Time(3)
Time(4)
Time(5)~ THEN REPLY @76 GOTO 52
  IF ~OR(15)
Time(6)
Time(7)
Time(8)
Time(9)
Time(10)
Time(11)
Time(12)
Time(13)
Time(14)
Time(15)
Time(16)
Time(17)
Time(18)
Time(19)
Time(20)~ THEN REPLY @76 GOTO 55
  IF ~~ THEN REPLY @77 GOTO 48
  IF ~~ THEN REPLY @78 GOTO 49
END

IF ~~ THEN BEGIN 48
  SAY @79
  IF ~OR(9)
Time(21)
Time(22)
Time(23)
Time(0)
Time(1)
Time(2)
Time(3)
Time(4)
Time(5)~ THEN REPLY @76 GOTO 52
  IF ~OR(15)
Time(6)
Time(7)
Time(8)
Time(9)
Time(10)
Time(11)
Time(12)
Time(13)
Time(14)
Time(15)
Time(16)
Time(17)
Time(18)
Time(19)
Time(20)~ THEN REPLY @76 GOTO 55
  IF ~~ THEN REPLY @78 GOTO 49
END

IF ~~ THEN BEGIN 49
  SAY @80
  IF ~~ THEN REPLY @81 GOTO 50
  IF ~OR(9)
Time(21)
Time(22)
Time(23)
Time(0)
Time(1)
Time(2)
Time(3)
Time(4)
Time(5)~ THEN REPLY @82 GOTO 52
  IF ~OR(15)
Time(6)
Time(7)
Time(8)
Time(9)
Time(10)
Time(11)
Time(12)
Time(13)
Time(14)
Time(15)
Time(16)
Time(17)
Time(18)
Time(19)
Time(20)~ THEN REPLY @82 GOTO 55
  IF ~~ THEN REPLY @83 GOTO 51
END

IF ~~ THEN BEGIN 50
  SAY @84
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51
  SAY @85
  IF ~~ THEN DO ~SetGlobal("CbVampireSubQuestFailed","GLOBAL",1)
ChangeEnemyAlly(Myself,ENEMY)~ EXIT
END

IF ~~ THEN BEGIN 52
  SAY @86
  IF ~~ THEN DO ~SetGlobal("CbVampireSubQuestStart","GLOBAL",3)
GiveItemCreate("CBVMPDR1",LastTalkedToBy(Myself),1,0,0)
GiveItemCreate("CBVMPDR2",LastTalkedToBy(Myself),1,0,0)
GiveItemCreate("CBVMPDR3",LastTalkedToBy(Myself),1,0,0)
GiveItemCreate("CBVMPCF1",LastTalkedToBy(Myself),1,0,0)
GiveItemCreate("CBVMPCF2",LastTalkedToBy(Myself),1,0,0)
GiveItemCreate("CBVMPCF3",LastTalkedToBy(Myself),1,0,0)
GiveItemCreate("CBVMPCF4",LastTalkedToBy(Myself),1,0,0)~ GOTO 53
END

IF ~~ THEN BEGIN 53
  SAY @87
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54
  SAY @88
  IF ~~ THEN DO ~SetGlobalTimer("CbMovingVampires","GLOBAL",2400)
ReallyForceSpellDead(Myself,VAMPIRE_BAT_FORM_CHANGE)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 55
  SAY @89
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56
  SAY @90
  IF ~~ THEN DO ~SetGlobal("CbVernonNight","LOCALS",1)~ EXIT
END

IF ~Global("CbVernonNight","LOCALS",1)~ THEN BEGIN 57
  SAY @91
  IF ~~ THEN DO ~SetGlobal("CbVampireSubQuestStart","GLOBAL",3)
GiveItemCreate("CBVMPDR1",LastTalkedToBy(Myself),1,0,0)
GiveItemCreate("CBVMPDR2",LastTalkedToBy(Myself),1,0,0)
GiveItemCreate("CBVMPDR3",LastTalkedToBy(Myself),1,0,0)
GiveItemCreate("CBVMPCF1",LastTalkedToBy(Myself),1,0,0)
GiveItemCreate("CBVMPCF2",LastTalkedToBy(Myself),1,0,0)
GiveItemCreate("CBVMPCF3",LastTalkedToBy(Myself),1,0,0)
GiveItemCreate("CBVMPCF4",LastTalkedToBy(Myself),1,0,0)~ GOTO 58
END

IF ~~ THEN BEGIN 58
  SAY @87
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59
  SAY @88
  IF ~~ THEN DO ~SetGlobalTimer("CbMovingVampires","GLOBAL",2400)
ReallyForceSpellDead(Myself,VAMPIRE_BAT_FORM_CHANGE)
DestroySelf()~ EXIT
END

IF ~Global("CbVampireSubQuestStart","GLOBAL",3)
Global("CbVampireFamilyMoved","AR0809",1)
AreaCheck("AR0809")~ THEN BEGIN 60
  SAY @92
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61
  SAY @93
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62
  SAY @94
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63
  SAY @95
  IF ~~ THEN DO ~SetGlobal("CbVampireSubQuestStart","GLOBAL",4)
AddJournalEntry(@97,INFO)
AddExperienceParty(25000)~ EXIT
END

IF ~Global("CbVampireSubQuestStart","GLOBAL",4)
Global("CbPartyReturnedAfterWarn","AR0809",1)
AreaCheck("AR0809")~ THEN BEGIN 64
  SAY @96
  IF ~~ THEN DO ~SetGlobal("CbVampireSubQuestFailed","GLOBAL",1)
ChangeEnemyAlly(Myself,ENEMY)~ EXIT
END
