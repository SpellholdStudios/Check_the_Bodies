BEGIN ~CBSAERKW~

IF ~Global("CbWeddingQuestStarts","GLOBAL",4)
Global("CbWeddingDialogPartOne","AR0504",0)~ THEN BEGIN 0
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
  IF ~~ THEN DO ~SetGlobal("CbWeddingDialogPartOne","AR0504",1)~ EXTERN ~CBSURAYW~ 0
END

IF ~~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN DO ~SetGlobal("CbWeddingDialogPartOne","AR0504",3)~ EXTERN ~CBSURAYW~ 1
END

IF ~~ THEN BEGIN 7
  SAY @8
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @9
  IF ~~ THEN DO ~SetGlobal("CbWeddingDialogPartOne","AR0504",5)~ EXTERN ~CBNOBL2W~ 0
END

IF ~~ THEN BEGIN 9
  SAY @10
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @11
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @12
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @13
  IF ~~ THEN DO ~SetGlobal("CbWeddingDialogPartOne","AR0504",11)~ EXTERN ~CBYUSEFW~ 0
END

IF ~~ THEN BEGIN 13
  SAY @14
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @15
  IF ~~ THEN DO ~SetGlobal("CbWeddingDialogPartOne","AR0504",17)~ EXTERN ~CBUSHERW~ 7
END

IF ~~ THEN BEGIN 15
  SAY @16
  IF ~~ THEN DO ~SetGlobal("CbWeddingDialogPartOne","AR0504",19)
SetGlobal("CbWeddingQuestStarts","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @17
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @18
  IF ~~ THEN EXTERN ~CBSURAYW~ 32
END

IF ~Global("CbSurayahGetsMarried","GLOBAL",4)
Global("CbWeddingQuestStarts","GLOBAL",7)~ THEN BEGIN 18
  SAY @19
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @20
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @21
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @22
  IF ~~ THEN DO ~SetGlobal("CbSurayahGetsMarried","GLOBAL",5)
SetGlobal("CbWeddingQuestStarts","GLOBAL",7)~ EXIT
END

IF ~Global("CbSurayahRunsAway","GLOBAL",1)
Global("CbWeddingQuestStarts","GLOBAL",6)
~ THEN BEGIN 22
  SAY @23
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 24
  IF ~~ THEN REPLY @26 GOTO 26
  IF ~~ THEN REPLY @27 GOTO 29
END

IF ~~ THEN BEGIN 24
  SAY @28
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @29
  IF ~~ THEN EXTERN ~CBSURAYW~ 33
END

IF ~~ THEN BEGIN 26
  SAY @30
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @31
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @32
  IF ~~ THEN EXTERN ~CBSURAYW~ 35
END

IF ~~ THEN BEGIN 29
  SAY @33
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @34
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @35
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 32
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 33
  IF ~~ THEN REPLY @38 GOTO 37
END

IF ~~ THEN BEGIN 33
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @41
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35
  SAY @42
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY @43
  IF ~~ THEN EXTERN ~CBSURAYW~ 35
END

IF ~~ THEN BEGIN 37
  SAY @44
  IF ~~ THEN REPLY @40 EXIT
END

IF ~~ THEN BEGIN 38
  SAY @45
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @46
  IF ~~ THEN REPLY @47 EXTERN ~CBSURAYW~ 38
  IF ~~ THEN REPLY @48 EXTERN ~CBSURAYW~ 37
END

IF ~~ THEN BEGIN 40
  SAY @49
  IF ~~ THEN DO ~SetGlobalTimer("CbSurayahsWedding","AR0504",1)
SetGlobal("CbSurayahGetsMarried","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 41
  SAY @50
  IF ~GlobalGT("PCKeepOwner","GLOBAL",0)
!Global("Stripped","GLOBAL",1)~ THEN REPLY @51 DO ~SetGlobal("CbSurayahRunsAway","GLOBAL",2)
SetGlobal("CbWeddingQuestStarts","GLOBAL",7)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBSURAYD")~ EXIT
  IF ~GlobalGT("GreatDruid","GLOBAL",0)
!Global("Stripped","GLOBAL",1)~ THEN REPLY @52 DO ~SetGlobal("CbSurayahRunsAway","GLOBAL",2)
SetGlobal("CbWeddingQuestStarts","GLOBAL",7)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBSURAYE")~ EXIT
  IF ~GlobalGT("PCSphere","GLOBAL",0)
!Global("Stripped","GLOBAL",1)~ THEN REPLY @53 DO ~SetGlobal("CbSurayahRunsAway","GLOBAL",2)
SetGlobal("CbWeddingQuestStarts","GLOBAL",7)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBSURAYF")~ EXIT
  IF ~GlobalGT("RangerProtector","GLOBAL",0)
!Global("Stripped","GLOBAL",1)~ THEN REPLY @54 DO ~SetGlobal("CbSurayahRunsAway","GLOBAL",2)
SetGlobal("CbWeddingQuestStarts","GLOBAL",7)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBSURAYA")~ EXIT
  IF ~GlobalGT("PlayerThiefGuild","GLOBAL",0)
!Global("Stripped","GLOBAL",1)~ THEN REPLY @55 DO ~SetGlobal("CbSurayahRunsAway","GLOBAL",2)
SetGlobal("CbWeddingQuestStarts","GLOBAL",7)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBSURAYB")~ EXIT
  IF ~GlobalGT("playhouse","GLOBAL",0)
!Global("Stripped","GLOBAL",1)~ THEN REPLY @56 DO ~SetGlobal("CbSurayahRunsAway","GLOBAL",2)
SetGlobal("CbWeddingQuestStarts","GLOBAL",7)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBSURAYC")~ EXIT
  IF ~GlobalGT("PaladinOrder","GLOBAL",0)
!Global("Stripped","GLOBAL",1)~ THEN REPLY @57 DO ~SetGlobal("CbSurayahRunsAway","GLOBAL",2)
SetGlobal("CbWeddingQuestStarts","GLOBAL",7)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBSURAYG")~ EXIT
  IF ~GlobalGT("JoinLathander","GLOBAL",0)
!Global("Stripped","GLOBAL",1)~ THEN REPLY @58 DO ~SetGlobal("CbSurayahRunsAway","GLOBAL",2)
SetGlobal("CbWeddingQuestStarts","GLOBAL",7)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBSURAYH")~ EXIT
  IF ~GlobalGT("JoinTalos","GLOBAL",0)
!Global("Stripped","GLOBAL",1)~ THEN REPLY @59 DO ~SetGlobal("CbSurayahRunsAway","GLOBAL",2)
SetGlobal("CbWeddingQuestStarts","GLOBAL",7)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBSURAYI")~ EXIT
  IF ~~ THEN REPLY @60 EXTERN ~CBSURAYW~ 39
END

IF ~Global("CbSurayahRunsAway","GLOBAL",2)
Global("CbSurayahDoesntGoToStronghold","AR0504",1)
Global("CbWeddingQuestStarts","GLOBAL",7)~ THEN BEGIN 42
  SAY @61
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY @62
  IF ~~ THEN EXTERN ~CBYUSEFW~ 8
END
