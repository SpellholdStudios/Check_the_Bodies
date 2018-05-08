BEGIN ~CBP1ACT4~ 1

IF ~Global("CbPeeWeePlayOne","AR0510",6)
Global("CbElCastsLightning","LOCALS",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXTERN ~CBP1ACT1~ 6
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBP1EL01")~ EXIT
END

IF ~Global("CbElCastsLightning","LOCALS",1)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXTERN ~CBP1ACT1~ 7
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBP1EL02")~ EXIT
END
