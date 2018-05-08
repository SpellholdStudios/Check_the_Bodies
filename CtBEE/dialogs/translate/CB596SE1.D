BEGIN ~CB596SE1~ 2

IF ~NumTimesTalkedTo(0)
Global("CbTaxAnnouncement","GLOBAL",3)~ THEN BEGIN 0
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
  IF ~~ THEN GOTO 5
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
  IF ~~ THEN DO ~CreateCreature("CBTAXAS1",[449.627],0)
CreateCreature("CBTAXAS2",[713.579],0)
CreateCreature("CBTAXAS3",[768.496],0)
CreateCreature("CBTAXAS4",[598.600],0)~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @9
  IF ~~ THEN DO ~SetGlobal("CbTaxAnnouncement","GLOBAL",4)
ActionOverride("CBTAXAS1",Attack("CB596SE6"))
ActionOverride("CBTAXAS2",Attack("CB596SE2"))
ActionOverride("CBTAXAS3",Attack("CB596SE4"))
ActionOverride("CBTAXAS4",Attack("CB596SE3"))
CreateCreature("CB596TOL",[578.489],0)
StartCutSceneMode()
StartCutScene("CBCUTTXd")~ EXIT
END

IF ~Global("CbBylannaEscapes","AR3596",2)
Global("CbTaxAnnouncement","GLOBAL",4)~ THEN BEGIN 9
  SAY @10
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @11
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @12
  IF ~~ THEN DO ~ActionOverride("CB596SE2",EscapeArea())
ActionOverride("CB596SE3",EscapeArea())
ActionOverride("CB596SE4",EscapeArea())
SetGlobal("CbBylannaEscapes","AR3596",4)
SetGlobal("CbTaxAnnouncement","GLOBAL",5)
EscapeArea()~ EXIT
END
