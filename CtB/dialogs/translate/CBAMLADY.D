BEGIN ~CBAMLADY~

IF ~PartyHasItem("CBAMCAKE")~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXIT
END
