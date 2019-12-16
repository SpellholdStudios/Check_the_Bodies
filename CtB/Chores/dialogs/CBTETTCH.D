BEGIN ~CBTETTCH~

IF ~Global("CbTethtorilTeaches","LOCALS",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CbTethtorilTeaches","LOCALS",1)
GiveItemCreate("CBTETPN1",Player1,1,0,0)
GiveItemCreate("CBTETPN2",Player1,1,0,0)
GiveItemCreate("CBTETPN3",Player1,1,0,0)~ EXIT
END

IF ~Global("CbTethtorilTeaches","LOCALS",1)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN REPLY @6 EXIT
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @8
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @9
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @10
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @11
  IF ~~ THEN DO ~SetGlobal("CbTethtorilTeaches","LOCALS",2)
SetGlobal("CbTethtorilTeaches","AR3504",1)
GiveItemCreate("CBPOWDR1",Player1,1,0,0)
GiveItemCreate("CBPOWDR2",Player1,1,0,0)
GiveItemCreate("CBPOWDR3",Player1,1,0,0)
GiveItemCreate("CBPOWDR4",Player1,1,0,0)
GiveItemCreate("CBPOWDR5",Player1,1,0,0)
GiveItemCreate("CBPOWDR6",Player1,1,0,0)~ EXIT
END

IF ~Global("CbTethtorilTeaches","LOCALS",2)
Global("CbTethtorilTeaches","AR3504",2)~ THEN BEGIN 9
  SAY @12
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @13
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @14
  IF ~~ THEN DO ~AddXPObject(Player1,1000)
ForceSpellRES("CBTETTCH",Player1)
SetGlobal("CbTethtorilTeaches","LOCALS",3)
SetGlobal("CbTethtorilTeaches","AR3504",3)
DayNight(MIDNIGHT)
StartCutSceneMode()
StartCutScene("CBREST4")~ EXIT
  IF ~!Kit(Player1,WIZARDSLAYER)~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @15
  IF ~~ THEN DO ~AddXPObject(Player1,1000)
GiveItemCreate("POTN14",Player1,4,1,0)
ForceSpellRES("CBTETTCH",Player1)
SetGlobal("CbTethtorilTeaches","LOCALS",3)
SetGlobal("CbTethtorilTeaches","AR3504",3)
DayNight(MIDNIGHT)
StartCutSceneMode()
StartCutScene("CBREST4")~ EXIT
END

