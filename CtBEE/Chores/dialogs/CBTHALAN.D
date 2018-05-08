BEGIN ~CBTHALAN~

IF ~Global("CbThalantyrScribes","GLOBAL",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("CbThalantyrScribes","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN GOTO 3
  IF ~Global("CbThalantyrScribes","LOCALS",1)~ THEN GOTO 5
  IF ~Global("CbThalantyrScribes","LOCALS",2)~ THEN GOTO 7
  IF ~Global("CbThalantyrScribes","LOCALS",3)~ THEN GOTO 12
  IF ~Global("CbThalantyrScribes","LOCALS",4)~ THEN GOTO 13
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN DO ~SetGlobal("CbThalantyrScribes","LOCALS",1)
SetGlobal("CbThalantyrScribes","GLOBAL",1)
SetGlobal("CbThalantyrFailedToday","GLOBAL",0)
GiveItem("CBSCRB0A",Player1)
GiveItem("CBSCRB0B",Player1)
GiveItem("CBSCRB0C",Player1)~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 34
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN DO ~SetGlobal("CbThalantyrScribes","LOCALS",2)
SetGlobal("CbThalantyrScribes","GLOBAL",1)
SetGlobal("CbThalantyrFailedToday","GLOBAL",0)
GiveItem("CBSCRB0D",Player1)~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @12
  IF ~~ THEN DO ~SetGlobal("CbThalantyrScribes","LOCALS",3)
SetGlobal("CbThalantyrScribes","GLOBAL",1)
SetGlobal("CbThalantyrFailedToday","GLOBAL",0)
GiveItem("CBSCRB0E",Player1)
GiveItem("CBSCRB0F",Player1)
GiveItem("CBSCRB0G",Player1)
GiveItem("CBSCRB0H",Player1)
GiveItem("CBSCRB0I",Player1)~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
END

IF ~~ THEN BEGIN 10
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @18
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @19
  IF ~~ THEN DO ~SetGlobal("CbThalantyrScribes","LOCALS",4)
SetGlobal("CbThalantyrScribes","GLOBAL",1)
SetGlobal("CbThalantyrFailedToday","GLOBAL",0)
GiveItem("CBSCRB0J",Player1)
GiveItem("CBSCRB0K",Player1)~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @20
  IF ~~ THEN DO ~SetGlobal("CbThalantyrScribes","LOCALS",5)
SetGlobal("CbThalantyrScribes","GLOBAL",1)
SetGlobal("CbThalantyrFailedToday","GLOBAL",0)
GiveItem("CBSCRB0L",Player1)~ EXIT
END

IF ~Global("CbThalantyrScribes","GLOBAL",1)~ THEN BEGIN 14
  SAY @21
  IF ~Global("CbThalantyrScribes","LOCALS",1)
NumItemsPartyGT("CBCOPY01",2)
NumItemsPartyGT("CBCOPY02",1)
NumItemsPartyGT("CBCOPY03",3)
PartyHasItem("CBSCRB0A")
PartyHasItem("CBSCRB0B")
PartyHasItem("CBSCRB0C")~ THEN REPLY @22 GOTO 15
  IF ~Global("CbThalantyrScribes","LOCALS",1)
OR(3)
!NumItemsPartyGT("CBCOPY01",2)
!NumItemsPartyGT("CBCOPY02",1)
!NumItemsPartyGT("CBCOPY03",3)
PartyHasItem("CBCOPY01")
PartyHasItem("CBCOPY02")
PartyHasItem("CBCOPY03")
PartyHasItem("CBSCRB0A")
PartyHasItem("CBSCRB0B")
PartyHasItem("CBSCRB0C")~ THEN REPLY @22 GOTO bad15
  IF ~Global("CbThalantyrScribes","LOCALS",1)~ THEN REPLY @23 GOTO 17
  IF ~Global("CbThalantyrScribes","LOCALS",1)
!PartyHasItem("CBCOPY01")
!PartyHasItem("CBCOPY02")
!PartyHasItem("CBCOPY03")~ THEN REPLY @24 GOTO 18

  IF ~Global("CbThalantyrScribes","LOCALS",2)
NumItemsPartyGT("CBCOPY04",3)
PartyHasItem("CBSCRB0D")~ THEN REPLY @25 GOTO 19
  IF ~Global("CbThalantyrScribes","LOCALS",2)
!NumItemsPartyGT("CBCOPY04",3)
PartyHasItem("CBCOPY04")
PartyHasItem("CBSCRB0D")~ THEN REPLY @25 GOTO bad19
  IF ~Global("CbThalantyrScribes","LOCALS",2)~ THEN REPLY @23 GOTO 21
  IF ~Global("CbThalantyrScribes","LOCALS",2)
!PartyHasItem("CBCOPY04")~ THEN REPLY @24 GOTO 22

  IF ~Global("CbThalantyrScribes","LOCALS",3)
NumItemsPartyGT("CBCOPY05",2)
NumItemsPartyGT("CBCOPY06",1)
NumItemsPartyGT("CBCOPY07",0)
NumItemsPartyGT("CBCOPY08",5)
NumItemsPartyGT("CBCOPY09",4)
PartyHasItem("CBSCRB0E")
PartyHasItem("CBSCRB0F")
PartyHasItem("CBSCRB0G")
PartyHasItem("CBSCRB0H")
PartyHasItem("CBSCRB0I")~ THEN REPLY @26 GOTO 23
  IF ~Global("CbThalantyrScribes","LOCALS",3)
OR(5)
!NumItemsPartyGT("CBCOPY05",2)
!NumItemsPartyGT("CBCOPY06",1)
!NumItemsPartyGT("CBCOPY07",0)
!NumItemsPartyGT("CBCOPY08",5)
!NumItemsPartyGT("CBCOPY09",4)
PartyHasItem("CBCOPY05")
PartyHasItem("CBCOPY06")
PartyHasItem("CBCOPY07")
PartyHasItem("CBCOPY08")
PartyHasItem("CBCOPY09")
PartyHasItem("CBSCRB0E")
PartyHasItem("CBSCRB0F")
PartyHasItem("CBSCRB0G")
PartyHasItem("CBSCRB0H")
PartyHasItem("CBSCRB0I")~ THEN REPLY @26 GOTO bad23
  IF ~Global("CbThalantyrScribes","LOCALS",3)~ THEN REPLY @23 GOTO 24
  IF ~Global("CbThalantyrScribes","LOCALS",3)
!PartyHasItem("CBCOPY05")
!PartyHasItem("CBCOPY06")
!PartyHasItem("CBCOPY07")
!PartyHasItem("CBCOPY08")
!PartyHasItem("CBCOPY09")~ THEN REPLY @24 GOTO 25

  IF ~Global("CbThalantyrScribes","LOCALS",4)
NumItemsPartyGT("CBCOPY10",0)
NumItemsPartyGT("CBCOPY11",0)
PartyHasItem("CBSCRB0J")
PartyHasItem("CBSCRB0K")~ THEN REPLY @27 GOTO 26
  IF ~Global("CbThalantyrScribes","LOCALS",4)
OR(2)
!NumItemsPartyGT("CBCOPY10",0)
!NumItemsPartyGT("CBCOPY11",0)
PartyHasItem("CBCOPY10")
PartyHasItem("CBCOPY11")
PartyHasItem("CBSCRB0J")
PartyHasItem("CBSCRB0K")~ THEN REPLY @27 GOTO bad26
  IF ~Global("CbThalantyrScribes","LOCALS",4)~ THEN REPLY @23 GOTO 27
  IF ~Global("CbThalantyrScribes","LOCALS",4)
!PartyHasItem("CBCOPY10")
!PartyHasItem("CBCOPY11")~ THEN REPLY @24 GOTO 28

  IF ~Global("CbThalantyrScribes","LOCALS",5)
NumItemsPartyGT("CBCOPY12",3)
PartyHasItem("CBSCRB0L")~ THEN REPLY @28 GOTO 29
  IF ~Global("CbThalantyrScribes","LOCALS",5)
!NumItemsPartyGT("CBCOPY12",3)
PartyHasItem("CBCOPY12")
PartyHasItem("CBSCRB0L")~ THEN REPLY @28 GOTO bad29
  IF ~Global("CbThalantyrScribes","LOCALS",5)~ THEN REPLY @23 GOTO 31
  IF ~Global("CbThalantyrScribes","LOCALS",5)
!PartyHasItem("CBCOPY12")~ THEN REPLY @24 GOTO 32
END

IF ~~ THEN BEGIN 15
  SAY @29
  IF ~~ THEN DO ~TakePartyItemAll("CBCOPY01")
TakePartyItemAll("CBCOPY02")
TakePartyItemAll("CBCOPY03")
TakePartyItemNum("CBSCRB0A",1)
TakePartyItemNum("CBSCRB0B",1)
TakePartyItemNum("CBSCRB0C",1)
DestroyItem("CBSCRB0A")
DestroyItem("CBSCRB0B")
DestroyItem("CBSCRB0C")
AddXPObject(Player1,100)
SetGlobal("CbThalantyrScribes","GLOBAL",2)
IncrementGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",1)~ GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @30
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bad15
  SAY @43
  IF ~~ THEN DO ~TakePartyItemAll("CBCOPY01")
TakePartyItemAll("CBCOPY02")
TakePartyItemAll("CBCOPY03")
TakePartyItemNum("CBSCRB0A",1)
TakePartyItemNum("CBSCRB0B",1)
TakePartyItemNum("CBSCRB0C",1)
DestroyItem("CBSCRB0A")
DestroyItem("CBSCRB0B")
DestroyItem("CBSCRB0C")
SetGlobal("CbThalantyrFailedToday","GLOBAL",1)
SetGlobal("CbThalantyrScribes","GLOBAL",2)
IncrementGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",1)~ GOTO badExit
END

IF ~~ THEN BEGIN badExit
  SAY @44
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY @31
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18
  SAY @32
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
  SAY @33
  IF ~~ THEN DO ~TakePartyItemAll("CBCOPY04")
TakePartyItemNum("CBSCRB0D",1)
DestroyItem("CBSCRB0D")
AddXPObject(Player1,100)
SetGlobal("CbThalantyrScribes","GLOBAL",2)
IncrementGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",1)~ GOTO 20
END

IF ~~ THEN BEGIN bad19
  SAY @43
  IF ~~ THEN DO ~TakePartyItemAll("CBCOPY04")
TakePartyItemNum("CBSCRB0D",1)
DestroyItem("CBSCRB0D")
SetGlobal("CbThalantyrFailedToday","GLOBAL",1)
SetGlobal("CbThalantyrScribes","GLOBAL",2)
IncrementGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",1)~ GOTO badExit
END

IF ~~ THEN BEGIN 20
  SAY @34
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21
  SAY @31
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22
  SAY @32
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23
  SAY @35
  IF ~~ THEN DO ~TakePartyItemAll("CBCOPY05")
TakePartyItemAll("CBCOPY06")
TakePartyItemAll("CBCOPY07")
TakePartyItemAll("CBCOPY08")
TakePartyItemAll("CBCOPY09")
TakePartyItemNum("CBSCRB0E",1)
TakePartyItemNum("CBSCRB0F",1)
TakePartyItemNum("CBSCRB0G",1)
TakePartyItemNum("CBSCRB0H",1)
TakePartyItemNum("CBSCRB0I",1)
DestroyItem("CBSCRB0E")
DestroyItem("CBSCRB0F")
DestroyItem("CBSCRB0G")
DestroyItem("CBSCRB0H")
DestroyItem("CBSCRB0I")
AddXPObject(Player1,100)
SetGlobal("CbThalantyrScribes","GLOBAL",2)
IncrementGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN bad23
  SAY @43
  IF ~~ THEN DO ~TakePartyItemAll("CBCOPY05")
TakePartyItemAll("CBCOPY06")
TakePartyItemAll("CBCOPY07")
TakePartyItemAll("CBCOPY08")
TakePartyItemAll("CBCOPY09")
TakePartyItemNum("CBSCRB0E",1)
TakePartyItemNum("CBSCRB0F",1)
TakePartyItemNum("CBSCRB0G",1)
TakePartyItemNum("CBSCRB0H",1)
TakePartyItemNum("CBSCRB0I",1)
DestroyItem("CBSCRB0E")
DestroyItem("CBSCRB0F")
DestroyItem("CBSCRB0G")
DestroyItem("CBSCRB0H")
DestroyItem("CBSCRB0I")
SetGlobal("CbThalantyrFailedToday","GLOBAL",1)
SetGlobal("CbThalantyrScribes","GLOBAL",2)
IncrementGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",1)~ GOTO badExit
END

IF ~~ THEN BEGIN 24
  SAY @31
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25
  SAY @32
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26
  SAY @36
  IF ~~ THEN DO ~TakePartyItemAll("CBCOPY10")
TakePartyItemAll("CBCOPY11")
TakePartyItemNum("CBSCRB0J",1)
TakePartyItemNum("CBSCRB0K",1)
DestroyItem("CBSCRB0J")
DestroyItem("CBSCRB0K")
AddXPObject(Player1,100)
SetGlobal("CbThalantyrScribes","GLOBAL",2)
IncrementGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN bad26
  SAY @43
  IF ~~ THEN DO ~TakePartyItemAll("CBCOPY10")
TakePartyItemAll("CBCOPY11")
TakePartyItemNum("CBSCRB0J",1)
TakePartyItemNum("CBSCRB0K",1)
DestroyItem("CBSCRB0J")
DestroyItem("CBSCRB0K")
SetGlobal("CbThalantyrFailedToday","GLOBAL",1)
SetGlobal("CbThalantyrScribes","GLOBAL",2)
IncrementGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",1)~ GOTO badExit
END

IF ~~ THEN BEGIN 27
  SAY @31
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28
  SAY @32
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29
  SAY @37
  IF ~~ THEN REPLY @38 DO ~TakePartyItemAll("CBCOPY12")
TakePartyItemNum("CBSCRB0L",1)
DestroyItem("CBSCRB0L")
AddXPObject(Player1,100)
SetGlobal("CbThalantyrScribes","GLOBAL",2)
IncrementGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN bad29
  SAY @43
  IF ~~ THEN DO ~TakePartyItemAll("CBCOPY12")
TakePartyItemNum("CBSCRB0L",1)
DestroyItem("CBSCRB0L")
SetGlobal("CbThalantyrFailedToday","GLOBAL",1)
SetGlobal("CbThalantyrScribes","GLOBAL",2)
IncrementGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",1)~ GOTO badExit
END

IF ~~ THEN BEGIN 30
  SAY @39
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31
  SAY @31
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32
  SAY @32
  IF ~~ THEN EXIT
END

IF ~Global("CbThalantyrScribes","GLOBAL",2)
Global("CbThalantyrFailedToday","GLOBAL",0)~ THEN BEGIN 33
  SAY @40
  IF ~~ THEN EXIT
END

IF ~Global("CbThalantyrScribes","GLOBAL",2)
Global("CbThalantyrFailedToday","GLOBAL",1)~ THEN BEGIN bad33
  SAY @42
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34
  SAY @41
  IF ~~ THEN EXIT
END
