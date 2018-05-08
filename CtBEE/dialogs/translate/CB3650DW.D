BEGIN ~CB3650DW~

IF ~GlobalLT("CbCloseToHome","GLOBAL",5)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXIT
END

IF ~GlobalGT("CbCloseToHome","GLOBAL",4)
Global("CbSmithBuildsPersonalWeapon","AR3650",0)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @15 GOTO 12
  IF ~~ THEN REPLY @16 GOTO 13
END

IF ~~ THEN BEGIN 6
  SAY @17
  IF ~~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",1)
SetGlobal("CbSword","LOCALS",1)
SetGlobalTimer("CbBuildingTimer","AR3650",TWO_DAYS)
~ GOTO 18
END

IF ~~ THEN BEGIN 7
  SAY @18
  IF ~~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",1)
SetGlobal("CbAxe","LOCALS",1)
SetGlobalTimer("CbBuildingTimer","AR3650",TWO_DAYS)
~ GOTO 18
END

IF ~~ THEN BEGIN 8
  SAY @19
  IF ~~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",1)
SetGlobal("CbFlail","LOCALS",1)
SetGlobalTimer("CbBuildingTimer","AR3650",TWO_DAYS)
~ GOTO 18
END

IF ~~ THEN BEGIN 9
  SAY @20
  IF ~~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",1)
SetGlobal("CbHalberd","LOCALS",1)
SetGlobalTimer("CbBuildingTimer","AR3650",TWO_DAYS)
~ GOTO 18
END

IF ~~ THEN BEGIN 10
  SAY @21
  IF ~~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",1)
SetGlobal("CbDagger","LOCALS",1)
SetGlobalTimer("CbBuildingTimer","AR3650",TWO_DAYS)
~ GOTO 18
END

IF ~~ THEN BEGIN 11
  SAY @22
  IF ~~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",1)
SetGlobal("CbWarhammer","LOCALS",1)
SetGlobalTimer("CbBuildingTimer","AR3650",TWO_DAYS)
~ GOTO 18
END

IF ~~ THEN BEGIN 12
  SAY @23
  IF ~~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",1)
SetGlobal("CbSpear","LOCALS",1)
SetGlobalTimer("CbBuildingTimer","AR3650",TWO_DAYS)
~ GOTO 18
END

IF ~~ THEN BEGIN 13
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @28 GOTO 17
END

IF ~~ THEN BEGIN 14
  SAY @29
  IF ~~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",1)
SetGlobal("CbPlate","LOCALS",1)
SetGlobalTimer("CbBuildingTimer","AR3650",THREE_DAYS)
~ GOTO 18
END

IF ~~ THEN BEGIN 15
  SAY @30
  IF ~~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",1)
SetGlobal("CbChain","LOCALS",1)
SetGlobalTimer("CbBuildingTimer","AR3650",THREE_DAYS)
~ GOTO 18
END

IF ~~ THEN BEGIN 16
  SAY @31
  IF ~~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",1)
SetGlobal("CbSplint","LOCALS",1)
SetGlobalTimer("CbBuildingTimer","AR3650",THREE_DAYS)
~ GOTO 18
END

IF ~~ THEN BEGIN 17
  SAY @32
  IF ~~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",1)
SetGlobal("CbShield","LOCALS",1)
SetGlobalTimer("CbBuildingTimer","AR3650",THREE_DAYS)
~ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @33
  IF ~~ THEN EXIT
END

IF ~GlobalTimerNotExpired("CbBuildingTimer","AR3650")
Global("CbSmithBuildsPersonalWeapon","AR3650",1)~ THEN BEGIN 19
  SAY @34
  IF ~~ THEN EXIT
END

IF ~GlobalTimerExpired("CbBuildingTimer","AR3650")
Global("CbSmithBuildsPersonalWeapon","AR3650",1)~ THEN BEGIN 20
  SAY @35
  IF ~Global("CbSword","LOCALS",1)~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",2)
GiveItemCreate("CBTSSW01",LastTalkedToBy(Myself),1,0,0)
TakePartyGold(10000)
DestroyGold(10000)
~ GOTO 21
  IF ~Global("CbAxe","LOCALS",1)~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",2)
GiveItemCreate("CBTSAX01",LastTalkedToBy(Myself),1,0,0)
TakePartyGold(10000)
DestroyGold(10000)
~ GOTO 21
  IF ~Global("CbFlail","LOCALS",1)~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",2)
GiveItemCreate("CBTSFL01",LastTalkedToBy(Myself),1,0,0)
TakePartyGold(10000)
DestroyGold(10000)
~ GOTO 21
  IF ~Global("CbHalberd","LOCALS",1)~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",2)
GiveItemCreate("CBTSHB01",LastTalkedToBy(Myself),1,0,0)
TakePartyGold(10000)
DestroyGold(10000)
~ GOTO 21
  IF ~Global("CbDagger","LOCALS",1)~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",2)
GiveItemCreate("CBTSDG01",LastTalkedToBy(Myself),1,0,0)
TakePartyGold(10000)
DestroyGold(10000)
~ GOTO 21
  IF ~Global("CbWarhammer","LOCALS",1)~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",2)
GiveItemCreate("CBTSWH01",LastTalkedToBy(Myself),1,0,0)
TakePartyGold(10000)
DestroyGold(10000)
~ GOTO 21
  IF ~Global("CbSpear","LOCALS",1)~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",2)
GiveItemCreate("CBTSSP01",LastTalkedToBy(Myself),1,0,0)
TakePartyGold(10000)
DestroyGold(10000)
~ GOTO 21
  IF ~Global("CbPlate","LOCALS",1)~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",2)
GiveItemCreate("CBTSPT01",LastTalkedToBy(Myself),1,0,0)
TakePartyGold(10000)
DestroyGold(10000)
~ GOTO 21
  IF ~Global("CbChain","LOCALS",1)~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",2)
GiveItemCreate("CBTSCH01",LastTalkedToBy(Myself),1,0,0)
TakePartyGold(10000)
DestroyGold(10000)
~ GOTO 21
  IF ~Global("CbSplint","LOCALS",1)~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",2)
GiveItemCreate("CBTSST01",LastTalkedToBy(Myself),1,0,0)
TakePartyGold(10000)
DestroyGold(10000)
~ GOTO 21
  IF ~Global("CbShield","LOCALS",1)~ THEN DO ~SetGlobal("CbSmithBuildsPersonalWeapon","AR3650",2)
GiveItemCreate("CBTSSD01",LastTalkedToBy(Myself),1,0,0)
TakePartyGold(10000)
DestroyGold(10000)
~ GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @36
  IF ~~ THEN EXIT
END

IF ~GlobalGT("CbCloseToHome","GLOBAL",4)
Global("CbSmithBuildsPersonalWeapon","AR3650",2)~ THEN BEGIN 22
  SAY @37
  IF ~~ THEN EXIT
END
