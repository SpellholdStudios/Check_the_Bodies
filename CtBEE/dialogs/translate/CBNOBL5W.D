BEGIN ~CBNOBL5W~

IF ~~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("CbWeddingDialogPartOne","AR0504",6)~ EXTERN ~CBNOBL1W~ 0
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~SetGlobal("CbWeddingDialogPartOne","AR0504",14)~ EXTERN ~CBSURAYW~ 6
END
