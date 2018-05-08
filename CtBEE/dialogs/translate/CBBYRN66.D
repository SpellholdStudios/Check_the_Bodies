BEGIN ~CBBYRN66~

IF ~NumTimesTalkedTo(0)
!Gender(Player1,MALE)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~NumTimesTalkedTo(0)
Gender(Player1,MALE)~ THEN BEGIN 1
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
  IF ~~ THEN DO ~SetGlobal("CbShadowThievesCapturePC","GLOBAL",5)
SetGlobal("CbBodhiJob","GLOBAL",5)
SetGlobal("CbWorkingForBodhi","GLOBAL",5)
ClearAllActions()
HideGUI()
Wait(1)
StartCutSceneMode()
StartCutScene("CBOWENTT")~ EXIT
END
