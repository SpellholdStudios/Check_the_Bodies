BEGIN ~CBP1ACT2~ 1

IF ~~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXTERN ~CBP1ACT1~ 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~MoveToPoint([906.430])~ EXTERN ~CBP1ACT3~ 0
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXTERN ~CBP1ACT3~ 2
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXTERN ~CBP1ACT1~ 5
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN EXTERN ~CBP1ACT3~ 8
END

IF ~~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN DO ~SetGlobal("CbPeeWeePlayOne","AR0510",5)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBP1ACT2")~ EXIT
END

IF ~Global("CbElCastsLots","AR0510",1)~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN DO ~CreateVisualEffectObject("SPGENHLA","CBP1ACT1")~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @8
  IF ~Global("PlayStarted","AR0510",0)~ THEN DO ~CreateVisualEffectObject("SPGENHLA","CBP1ACT1")
SetGlobal("CbPeeWeePlayOne","AR0510",7)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBP1ACT4")~ EXIT
  IF ~GlobalGT("PlayStarted","AR0510",0)~ THEN DO ~CreateVisualEffectObject("SPGENHLA","CBP1ACT1")
SetGlobal("CbPeeWeePlayOne","AR0510",7)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBP1ACT5")~ EXIT
END
