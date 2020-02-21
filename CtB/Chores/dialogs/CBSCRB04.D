BEGIN ~CBSCRB04~

IF ~Global("CbThisGuyScribes","LOCALS",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~Global("CbThalantyrScribes","GLOBAL",1)
HasItem("CBSCRB0D",Player1)
Global("CbScrollsScribedByAlchemy","GLOBAL",0)
!Global("CbProFromWeapsFourCopies","LOCALS",1)~ THEN REPLY @5 GOTO 4
  IF ~Global("CbThalantyrScribes","GLOBAL",1)
HasItem("CBSCRB0G",Player1)
Global("CbScrollsScribedByAlchemy","GLOBAL",0)
!Global("CbProFromUndeadOneCopies","LOCALS",1)~ THEN REPLY @6 GOTO 5
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
SetGlobal("CbProFromWeapsFourCopies","LOCALS",1)
SetGlobalTimer("CbProNormWeapTimer","LOCALS",900)
TakePartyItem("CBSCRB0D")~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbProFromUndeadOneCopies","LOCALS",1)
SetGlobalTimer("CbProFromUndeadTimer","LOCALS",1200)
TakePartyItem("CBSCRB0G")~ EXIT
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //2
HasItem("CBSCRB0D",Myself)
!GlobalTimerExpired("CbProNormWeapTimer","LOCALS")
/*!HasItem("CBCOPY04",Myself)*/~ THEN BEGIN 7
  SAY @14
  IF ~~ THEN EXIT
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //2
HasItem("CBSCRB0G",Myself)
!GlobalTimerExpired("CbProFromUndeadTimer","LOCALS")
/*!HasItem("CBCOPY07",Myself)*/~ THEN BEGIN 8
  SAY @14
  IF ~~ THEN EXIT
END

IF ~Global("CbThisGuyScribes","LOCALS",1)  //3
HasItem("CBSCRB0D",Myself)
GlobalTimerExpired("CbProNormWeapTimer","LOCALS")
/*HasItem("CBCOPY04",Myself)*/~ THEN BEGIN 9
  SAY @15
  IF ~~ THEN DO ~GiveItem("CBSCRB0D",Player1)
GiveItemCreate("CBCOPY04",Player1,1,1,0)
GiveItemCreate("CBCOPY04",Player1,1,1,0)
GiveItemCreate("CBCOPY04",Player1,1,1,0)
GiveItemCreate("CBCOPY04",Player1,1,1,0)
~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @16
  IF ~~ THEN DO ~Deactivate(Myself)~ EXIT
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //3
HasItem("CBSCRB0G",Myself)
GlobalTimerExpired("CbProFromUndeadTimer","LOCALS")
/*HasItem("CBCOPY07",Myself)*/~ THEN BEGIN 11
  SAY @17
  IF ~~ THEN DO ~GiveItemCreate("CBCOPY07",Player1,1,1,0)
GiveItem("CBSCRB0G",Player1)~ GOTO 10
END
