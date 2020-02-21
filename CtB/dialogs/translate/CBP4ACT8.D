BEGIN ~CBP4ACT8~ 1

IF ~Global("CbScreening_Pirates","AR0510",6)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBP4PLYe")
~ EXIT
END

IF ~Global("CbScreening_Pirates","AR0510",7)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBP4PLYf")
~ EXIT
END

IF ~Global("CbScreening_Pirates","AR0510",8)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBP4PLYg")
~ EXIT
END

IF ~Global("CbScreening_Pirates","AR0510",9)~ THEN BEGIN 3
  SAY @2
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBP4PLYh")
~ EXIT
END
