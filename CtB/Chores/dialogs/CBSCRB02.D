BEGIN ~CBSCRB02~

IF ~Global("CbThisGuyScribes","LOCALS",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~Global("CbThalantyrScribes","GLOBAL",1)
HasItem("CBSCRB0B",Player1)
Global("CbScrollsScribedByAlchemy","GLOBAL",0)
!Global("CbProFromEvilTwoCopies","LOCALS",1)~ THEN REPLY @5 GOTO 4
  IF ~Global("CbThalantyrScribes","GLOBAL",1)
HasItem("CBSCRB0H",Player1)
HasItem("CBSCRB0E",Player1)
Global("CbScrollsScribedByAlchemy","GLOBAL",0)
!Global("CbFireballThreeCopies","LOCALS",1)~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @10
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbProFromEvilTwoCopies","LOCALS",1)
SetGlobalTimer("CbProFromEvilTimer","LOCALS",1200)
TakePartyItem("CBSCRB0B")~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbFireballThreeCopies","LOCALS",1)
SetGlobalTimer("CbFireballTimer","LOCALS",1200)
TakePartyItem("CBSCRB0H")
TakePartyItem("CBSCRB0E")~ EXIT
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //2
HasItem("CBSCRB0B",Myself)
!GlobalTimerExpired("CbProFromEvilTimer","LOCALS")
/*!HasItem("CBCOPY02",Myself)*/~ THEN BEGIN 7
  SAY @14
  IF ~~ THEN EXIT
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //2
HasItem("CBSCRB0H",Myself)
HasItem("CBSCRB0E",Myself)
!GlobalTimerExpired("CbFireballTimer","LOCALS")
/*!HasItem("CBCOPY05",Myself)
OR(1)
!HasItem("CBCOPY08",Myself)*/~ THEN BEGIN 8
  SAY @15
  IF ~~ THEN EXIT
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //3
HasItem("CBSCRB0B",Myself)
GlobalTimerExpired("CbProFromEvilTimer","LOCALS")
/*HasItem("CBCOPY02",Myself)*/~ THEN BEGIN 9
  SAY @16
  IF ~~ THEN DO ~GiveItem("CBSCRB0B",Player1)
GiveItemCreate("CBCOPY02",Player1,1,1,0)
GiveItemCreate("CBCOPY02",Player1,1,1,0)
~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @17
  IF ~~ THEN DO ~Deactivate(Myself)~ EXIT
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //3
HasItem("CBSCRB0H",Myself)
HasItem("CBSCRB0E",Myself)
GlobalTimerExpired("CbFireballTimer","LOCALS")
/*HasItem("CBCOPY05",Myself)
HasItem("CBCOPY08",Myself)*/~ THEN BEGIN 11
  SAY @18
  IF ~~ THEN DO ~GiveItem("CBSCRB0H",Player1)
GiveItem("CBSCRB0E",Player1)
GiveItemCreate("CBCOPY05",Player1,1,1,0)
GiveItemCreate("CBCOPY05",Player1,1,1,0)
GiveItemCreate("CBCOPY05",Player1,1,1,0)
GiveItemCreate("CBCOPY08",Player1,1,1,0)
GiveItemCreate("CBCOPY08",Player1,1,1,0)
GiveItemCreate("CBCOPY08",Player1,1,1,0)
GiveItemCreate("CBCOPY08",Player1,1,1,0)
GiveItemCreate("CBCOPY08",Player1,1,1,0)
GiveItemCreate("CBCOPY08",Player1,1,1,0)
~ GOTO 10
END
