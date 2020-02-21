BEGIN ~CBP4ACT7~ 1

IF ~Global("CbScreening_Pirates","AR0510",3)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBP4PLYb")
~ EXIT
END

IF ~Global("CbScreening_Pirates","AR0510",4)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBP4PLYc")
~ EXIT
END

IF ~Global("CbScreening_Pirates","AR0510",5)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBP4PLYd")
~ EXIT
END
