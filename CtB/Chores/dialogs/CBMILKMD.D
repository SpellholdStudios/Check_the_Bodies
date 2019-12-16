BEGIN ~CBMILKMD~

IF ~Global("CbDoingMaidsChores","GLOBAL",0)~ THEN BEGIN 0
  SAY @1
  IF ~Global("CbMorningMilk","LOCALS",0)~ THEN GOTO 1
  IF ~Global("CbMorningMilk","LOCALS",1)~ THEN GOTO 12
  IF ~Global("CbMorningMilk","LOCALS",2)~ THEN GOTO 14
  IF ~Global("CbMorningMilk","LOCALS",3)~ THEN GOTO 16
  IF ~Global("CbMorningMilk","LOCALS",4)~ THEN GOTO 18
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~SetGlobal("CbMorningMilk","LOCALS",1)
SetGlobal("CbDoingMaidsChores","GLOBAL",1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)~ EXIT
END

IF ~Global("CbDoingMaidsChores","GLOBAL",1)
!PartyHasItem("CBMLKBKF")~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN EXIT
END

IF ~Global("CbDoingMaidsChores","GLOBAL",2)
Global("CbMaidCreatesBlankets","LOCALS",0)
~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN GOTO 20
END

IF ~Global("CbDoingMaidsChores","GLOBAL",2)
Global("CbKeepBedsMade","GLOBAL",0)~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN EXIT
END

IF ~Global("CbDoingMaidsChores","GLOBAL",1)
Global("CbMorningMilk","LOCALS",1)~ THEN BEGIN 7
  SAY @4
  IF ~NumItemsParty("CBMLKBKF",4)~ THEN REPLY @8 GOTO 22
  IF ~!NumItemsParty("CBMLKBKF",4)~ THEN GOTO 24
END

IF ~Global("CbDoingMaidsChores","GLOBAL",1)
Global("CbMorningMilk","LOCALS",2)~ THEN BEGIN 8
  SAY @4
  IF ~NumItemsParty("CBMLKBKF",8)~ THEN REPLY @8 DO ~SetGlobal("CbGetMilkForMaid","GLOBAL",2)
SetGlobal("CbDoingMaidsChores","GLOBAL",2)
TakePartyItemAll("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
AddXPObject(Player1,100)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)~ GOTO 25
  IF ~!NumItemsParty("CBMLKBKF",8)~ THEN GOTO 26
END

IF ~Global("CbDoingMaidsChores","GLOBAL",1)
Global("CbMorningMilk","LOCALS",3)~ THEN BEGIN 9
  SAY @4
  IF ~NumItemsParty("CBMLKBKF",6)~ THEN REPLY @8 DO ~SetGlobal("CbGetMilkForMaid","GLOBAL",2)
SetGlobal("CbDoingMaidsChores","GLOBAL",2)
TakePartyItemAll("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
AddXPObject(Player1,100)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)~ GOTO 27
  IF ~!NumItemsParty("CBMLKBKF",6)~ THEN GOTO 28
END

IF ~Global("CbDoingMaidsChores","GLOBAL",1)
Global("CbMorningMilk","LOCALS",4)~ THEN BEGIN 10
  SAY @4
  IF ~NumItemsParty("CBMLKBKF",4)~ THEN REPLY @8 GOTO 29
  IF ~!NumItemsParty("CBMLKBKF",4)~ THEN GOTO 30
END

IF ~Global("CbDoingMaidsChores","GLOBAL",1)
Global("CbMorningMilk","LOCALS",5)~ THEN BEGIN 11
  SAY @4
  IF ~NumItemsParty("CBMLKBKF",6)~ THEN REPLY @8 GOTO 31
  IF ~!NumItemsParty("CBMLKBKF",6)~ THEN GOTO 32
END

IF ~~ THEN BEGIN 12
  SAY @9
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @10
  IF ~~ THEN DO ~SetGlobal("CbMorningMilk","LOCALS",2)
SetGlobal("CbDoingMaidsChores","GLOBAL",1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @11
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @12
  IF ~~ THEN DO ~SetGlobal("CbMorningMilk","LOCALS",3)
SetGlobal("CbDoingMaidsChores","GLOBAL",1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @13
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @14
  IF ~~ THEN DO ~SetGlobal("CbMorningMilk","LOCALS",4)
SetGlobal("CbDoingMaidsChores","GLOBAL",1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @15
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @16
  IF ~~ THEN DO ~SetGlobal("CbMorningMilk","LOCALS",5)
SetGlobal("CbDoingMaidsChores","GLOBAL",1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)
GiveItem("CBMLKBKE",Player1)~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @17
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @18
  IF ~~ THEN DO ~SetGlobal("CbActivateTriggers_3504","GLOBAL",1)
SetGlobal("CbActivateTriggers_3505","GLOBAL",1)
SetGlobal("CbActivateTriggers_3506","GLOBAL",1)
SetGlobal("CbKeepBedsMade","GLOBAL",0)
SetGlobal("CbMaidCreatesBlankets","LOCALS",1)
GiveItemCreate("CBLINENP",Player1,1,0,0)
GiveItemCreate("CBLINENP",Player1,1,0,0)
GiveItemCreate("CBLINENP",Player1,1,0,0)
GiveItemCreate("CBLINENP",Player1,1,0,0)
GiveItemCreate("CBLINENP",Player1,1,0,0)
GiveItemCreate("CBLINENF",Player1,2,0,0)
GiveItemCreate("CBLINENF",Player1,2,0,0)
GiveItemCreate("CBLINENF",Player1,2,0,0)
GiveItemCreate("CBLINENF",Player1,2,0,0)
GiveItemCreate("CBLINENF",Player1,2,0,0)
GiveItemCreate("CBLINENF",Player1,2,0,0)
GiveItemCreate("CBLINENF",Player1,2,0,0)
GiveItemCreate("CBLINENF",Player1,2,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 22
  SAY @19
  IF ~~ THEN DO ~TakePartyItemAll("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
SetGlobal("CbGetMilkForMaid","GLOBAL",2)
SetGlobal("CbDoingMaidsChores","GLOBAL",2)
AddXPObject(Player1,100)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)~ GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @6
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 24
  SAY @20
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25
  SAY @19
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 26
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27
  SAY @19
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 28
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29
  SAY @19
  IF ~~ THEN DO ~TakePartyItemAll("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
SetGlobal("CbGetMilkForMaid","GLOBAL",2)
SetGlobal("CbDoingMaidsChores","GLOBAL",2)
AddXPObject(Player1,100)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)
GiveItemCreate("CBMLKBKE",Myself,1,0,0)~ GOTO 23
END

IF ~~ THEN BEGIN 30
  SAY @20
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31
  SAY @19
  IF ~~ THEN DO ~TakePartyItemAll("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
DestroyItem("CBMLKBKF")
SetGlobal("CbGetMilkForMaid","GLOBAL",2)
SetGlobal("CbDoingMaidsChores","GLOBAL",2)
AddXPObject(Player1,100)~ GOTO 23
END

IF ~~ THEN BEGIN 32
  SAY @22
  IF ~~ THEN EXIT
END

IF ~Global("CbDoingMaidsChores","GLOBAL",2)
GlobalGT("CbActivateTriggers_3504","GLOBAL",0)
Global("CbKeepBedsMade","GLOBAL",0)~ THEN BEGIN 33
  SAY @23
  IF ~~ THEN EXIT
END

IF ~Global("CbDoingMaidsChores","GLOBAL",2)
GlobalGT("CbActivateTriggers_3505","GLOBAL",0)
Global("CbKeepBedsMade","GLOBAL",1)~ THEN BEGIN 34
  SAY @23
  IF ~~ THEN EXIT
END

IF ~Global("CbDoingMaidsChores","GLOBAL",2)
GlobalGT("CbActivateTriggers_3506","GLOBAL",0)
Global("CbKeepBedsMade","GLOBAL",2)~ THEN BEGIN 35
  SAY @23
  IF ~~ THEN EXIT
END

IF ~GlobalGT("CbKeepBedsMade","GLOBAL",2)
Global("CbDoingMaidsChores","GLOBAL",2)~ THEN BEGIN 36
  SAY @24
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @25
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @26
  IF ~~ THEN DO ~SetGlobal("CbKeepBedsMade","GLOBAL",0)
SetGlobal("CbCheck_3504","LOCALS",0)
SetGlobal("CbCheck_3505","LOCALS",0)
SetGlobal("CbCheck_3506","LOCALS",0)
SetGlobal("CbDoingMaidsChores","GLOBAL",3)
SetGlobal("CbMaidCreatesBlankets","LOCALS",0)
IncrementGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",1)~ EXIT
END

IF ~Global("CbDoingMaidsChores","GLOBAL",3)~ THEN BEGIN 39
  SAY @27
  IF ~~ THEN EXIT
END
