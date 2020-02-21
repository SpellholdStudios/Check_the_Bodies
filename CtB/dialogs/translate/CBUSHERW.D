BEGIN ~CBUSHERW~

IF ~Global("CbWeddingQuestStarts","GLOBAL",3)~ THEN BEGIN 0
  SAY @1
  IF ~PartyHasItem("CBSFINVI")
Global("CbWeddingQuestStarts","GLOBAL",3)~ THEN GOTO 1
  IF ~!PartyHasItem("CBSFINVI")~ THEN GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN DO ~SetGlobal("CbWeddingQuestStarts","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN EXIT
END

IF ~Global("CbWeddingQuestStarts","GLOBAL",4)~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN EXIT
END

IF ~GlobalGT("CbWeddingQuestStarts","GLOBAL",4)~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN DO ~SetGlobal("CbWeddingDialogPartOne","AR0505",18)
EscapeArea()~ EXTERN ~CBSAERKW~ 15
END
