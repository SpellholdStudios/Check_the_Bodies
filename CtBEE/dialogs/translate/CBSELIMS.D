BEGIN ~CBSELIMS~

IF ~True()~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~IncrementGlobal("CbSelimAsksForKnowledge","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~Global("CbSelimAsksForKnowledge","GLOBAL",1)~ THEN REPLY @4 GOTO 3
  IF ~Global("CbSelimAsksForKnowledge","GLOBAL",1)~ THEN REPLY @5 GOTO 4
  IF ~Global("CbSelimAsksForKnowledge","GLOBAL",1)~ THEN REPLY @6 GOTO 4
  IF ~Global("CbSelimAsksForKnowledge","GLOBAL",1)~ THEN REPLY @7 GOTO 6
  IF ~Global("CbSelimAsksForKnowledge","GLOBAL",2)~ THEN REPLY @4 GOTO 3
  IF ~Global("CbSelimAsksForKnowledge","GLOBAL",2)~ THEN REPLY @5 GOTO 4
  IF ~Global("CbSelimAsksForKnowledge","GLOBAL",2)~ THEN REPLY @6 GOTO 4
  IF ~Global("CbSelimAsksForKnowledge","GLOBAL",2)~ THEN REPLY @7 GOTO 7
  IF ~Global("CbSelimAsksForKnowledge","GLOBAL",3)~ THEN REPLY @4 GOTO 3
  IF ~Global("CbSelimAsksForKnowledge","GLOBAL",3)~ THEN REPLY @5 GOTO 4
  IF ~Global("CbSelimAsksForKnowledge","GLOBAL",3)~ THEN REPLY @6 GOTO 4
  IF ~Global("CbSelimAsksForKnowledge","GLOBAL",3)~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN DO ~SetGlobal("CbSelimTakesKnowledge","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~Global("CbSelimAsksForKnowledge","GLOBAL",1)~ THEN REPLY @4 GOTO 3
  IF ~Global("CbSelimAsksForKnowledge","GLOBAL",1)~ THEN REPLY @7 GOTO 6
  IF ~Global("CbSelimAsksForKnowledge","GLOBAL",2)~ THEN REPLY @4 GOTO 3
  IF ~Global("CbSelimAsksForKnowledge","GLOBAL",2)~ THEN REPLY @7 GOTO 7
  IF ~Global("CbSelimAsksForKnowledge","GLOBAL",3)~ THEN REPLY @4 GOTO 3
  IF ~Global("CbSelimAsksForKnowledge","GLOBAL",3)~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN DO ~//UseItem("CBSELIME",Myself)
//Wait(5)
SetGlobal("CbSelimTakesKnowledge","GLOBAL",0)
EscapeAreaDestroy(90)//DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN DO ~//UseItem("CBSELIME",Myself)
//Wait(5)
SetGlobal("CbSelimTakesKnowledge","GLOBAL",0)
EscapeAreaDestroy(90)//DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @12
  IF ~~ THEN DO ~SetGlobal("CbSelimTurnsEnemy","GLOBAL",1)
ChangeEnemyAlly(Myself,ENEMY)~ EXIT
END
