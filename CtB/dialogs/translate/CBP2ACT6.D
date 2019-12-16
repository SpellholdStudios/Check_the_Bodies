BEGIN ~CBP2ACT6~ 1

IF ~~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXTERN ~CBP2ACT5~ 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXTERN ~CBP2ACT5~ 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~Global("PlayStarted","AR0510",0)~ THEN DO ~SetGlobal("CbPeeWeePlayTwo","AR0510",13)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBP2ACT7")~ EXIT
  IF ~GlobalGT("PlayStarted","AR0510",0)~ THEN DO ~SetGlobal("CbPeeWeePlayTwo","AR0510",13)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBP2ACT8")~ EXIT
END
