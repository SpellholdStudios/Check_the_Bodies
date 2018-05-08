BEGIN ~CBVAMGRY~

IF ~Global("CbSpokeWithHareishan","AR0800",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~SetGlobal("CbSpokeWithHareishan","AR0800",1)
SetGlobal("CbSpawnParisa","GLOBAL",1)
Wait(1)
ReallyForceSpellDead(Myself,VAMPIRE_BAT_FORM_CHANGE)
Wait(1)
EscapeArea()~ EXIT
END
