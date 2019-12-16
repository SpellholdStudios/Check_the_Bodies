BEGIN ~CBBDHELP~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1
  IF ~Global("CbSubduedBlueDragon","GLOBAL",1)~ THEN DO ~SetGlobal("Cb_DSACK_follows","LOCALS",0)
SetGlobal("Cb_DSACK_Helps","LOCALS",0)~ GOTO 1
  IF ~Global("CbSubduedBlueDragon","GLOBAL",2)~ THEN DO ~SetGlobal("Cb_DSACK_follows","LOCALS",0)
SetGlobal("Cb_DSACK_Helps","LOCALS",0)~ GOTO 2
  IF ~Global("CbSubduedBlueDragon","GLOBAL",3)~ THEN DO ~SetGlobal("Cb_DSACK_follows","LOCALS",0)
SetGlobal("Cb_DSACK_Helps","LOCALS",0)~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~SetGlobal("CbSubduedBlueDragon","GLOBAL",2)~ GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~SetGlobal("CbSubduedBlueDragon","GLOBAL",3)~ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CbSubduedBlueDragon","GLOBAL",4)~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Cb_DSACK_follows","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @13
  IF ~~ THEN DO ~SetGlobal("Cb_DSACK_Helps","LOCALS",1)~ EXIT
END

IF ~Global("Cb_DSACK_Helps","LOCALS",2)
GlobalLT("CbSubduedBlueDragon","GLOBAL",4)~ THEN BEGIN 9
  SAY @14
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~Global("Cb_DSACK_Helps","LOCALS",2)
Global("CbSubduedBlueDragon","GLOBAL",4)~ THEN BEGIN 10
  SAY @15
  IF ~~ THEN DO ~SetGlobal("Cb_DSACK_Pissed","GLOBAL",1)
EscapeArea()~ EXIT
END
