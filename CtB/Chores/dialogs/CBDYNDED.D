BEGIN ~CBDYNDED~

IF ~Global("CbCutscene3512","AR3512",1)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("CbCutscene3512","AR3512",2)~ EXTERN ~CBMINDED~ 1
END

IF ~Global("CbCutscene3512","AR3512",3)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~SetGlobal("CbCutscene3512","AR3512",4)
ClearAllActions()
FadeToColor([20.0],0)
Wait(1)
StartMovie("CBCTMOVE")
SetCutSceneLite(TRUE)
StartCutScene("CBCT3513")
~ EXIT
END
