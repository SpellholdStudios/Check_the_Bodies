BEGIN ~CBSCRB03~

IF ~Global("CbThisGuyScribes","LOCALS",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~Global("CbThalantyrScribes","GLOBAL",1)
HasItem("CBSCRB0C",Player1)
Global("CbScrollsScribedByAlchemy","GLOBAL",0)
!Global("CbArmorTwoCopies","LOCALS",1)
!Global("CbArmorFourCopies","LOCALS",1)
!Global("CbArmorSixCopies","LOCALS",1)~ THEN REPLY @5 GOTO 4
  IF ~Global("CbThalantyrScribes","GLOBAL",1)
HasItem("CBSCRB0F",Player1)
Global("CbScrollsScribedByAlchemy","GLOBAL",0)
!Global("CbProFromElectTwoCopies","LOCALS",1)
!Global("CbProFromElectThreeCopies","LOCALS",1)
!Global("CbProFromElectFourCopies","LOCALS",1)~ THEN REPLY @5 GOTO 8
  IF ~Global("CbThalantyrScribes","GLOBAL",1)
HasItem("CBSCRB0K",Player1)
Global("CbScrollsScribedByAlchemy","GLOBAL",0)
!Global("CbMonSummTwoCopies","LOCALS",1)
!Global("CbMonSummThreeCopies","LOCALS",1)
/*!Global("CbMonSummThreeCopiesFast","LOCALS",1)*/~ THEN REPLY @5 GOTO 12
  IF ~Global("CbThalantyrScribes","GLOBAL",1)
HasItem("CBSCRB0L",Player1)
Global("CbScrollsScribedByAlchemy","GLOBAL",0)
!Global("CbFreeActionThreeCopies","LOCALS",1)
!Global("CbFreeActionFourCopies","LOCALS",1)
!Global("CbFreeActionFiveCopies","LOCALS",1)~ THEN REPLY @5 GOTO 18
END

IF ~~ THEN BEGIN 1
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @13
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbArmorTwoCopies","LOCALS",1)
SetGlobalTimer("CbArmorTimer","LOCALS",600)
TakePartyItem("CBSCRB0C")~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbArmorFourCopies","LOCALS",1)
SetGlobalTimer("CbArmorTimer","LOCALS",1200)
TakePartyItem("CBSCRB0C")~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @13
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbArmorSixCopies","LOCALS",1)
SetGlobalTimer("CbArmorTimer","LOCALS",1800)
TakePartyItem("CBSCRB0C")~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
END

IF ~~ THEN BEGIN 9
  SAY @18
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbProFromElectTwoCopies","LOCALS",1)
SetGlobalTimer("CbProElectTimer","LOCALS",600)
TakePartyItem("CBSCRB0F")~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @19
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbProFromElectThreeCopies","LOCALS",1)
SetGlobalTimer("CbProElectTimer","LOCALS",900)
TakePartyItem("CBSCRB0F")~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @20
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbProFromElectFourCopies","LOCALS",1)
SetGlobalTimer("CbProElectTimer","LOCALS",1200)
TakePartyItem("CBSCRB0F")~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 15
  IF ~~ THEN REPLY @25 GOTO 15
END

IF ~~ THEN BEGIN 13
  SAY @26
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbMonSummTwoCopies","LOCALS",1)
SetGlobalTimer("CbMonSummTimer","LOCALS",1200)
TakePartyItem("CBSCRB0K")~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @27
  IF ~PartyHasItem("POTN37")~ THEN REPLY @50 GOTO 32
  IF ~!PartyHasItem("POTN37")~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbMonSummThreeCopies","LOCALS",1)
SetGlobalTimer("CbMonSummTimer","LOCALS",1800)
TakePartyItem("CBSCRB0K")~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 16
  IF ~~ THEN REPLY @30 GOTO 17
END

IF ~~ THEN BEGIN 16
  SAY @31
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbMonSummTwoCopies","LOCALS",1)
SetGlobalTimer("CbMonSummTimer","LOCALS",1200)
TakePartyItem("CBSCRB0K")~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @32
  IF ~PartyHasItem("POTN37")~ THEN REPLY @50 GOTO 32
  IF ~!PartyHasItem("POTN37")~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbMonSummThreeCopies","LOCALS",1)
SetGlobalTimer("CbMonSummTimer","LOCALS",1800)
TakePartyItem("CBSCRB0K")~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 19
  IF ~~ THEN REPLY @35 GOTO 20
  IF ~~ THEN REPLY @36 GOTO 21
END

IF ~~ THEN BEGIN 19
  SAY @37
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbFreeActionThreeCopies","LOCALS",1)
SetGlobalTimer("CbFreeActionTimer","LOCALS",600)
TakePartyItem("CBSCRB0L")~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @38
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbFreeActionFourCopies","LOCALS",1)
SetGlobalTimer("CbFreeActionTimer","LOCALS",675)
TakePartyItem("CBSCRB0L")~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @39
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbFreeActionFiveCopies","LOCALS",1)
SetGlobalTimer("CbFreeActionTimer","LOCALS",750)
TakePartyItem("CBSCRB0L")~ EXIT
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //2
HasItem("CBSCRB0C",Myself)
!GlobalTimerExpired("CbArmorTimer","LOCALS")
/*!HasItem("CBCOPY03",Myself)*/~ THEN BEGIN 22
  SAY @40
  IF ~~ THEN EXIT
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //2
HasItem("CBSCRB0F",Myself)
!GlobalTimerExpired("CbProElectTimer","LOCALS")
/*!HasItem("CBCOPY06",Myself)*/~ THEN BEGIN 23
  SAY @41
  IF ~~ THEN EXIT
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //2
HasItem("CBSCRB0K",Myself)
!GlobalTimerExpired("CbMonSummTimer","LOCALS")
/*!HasItem("CBCOPY11",Myself)*/~ THEN BEGIN 24
  SAY @42
  IF ~~ THEN EXIT
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //2
HasItem("CBSCRB0L",Myself)
!GlobalTimerExpired("CbFreeActionTimer","LOCALS")
/*!HasItem("CBCOPY12",Myself)*/~ THEN BEGIN 25
  SAY @43
  IF ~~ THEN EXIT
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //3
HasItem("CBSCRB0C",Myself)
GlobalTimerExpired("CbArmorTimer","LOCALS")
/*HasItem("CBCOPY03",Myself)*/~ THEN BEGIN 26
  SAY @44
  IF ~Global("CbArmorTwoCopies","LOCALS",1)~ THEN DO ~GiveItem("CBSCRB0C",Player1)
GiveItemCreate("CBCOPY03",Player1,1,1,0)
GiveItemCreate("CBCOPY03",Player1,1,1,0)
~ GOTO 27
  IF ~Global("CbArmorFourCopies","LOCALS",1)~ THEN DO ~GiveItem("CBSCRB0C",Player1)
GiveItemCreate("CBCOPY03",Player1,1,1,0)
GiveItemCreate("CBCOPY03",Player1,1,1,0)
GiveItemCreate("CBCOPY03",Player1,1,1,0)
GiveItemCreate("CBCOPY03",Player1,1,1,0)
~ GOTO 27
  IF ~Global("CbArmorSixCopies","LOCALS",1)~ THEN DO ~GiveItem("CBSCRB0C",Player1)
GiveItemCreate("CBCOPY03",Player1,1,1,0)
GiveItemCreate("CBCOPY03",Player1,1,1,0)
GiveItemCreate("CBCOPY03",Player1,1,1,0)
GiveItemCreate("CBCOPY03",Player1,1,1,0)
GiveItemCreate("CBCOPY03",Player1,1,1,0)
GiveItemCreate("CBCOPY03",Player1,1,1,0)
~ GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @45
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @46
  IF ~~ THEN DO ~Deactivate(Myself)~ EXIT
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //3
HasItem("CBSCRB0F",Myself)
GlobalTimerExpired("CbProElectTimer","LOCALS")
/*HasItem("CBCOPY06",Myself)*/~ THEN BEGIN 29
  SAY @47
  IF ~Global("CbProFromElectTwoCopies","LOCALS",1)~ THEN DO ~GiveItem("CBSCRB0F",Player1)
GiveItemCreate("CBCOPY06",Player1,1,1,0)
GiveItemCreate("CBCOPY06",Player1,1,1,0)
~ GOTO 27
  IF ~Global("CbProFromElectThreeCopies","LOCALS",1)~ THEN DO ~GiveItem("CBSCRB0F",Player1)
GiveItemCreate("CBCOPY06",Player1,1,1,0)
GiveItemCreate("CBCOPY06",Player1,1,1,0)
GiveItemCreate("CBCOPY06",Player1,1,1,0)
~ GOTO 27
  IF ~Global("CbProFromElectFourCopies","LOCALS",1)~ THEN DO ~GiveItem("CBSCRB0F",Player1)
GiveItemCreate("CBCOPY06",Player1,1,1,0)
GiveItemCreate("CBCOPY06",Player1,1,1,0)
GiveItemCreate("CBCOPY06",Player1,1,1,0)
GiveItemCreate("CBCOPY06",Player1,1,1,0)
~ GOTO 27
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //3
HasItem("CBSCRB0K",Myself)
GlobalTimerExpired("CbMonSummTimer","LOCALS")
/*HasItem("CBCOPY11",Myself)*/~ THEN BEGIN 30
  SAY @48
  IF ~Global("CbMonSummTwoCopies","LOCALS",1)~ THEN DO ~GiveItem("CBSCRB0K",Player1)
GiveItemCreate("CBCOPY11",Player1,1,1,0)
GiveItemCreate("CBCOPY11",Player1,1,1,0)
~ GOTO 27
  IF ~//OR(2)
Global("CbMonSummThreeCopies","LOCALS",1)
/*Global("CbMonSummThreeCopiesFast","LOCALS",1)*/~ THEN DO ~GiveItem("CBSCRB0K",Player1)
GiveItemCreate("CBCOPY11",Player1,1,1,0)
GiveItemCreate("CBCOPY11",Player1,1,1,0)
GiveItemCreate("CBCOPY11",Player1,1,1,0)
~ GOTO 27
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //3
HasItem("CBSCRB0L",Myself)
GlobalTimerExpired("CbFreeActionTimer","LOCALS")
/*HasItem("CBCOPY12",Myself)*/~ THEN BEGIN 31
  SAY @49
  IF ~Global("CbFreeActionThreeCopies","LOCALS",1)~ THEN DO ~GiveItem("CBSCRB0L",Player1)
GiveItemCreate("CBCOPY12",Player1,1,1,0)
GiveItemCreate("CBCOPY12",Player1,1,1,0)
GiveItemCreate("CBCOPY12",Player1,1,1,0)
~ GOTO 27
  IF ~Global("CbFreeActionFourCopies","LOCALS",1)~ THEN DO ~GiveItem("CBSCRB0L",Player1)
GiveItemCreate("CBCOPY12",Player1,1,1,0)
GiveItemCreate("CBCOPY12",Player1,1,1,0)
GiveItemCreate("CBCOPY12",Player1,1,1,0)
GiveItemCreate("CBCOPY12",Player1,1,1,0)
~ GOTO 27
  IF ~Global("CbFreeActionFiveCopies","LOCALS",1)~ THEN DO ~GiveItem("CBSCRB0L",Player1)
GiveItemCreate("CBCOPY12",Player1,1,1,0)
GiveItemCreate("CBCOPY12",Player1,1,1,0)
GiveItemCreate("CBCOPY12",Player1,1,1,0)
GiveItemCreate("CBCOPY12",Player1,1,1,0)
GiveItemCreate("CBCOPY12",Player1,1,1,0)
~ GOTO 27
END

IF ~~ THEN BEGIN 32
  SAY @51
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
//SetGlobal("CbMonSummThreeCopiesFast","LOCALS",1)
SetGlobal("CbMonSummThreeCopies","LOCALS",1)
SetGlobalTimer("CbMonSummTimer","LOCALS",900)
TakePartyItemNum("POTN37",1)
TakePartyItem("CBSCRB0K")
UseItem("POTN37",Myself)
~ EXIT
END

