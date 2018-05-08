BEGIN ~CBMILKC1~ 2

IF ~Global("CbMilkCowOne","AR3500",0)
OR(2)
  Global("CbFastLactation","AR3500",0)
  GlobalGT("CbFastLactation","AR3500",2)~ THEN BEGIN 0
  SAY @1
  IF ~!PartyHasItem("CBMLKBKE")~ THEN GOTO 1
  IF ~PartyHasItem("CBMLKBKE")~ THEN GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN REPLY @4 EXIT
  IF ~~ THEN REPLY @5 DO ~TakePartyItemNum("CBMLKBKE",1)
SetGlobal("CbMilkCowOne","AR3500",1)~ EXIT
END

IF ~Global("CbMilkCowOne","AR3500",1)~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN EXIT
END

IF ~Global("CbMilkCowOne","AR3500",2)~ THEN BEGIN 4
  SAY @7
  IF ~!PartyHasItem("CBPLANT")~ THEN DO ~GiveItemCreate("CBMLKBKF",[PC],1,0,0)
DestroyItem("CBMLKBKE")
SetGlobal("CbMilkCowOneFast","AR3500",0)
SetGlobal("CbMilkCowOne","AR3500",3)~ EXIT
  IF ~PartyHasItem("CBPLANT")~ THEN REPLY @9 DO ~GiveItemCreate("CBMLKBKF",[PC],1,0,0)
DestroyItem("CBMLKBKE")
SetGlobal("CbMilkCowOneFast","AR3500",0)
SetGlobal("CbMilkCowOne","AR3500",3)~ EXIT
  IF ~PartyHasItem("CBPLANT")
Global("CbFastLactation","AR3500",0)~ THEN REPLY @10 DO ~GiveItemCreate("CBMLKBKF",[PC],1,0,0)
DestroyItem("CBMLKBKE")
TakePartyItem("CBPLANT")
DestroyItem("CBPLANT")
SetGlobal("CbMilkCowOneFast","AR3500",1)
SetGlobal("CbMilkCowOne","AR3500",3)~ GOTO 6
  IF ~PartyHasItem("CBPLANT")
!Global("CbFastLactation","AR3500",0)~ THEN REPLY @10 DO ~GiveItemCreate("CBMLKBKF",[PC],1,0,0)
DestroyItem("CBMLKBKE")
TakePartyItem("CBPLANT")
DestroyItem("CBPLANT")
SetGlobal("CbMilkCowOneFast","AR3500",1)
SetGlobal("CbMilkCowOne","AR3500",3)~ EXIT
END

IF ~GlobalGT("CbMilkCowOne","AR3500",2)~ THEN BEGIN 5
  SAY @8
  IF ~PartyHasItem("CBPLANT")
!Global("CbMilkCowOneFast","AR3500",1)~ THEN REPLY @9 EXIT
  IF ~PartyHasItem("CBPLANT")
!Global("CbMilkCowOneFast","AR3500",1)
Global("CbFastLactation","AR3500",0)~ THEN REPLY @10 DO ~TakePartyItem("CBPLANT")
DestroyItem("CBPLANT")
SetGlobal("CbCowsFed","GLOBAL",1)
SetGlobal("CbMilkCowOneFast","AR3500",1)
SetGlobal("CbMilkCowOne","AR3500",3)~ GOTO 6
  IF ~PartyHasItem("CBPLANT")
!Global("CbMilkCowOneFast","AR3500",1)
!Global("CbFastLactation","AR3500",0)~ THEN REPLY @10 DO ~TakePartyItem("CBPLANT")
DestroyItem("CBPLANT")
SetGlobal("CbCowsFed","GLOBAL",1)
SetGlobal("CbMilkCowOneFast","AR3500",1)
SetGlobal("CbMilkCowOne","AR3500",3)~ EXIT
  IF ~OR(2)
!PartyHasItem("CBPLANT")
Global("CbMilkCowOneFast","AR3500",1)~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN EXIT
END

IF ~Global("CbMilkCowOne","AR3500",0)
OR(2)
  Global("CbFastLactation","AR3500",1)
  Global("CbFastLactation","AR3500",2)~ THEN BEGIN 7
  SAY @12
  IF ~~ THEN DO ~IncrementGlobal("CbFastLactation","AR3500",1)~ GOTO 0
END


