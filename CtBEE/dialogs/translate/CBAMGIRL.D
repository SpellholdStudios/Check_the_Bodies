BEGIN ~CBAMGIRL~

IF ~HasItem("CBAMCAKE",Myself)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 8
END

IF ~~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @7 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 3
  IF ~~ THEN REPLY @10 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 5
  IF ~~ THEN REPLY @15 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @16
  IF ~~ THEN DO ~GiveItem("CBAMCAKE",LastTalkedToBy(Myself))
TakePartyGold(1)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @16
  IF ~~ THEN DO ~GiveItem("CBAMCAKE",LastTalkedToBy(Myself))
GiveItem("CBAMCAKE",LastTalkedToBy(Myself))
GiveItem("CBAMCAKE",LastTalkedToBy(Myself))
GiveItem("CBAMCAKE",LastTalkedToBy(Myself))
GiveItem("CBAMCAKE",LastTalkedToBy(Myself))
GiveItem("CBAMCAKE",LastTalkedToBy(Myself))
GiveItem("CBAMCAKE",LastTalkedToBy(Myself))
GiveItem("CBAMCAKE",LastTalkedToBy(Myself))
GiveItem("CBAMCAKE",LastTalkedToBy(Myself))
GiveItem("CBAMCAKE",LastTalkedToBy(Myself))
TakePartyGold(1)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @18
  IF ~~ THEN EXIT
END

IF ~!HasItem("CBAMCAKE",Myself)~ THEN BEGIN 9
  SAY @19
  IF ~~ THEN EXIT
END
