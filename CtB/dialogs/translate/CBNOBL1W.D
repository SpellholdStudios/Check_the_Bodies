BEGIN ~CBNOBL1W~

IF ~~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("CbWeddingDialogPartOne","AR0504",7)~ EXTERN ~CBNOBL3W~ 0
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXTERN ~CBNOBL4W~ 1
END
