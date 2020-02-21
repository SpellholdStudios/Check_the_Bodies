BEGIN ~CB502LBR~

IF ~Global("CbPlayerDoesChoresForLibrarian","GLOBAL",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~Global("CbPlayerHasBooksForDay","LOCALS",4)~ THEN GOTO 3
  IF ~Global("CbPlayerHasBooksForDay","LOCALS",3)~ THEN GOTO 13
  IF ~Global("CbPlayerHasBooksForDay","LOCALS",2)~ THEN GOTO 14
  IF ~Global("CbPlayerHasBooksForDay","LOCALS",1)~ THEN GOTO 15
  IF ~Global("CbPlayerHasBooksForDay","LOCALS",0)~ THEN GOTO 16
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CbPlayerHasBooksForDay","LOCALS",5)
SetGlobal("CbPlayerTookDayFiveBooks","AR3502",1)
GiveItem("CB502D5O",Player1)
GiveItem("CB502D5P",Player1)
GiveItem("CB502D5N",Player1)
GiveItem("CB502D5B",Player1)
SetGlobal("CbPlayerDoesChoresForLibrarian","GLOBAL",1)~ EXIT
END

IF ~Global("CbPlayerDoesChoresForLibrarian","GLOBAL",1)~ THEN BEGIN 4
  SAY @5
  IF ~Global("CbPlayerShelvedBookCorrectly","AR3502",0)~ THEN GOTO 5
  IF ~Global("CbPlayerShelvedBookCorrectly","AR3502",1)~ THEN GOTO 7
  IF ~Global("CbPlayerShelvedBookCorrectly","AR3502",2)~ THEN GOTO 8
  IF ~Global("CbPlayerShelvedBookCorrectly","AR3502",3)~ THEN GOTO 9
  IF ~GlobalGT("CbPlayerShelvedBookCorrectly","AR3502",3)~ THEN GOTO 10
END

IF ~~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN EXIT //GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @8
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 8
  SAY @9
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 9
  SAY @10
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 10
  SAY @11
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @12
  IF ~~ THEN DO ~AddXPObject(Player1,100)
SetGlobal("CbPlayerShelvedBookCorrectly","AR3502",0)
SetGlobal("CbPlayerDoesChoresForLibrarian","GLOBAL",2)
IncrementGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",1)~ EXIT
END

IF ~Global("CbPlayerDoesChoresForLibrarian","GLOBAL",2)~ THEN BEGIN 12
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CbPlayerHasBooksForDay","LOCALS",4)
SetGlobal("CbPlayerTookDayFourBooks","AR3502",1)
GiveItem("CB502D4F",Player1)
GiveItem("CB502D4H",Player1)
GiveItem("CB502D4N",Player1)
GiveItem("CB502D4G",Player1)
SetGlobal("CbPlayerDoesChoresForLibrarian","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CbPlayerHasBooksForDay","LOCALS",3)
SetGlobal("CbPlayerTookDayThreeBooks","AR3502",1)
GiveItem("CB502D3D",Player1)
GiveItem("CB502D3G",Player1)
GiveItem("CB502D3N",Player1)
GiveItem("CB502D3U",Player1)
SetGlobal("CbPlayerDoesChoresForLibrarian","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CbPlayerHasBooksForDay","LOCALS",2)
SetGlobal("CbPlayerTookDayTwoBooks","AR3502",1)
GiveItem("CB502D2D",Player1)
GiveItem("CB502D2B",Player1)
GiveItem("CB502D2N",Player1)
GiveItem("CB502D2T",Player1)
SetGlobal("CbPlayerDoesChoresForLibrarian","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CbPlayerHasBooksForDay","LOCALS",1)
SetGlobal("CbPlayerTookDayOneBooks","AR3502",1)
GiveItem("CB502D1H",Player1)
GiveItem("CB502D1N",Player1)
GiveItem("CB502D1P",Player1)
GiveItem("CB502D1S",Player1)
SetGlobal("CbPlayerDoesChoresForLibrarian","GLOBAL",1)~ EXIT
END
