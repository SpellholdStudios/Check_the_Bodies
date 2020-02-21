BEGIN ~CB576WIZ~

IF ~Global("CbWizardsAndHakesharPlot","GLOBAL",1)
!Allegiance(Myself,ENEMY)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~ChangeEnemyAlly(Myself,ENEMY)~ EXIT
END

IF ~HPPercentLT(Myself,5)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~ClearAllActions()
CreateCreatureDoor("CBCWLWRY",[290.330],0)
CreateCreatureDoor("CBCWLWR2",[132.350],7)
Wait(2)~ EXIT
END
