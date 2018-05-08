BEGIN ~t#mdomo~

IF ~!TimeGT(19) !Global("CbCanDoWedding","GLOBAL",2)~ THEN BEGIN 0
SAY @1
=
@2
IF ~~ THEN EXIT
END

IF ~Global("CbWeddingQuestStarts","GLOBAL",3)~ THEN BEGIN 1
SAY @3
IF ~~ THEN EXIT
END

IF ~Global("CbWeddingQuestStarts","GLOBAL",7)~ THEN BEGIN 2
SAY @4
IF ~~ THEN EXIT
END

IF ~Global("CbWeddingQuestStarts","GLOBAL",8)~ THEN BEGIN 2
SAY @5
IF ~~ THEN EXIT
END
