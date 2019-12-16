BEGIN ~CB597RIR~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~CreateCreatureObjectOffset("CB597RIS",Myself,[-5.-5])
CreateCreatureObjectOffset("CB597RIS",Myself,[-5.-10])
CreateCreatureObjectOffset("CB597RIS",Myself,[-15.-5])
CreateCreatureObjectOffset("CB597RIS",Myself,[-5.-25])
CreateCreatureObjectOffset("CB597RIS",Myself,[-10.-5])~ EXIT
END
