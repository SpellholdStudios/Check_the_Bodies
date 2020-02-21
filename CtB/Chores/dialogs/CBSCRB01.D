BEGIN ~CBSCRB01~

IF ~Global("CbThisGuyScribes","LOCALS",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~Global("CbThalantyrScribes","GLOBAL",1)
HasItem("CBSCRB0A",Player1)
Global("CbScrollsScribedByAlchemy","GLOBAL",0)
!Global("CbDispelMagicOneCopies","LOCALS",1)
!Global("CbDispelMagicThreeCopies","LOCALS",1)~ THEN REPLY @5 GOTO 4
  IF ~Global("CbThalantyrScribes","GLOBAL",1)
HasItem("CBSCRB0I",Player1)
Global("CbScrollsScribedByAlchemy","GLOBAL",0)
!Global("CbMinorGlobeOneCopies","LOCALS",1)
!Global("CbMinorGlobeTwoCopies","LOCALS",1)
!Global("CbMinorGlobeFiveCopies","LOCALS",1)~ THEN REPLY @6 GOTO 9
  IF ~Global("CbThalantyrScribes","GLOBAL",1)
HasItem("CBSCRB0J",Player1)
Global("CbScrollsScribedByAlchemy","GLOBAL",0)
!Global("CbProMagicOneCopies","LOCALS",1)
!Global("CbProMagicTwoCopies","LOCALS",1)~ THEN REPLY @7 GOTO 13
END

IF ~~ THEN BEGIN 1
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 5
  IF ~~ THEN REPLY @13 GOTO 6
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @15
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbDispelMagicOneCopies","LOCALS",1)
SetGlobalTimer("CbDispelMagicScroll","LOCALS",300)
TakePartyItem("CBSCRB0A")~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @16
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbDispelMagicThreeCopies","LOCALS",1)
SetGlobalTimer("CbDispelMagicScroll","LOCALS",900)
TakePartyItem("CBSCRB0A")~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 6
  IF ~~ THEN REPLY @19 GOTO 5
END

IF ~~ THEN BEGIN 9
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 10
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~~ THEN REPLY @23 GOTO 12
END

IF ~~ THEN BEGIN 10
  SAY @24
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbMinorGlobeOneCopies","LOCALS",1)
SetGlobalTimer("CbMinorGlobeScroll","LOCALS",600)
TakePartyItem("CBSCRB0I")~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @25
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbMinorGlobeTwoCopies","LOCALS",1)
SetGlobalTimer("CbMinorGlobeScroll","LOCALS",900)
TakePartyItem("CBSCRB0I")~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @26
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbMinorGlobeFiveCopies","LOCALS",1)
SetGlobalTimer("CbMinorGlobeScroll","LOCALS",1200)
TakePartyItem("CBSCRB0I")~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 14
  IF ~~ THEN REPLY @29 GOTO 15
  IF ~~ THEN REPLY @30 GOTO 16
END

IF ~~ THEN BEGIN 14
  SAY @31
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbProMagicOneCopies","LOCALS",1)
SetGlobalTimer("CbProFromMagicScroll","LOCALS",900)
TakePartyItem("CBSCRB0J")~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @32
  IF ~PartyHasItem("POTN37")~ THEN REPLY @51 GOTO 31   //KD*******************
  IF ~!PartyHasItem("POTN37")~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
SetGlobal("CbProMagicTwoCopies","LOCALS",1)
SetGlobalTimer("CbProFromMagicScroll","LOCALS",1800)
TakePartyItem("CBSCRB0J")~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 14
  IF ~~ THEN REPLY @35 GOTO 15
  IF ~~ THEN REPLY @36 GOTO 14
  IF ~~ THEN REPLY @37 GOTO 15
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //2
HasItem("CBSCRB0A",Myself)
!GlobalTimerExpired("CbDispelMagicScroll","LOCALS")
/*!HasItem("CBCOPY01",Myself)*/~ THEN BEGIN 17
  SAY @38
  IF ~~ THEN EXIT
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //2
HasItem("CBSCRB0I",Myself)
!GlobalTimerExpired("CbMinorGlobeScroll","LOCALS")
/*!HasItem("CBCOPY09",Myself)*/~ THEN BEGIN 18
  SAY @39
  IF ~~ THEN EXIT
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //2
HasItem("CBSCRB0J",Myself)
!GlobalTimerExpired("CbProFromMagicScroll","LOCALS")
/*!HasItem("CBCOPY10",Myself)*/~ THEN BEGIN 19
  SAY @40
  IF ~~ THEN EXIT
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //3
HasItem("CBSCRB0A",Myself)
GlobalTimerExpired("CbDispelMagicScroll","LOCALS")
/*HasItem("CBCOPY01",Myself)*/~ THEN BEGIN 20
  SAY @41
  IF ~Global("CbDispelMagicOneCopies","LOCALS",1)~ THEN DO ~//SetGlobal("CbThisGuyScribes","LOCALS",0)
GiveItemCreate("CBCOPY01",Player1,1,1,0)
GiveItem("CBSCRB0A",Player1)~ GOTO 21
  IF ~Global("CbDispelMagicThreeCopies","LOCALS",1)~ THEN DO ~GiveItem("CBSCRB0A",Player1)
GiveItemCreate("CBCOPY01",Player1,1,1,0)
GiveItemCreate("CBCOPY01",Player1,1,1,0)
GiveItemCreate("CBCOPY01",Player1,1,1,0)
~ GOTO 24
END

IF ~~ THEN BEGIN 21
  SAY @42
  IF ~~ THEN GOTO 30
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //3
HasItem("CBSCRB0I",Myself)
GlobalTimerExpired("CbMinorGlobeScroll","LOCALS")
/*HasItem("CBCOPY09",Myself)*/~ THEN BEGIN 22
  SAY @43
  IF ~Global("CbMinorGlobeOneCopies","LOCALS",1)~ THEN DO ~GiveItem("CBSCRB0I",Player1)
GiveItemCreate("CBCOPY09",Player1,1,1,0)
~ GOTO 25
  IF ~Global("CbMinorGlobeTwoCopies","LOCALS",1)~ THEN DO ~GiveItem("CBSCRB0I",Player1)
GiveItemCreate("CBCOPY09",Player1,1,1,0)
GiveItemCreate("CBCOPY09",Player1,1,1,0)
~ GOTO 26
  IF ~Global("CbMinorGlobeFiveCopies","LOCALS",1)~ THEN DO ~GiveItem("CBSCRB0I",Player1)
GiveItemCreate("CBCOPY09",Player1,1,1,0)
GiveItemCreate("CBCOPY09",Player1,1,1,0)
GiveItemCreate("CBCOPY09",Player1,1,1,0)
GiveItemCreate("CBCOPY09",Player1,1,1,0)
GiveItemCreate("CBCOPY09",Player1,1,1,0)
~ GOTO 27
END

IF ~Global("CbThisGuyScribes","LOCALS",1) //3
HasItem("CBSCRB0J",Myself)
GlobalTimerExpired("CbProFromMagicScroll","LOCALS")
/*HasItem("CBCOPY10",Myself)*/~ THEN BEGIN 23
  SAY @44
  IF ~Global("CbProMagicOneCopies","LOCALS",1)~ THEN DO ~GiveItem("CBSCRB0J",Player1)
GiveItemCreate("CBCOPY10",Player1,1,1,0)
~ GOTO 28
  IF ~//OR(2)
  Global("CbProMagicTwoCopies","LOCALS",1)
  /*Global("CbProMagicTwoCopiesFast","LOCALS",1)*/~ THEN DO ~GiveItem("CBSCRB0J",Player1)
GiveItemCreate("CBCOPY10",Player1,1,1,0)
GiveItemCreate("CBCOPY10",Player1,1,1,0)~ GOTO 29
END

IF ~~ THEN BEGIN 24
  SAY @45
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 25
  SAY @46
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 26
  SAY @47
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 27
  SAY @48
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 28
  SAY @49
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 29
  SAY @49
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @50
  IF ~~ THEN DO ~Deactivate(Myself)~ EXIT
END

IF ~~ THEN BEGIN 31
  SAY @52
  IF ~~ THEN DO ~SetGlobal("CbThisGuyScribes","LOCALS",1)
//SetGlobal("CbProMagicTwoCopiesFast","LOCALS",1)
SetGlobal("CbProMagicTwoCopies","LOCALS",1)
SetGlobalTimer("CbProFromMagicScroll","LOCALS",900)
TakePartyItemNum("POTN37",1)
TakePartyItem("CBSCRB0J")
UseItem("POTN37",Myself)
~ EXIT
END



