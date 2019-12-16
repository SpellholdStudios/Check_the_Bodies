BEGIN ~CB3575EX~

IF ~True()~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("CbSpelunking","AR3575",0)
ActionOverride("CB3575EX",DestroySelf())
~ EXIT
  IF ~~ THEN REPLY @4 DO ~SetGlobal("CbSpelunking","AR3575",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CB3575EY")
~ EXIT
END
