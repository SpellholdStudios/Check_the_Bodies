BEGIN ~CBDYNDED~

IF ~Global("CbCutscene3512","AR3512",1)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("CbCutscene3512","AR3512",2)~ EXTERN ~CBMINDED~ 1
END

IF ~Global("CbCutscene3512","AR3512",3)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~SetGlobal("CbCutscene3512","AR3512",4)

	ActionOverride(Player1,LeaveAreaLUAPanic("AR3513","",[1.1],5))
	ActionOverride(Player1,LeaveAreaLUA("AR3513","",[1.1],5))
~ EXIT
END
