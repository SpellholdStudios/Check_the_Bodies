BEGIN ~CBKHELCK~

IF ~GlobalLT("CbInterruptedKhelben","LOCALS",10)~ THEN BEGIN 0
  SAY @1
//  IF ~PartyHasItem("POTN02")~ THEN REPLY @4 DO ~~ EXIT
  IF ~~ THEN DO ~IncrementGlobal("CbInterruptedKhelben","LOCALS",1)~ EXIT
END

IF ~Global("CbInterruptedKhelben","LOCALS",10)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~IncrementGlobal("CbInterruptedKhelben","LOCALS",1)~ EXIT
END

IF ~True()~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~Enemy()~ EXIT
END
