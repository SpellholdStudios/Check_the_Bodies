BEGIN ~CBJAHDED~

IF ~Global("CbCutscene3511","AR3511",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("CbCutscene3511","AR3511",1)~ EXTERN ~CBKAHDED~ 0
END

IF ~Global("CbCutscene3511","AR3511",2)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CbCutscene3511","AR3511",5)~ EXTERN ~CBKAHDED~ 1
END

IF ~Global("CbCutscene3511","AR3511",6)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN DO ~Wait(1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBCT3512")
~ EXIT
END
