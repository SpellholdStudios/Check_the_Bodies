BEGIN ~CBYUSEFW~

IF ~~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~SetGlobal("CbWeddingDialogPartOne","AR0504",12)~ EXTERN ~CBSURAYW~ 5
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CbWeddingDialogPartOne","AR0504",16)~ EXTERN ~CBSAERKW~ 13
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN EXTERN ~CBPASTRW~ 5
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
  IF ~~ THEN EXTERN ~CBSAERKW~ 16
END

IF ~~ THEN BEGIN 8
  SAY @9
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @10
  IF ~~ THEN DO ~SetGlobal("CbSurayahRunsAway","GLOBAL",3)
SetGlobal("CbSurayahDoesntGoToStronghold","AR0504",2)
SetGlobal("CbWeddingQuestStarts","GLOBAL",8)
ActionOverride("CBSAERKW",ChangeEnemyAlly("CBSAERKW",ENEMY))
Enemy()~ EXIT
END
