BEGIN ~CBC8CTZA~

IF ~Global("CbZannasterFinallyChanging","AR3532",1)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("CbZannasterFinallyChanging","AR3532",2)
ChangeAnimationNoEffect("CBC8CTZL")~ EXIT
END
