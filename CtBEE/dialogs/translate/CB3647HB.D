BEGIN ~CB3647HB~

IF ~True()~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 1
  IF ~Global("CbShortcutToMixing","LOCALS",1)
OR(16)
PartyHasItem("CB3647Ha")
PartyHasItem("CB3647Hb")
PartyHasItem("CB3647Hc")
PartyHasItem("CB3647Hd")
PartyHasItem("CB3647He")
PartyHasItem("CB3647Hf")
PartyHasItem("CB3647Hg")
PartyHasItem("CB3647Hh")
PartyHasItem("CB3647Hi")
PartyHasItem("CB3647Hj")
PartyHasItem("CB3647Hk")
PartyHasItem("CB3647Hl")
PartyHasItem("CB3647Hm")
PartyHasItem("CB3647Hn")
PartyHasItem("CB3647Ho")
PartyHasItem("CB3647Hp")~ THEN REPLY @5 GOTO 11
END

IF ~~ THEN BEGIN 1
  SAY @6
  IF ~~ THEN DO ~StartStore("CB3647HB",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN REPLY @9 DO ~StartStore("CB3647HB",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @10 GOTO 4
  IF ~Global("CbShortcutToMixing","LOCALS",1)
OR(16)
PartyHasItem("CB3647Ha")
PartyHasItem("CB3647Hb")
PartyHasItem("CB3647Hc")
PartyHasItem("CB3647Hd")
PartyHasItem("CB3647He")
PartyHasItem("CB3647Hf")
PartyHasItem("CB3647Hg")
PartyHasItem("CB3647Hh")
PartyHasItem("CB3647Hi")
PartyHasItem("CB3647Hj")
PartyHasItem("CB3647Hk")
PartyHasItem("CB3647Hl")
PartyHasItem("CB3647Hm")
PartyHasItem("CB3647Hn")
PartyHasItem("CB3647Ho")
PartyHasItem("CB3647Hp")~ THEN REPLY @5 GOTO 11
END

IF ~~ THEN BEGIN 4
  SAY @11
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @14
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 8
  IF ~~ THEN REPLY @18 GOTO 1
  IF ~Global("CbShortcutToMixing","LOCALS",1)
OR(16)
PartyHasItem("CB3647Ha")
PartyHasItem("CB3647Hb")
PartyHasItem("CB3647Hc")
PartyHasItem("CB3647Hd")
PartyHasItem("CB3647He")
PartyHasItem("CB3647Hf")
PartyHasItem("CB3647Hg")
PartyHasItem("CB3647Hh")
PartyHasItem("CB3647Hi")
PartyHasItem("CB3647Hj")
PartyHasItem("CB3647Hk")
PartyHasItem("CB3647Hl")
PartyHasItem("CB3647Hm")
PartyHasItem("CB3647Hn")
PartyHasItem("CB3647Ho")
PartyHasItem("CB3647Hp")~ THEN REPLY @5 GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @20
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @21
  IF ~~ THEN REPLY @22 DO ~SetGlobal("CbShortcutToMixing","LOCALS",1)
~ GOTO 11
  IF ~~ THEN REPLY @23 GOTO 8
  IF ~Global("CbShortcutToMixing","LOCALS",1)
OR(16)
PartyHasItem("CB3647Ha")
PartyHasItem("CB3647Hb")
PartyHasItem("CB3647Hc")
PartyHasItem("CB3647Hd")
PartyHasItem("CB3647He")
PartyHasItem("CB3647Hf")
PartyHasItem("CB3647Hg")
PartyHasItem("CB3647Hh")
PartyHasItem("CB3647Hi")
PartyHasItem("CB3647Hj")
PartyHasItem("CB3647Hk")
PartyHasItem("CB3647Hl")
PartyHasItem("CB3647Hm")
PartyHasItem("CB3647Hn")
PartyHasItem("CB3647Ho")
PartyHasItem("CB3647Hp")~ THEN REPLY @5 GOTO 11
  IF ~~ THEN REPLY @24 GOTO 1
END

IF ~~ THEN BEGIN 11
  SAY @25
  IF ~PartyHasItem("CB3647Hj")~ THEN REPLY @26 DO ~TakePartyItemNum("CB3647Hj",1)
TakePartyGold(80)
SetGlobal("CbHerbHj","AR3647",1)
~ GOTO 15
  IF ~PartyHasItem("CB3647Hc")~ THEN REPLY @27 DO ~TakePartyItemNum("CB3647Hc",1)
TakePartyGold(80)
SetGlobal("CbHerbHc","AR3647",1)
~ GOTO 15
  IF ~PartyHasItem("CB3647Hd")~ THEN REPLY @28 DO ~TakePartyItemNum("CB3647Hd",1)
TakePartyGold(80)
SetGlobal("CbHerbHd","AR3647",1)
~ GOTO 15
  IF ~PartyHasItem("CB3647He")~ THEN REPLY @29 DO ~TakePartyItemNum("CB3647He",1)
TakePartyGold(80)
SetGlobal("CbHerbHe","AR3647",1)
~ GOTO 15
  IF ~PartyHasItem("CB3647Hm")~ THEN REPLY @30 DO ~TakePartyItemNum("CB3647Hm",1)
TakePartyGold(80)
SetGlobal("CbHerbHm","AR3647",1)
~ GOTO 15
  IF ~PartyHasItem("CB3647Hg")~ THEN REPLY @31 DO ~TakePartyItemNum("CB3647Hg",1)
TakePartyGold(80)
SetGlobal("CbHerbHg","AR3647",1)
~ GOTO 15
  IF ~PartyHasItem("CB3647Hh")~ THEN REPLY @32 DO ~TakePartyItemNum("CB3647Hh",1)
TakePartyGold(80)
SetGlobal("CbHerbHh","AR3647",1)
~ GOTO 15
  IF ~PartyHasItem("CB3647Hb")~ THEN REPLY @33 DO ~TakePartyItemNum("CB3647Hb",1)
TakePartyGold(80)
SetGlobal("CbHerbHb","AR3647",1)
~ GOTO 15
  IF ~PartyHasItem("CB3647Hi")~ THEN REPLY @34 DO ~TakePartyItemNum("CB3647Hi",1)
TakePartyGold(80)
SetGlobal("CbHerbHi","AR3647",1)
~ GOTO 15
  IF ~PartyHasItem("CB3647Hp")~ THEN REPLY @35 DO ~TakePartyItemNum("CB3647Hp",1)
TakePartyGold(80)
SetGlobal("CbHerbHp","AR3647",1)
~ GOTO 15
  IF ~PartyHasItem("CB3647Hf")~ THEN REPLY @36 DO ~TakePartyItemNum("CB3647Hf",1)
TakePartyGold(80)
SetGlobal("CbHerbHf","AR3647",1)
~ GOTO 15
  IF ~PartyHasItem("CB3647Hk")~ THEN REPLY @37 DO ~TakePartyItemNum("CB3647Hk",1)
TakePartyGold(80)
SetGlobal("CbHerbHk","AR3647",1)
~ GOTO 15
  IF ~PartyHasItem("CB3647Hl")~ THEN REPLY @38 DO ~TakePartyItemNum("CB3647Hl",1)
TakePartyGold(80)
SetGlobal("CbHerbHl","AR3647",1)
~ GOTO 15
  IF ~PartyHasItem("CB3647Hn")~ THEN REPLY @39 DO ~TakePartyItemNum("CB3647Hn",1)
TakePartyGold(80)
SetGlobal("CbHerbHn","AR3647",1)
~ GOTO 15
  IF ~PartyHasItem("CB3647Ha")~ THEN REPLY @40 DO ~TakePartyItemNum("CB3647Ha",1)
TakePartyGold(80)
SetGlobal("CbHerbHa","AR3647",1)
~ GOTO 15
  IF ~PartyHasItem("CB3647Ho")~ THEN REPLY @41 DO ~TakePartyItemNum("CB3647Ho",1)
TakePartyGold(80)
SetGlobal("CbHerbHo","AR3647",1)
~ GOTO 15
  IF ~~ THEN REPLY @42 GOTO 1
END

IF ~~ THEN BEGIN 12
  SAY @43
  IF ~~ THEN REPLY @44 GOTO 1
  IF ~PartyHasItem("CB3647He")
Global("CbHerbHe","AR3647",0)~ THEN REPLY @45 DO ~TakePartyItemNum("CB3647He",1)
~ GOTO 13
  IF ~PartyHasItem("CB3647Hc")
Global("CbHerbHc","AR3647",0)~ THEN REPLY @46 DO ~TakePartyItemNum("CB3647Hc",1)
~ GOTO 13
  IF ~PartyHasItem("CB3647Ha")
Global("CbHerbHa","AR3647",0)~ THEN REPLY @47 DO ~TakePartyItemNum("CB3647Ha",1)
~ GOTO 13
  IF ~PartyHasItem("CB3647Hm")
Global("CbHerbHm","AR3647",0)~ THEN REPLY @48 DO ~TakePartyItemNum("CB3647Hm",1)
~ GOTO 13
  IF ~PartyHasItem("CB3647Hf")
Global("CbHerbHf","AR3647",0)~ THEN REPLY @49 DO ~TakePartyItemNum("CB3647Hf",1)
~ GOTO 13
  IF ~PartyHasItem("CB3647Hd")
Global("CbHerbHd","AR3647",0)~ THEN REPLY @50 DO ~TakePartyItemNum("CB3647Hd",1)
~ GOTO 13
  IF ~PartyHasItem("CB3647Ho")
Global("CbHerbHo","AR3647",0)~ THEN REPLY @51 DO ~TakePartyItemNum("CB3647Ho",1)
~ GOTO 13
  IF ~PartyHasItem("CB3647Hg")
Global("CbHerbHg","AR3647",0)~ THEN REPLY @52 DO ~TakePartyItemNum("CB3647Hg",1)
~ GOTO 13
  IF ~PartyHasItem("CB3647Hp")
Global("CbHerbHp","AR3647",0)~ THEN REPLY @53 DO ~TakePartyItemNum("CB3647Hp",1)
~ GOTO 13
  IF ~PartyHasItem("CB3647Hj")
Global("CbHerbHj","AR3647",0)~ THEN REPLY @54 DO ~TakePartyItemNum("CB3647Hj",1)
~ GOTO 13
  IF ~PartyHasItem("CB3647Hk")
Global("CbHerbHk","AR3647",0)~ THEN REPLY @55 DO ~TakePartyItemNum("CB3647Hk",1)
~ GOTO 13
  IF ~PartyHasItem("CB3647Hh")
Global("CbHerbHh","AR3647",0)~ THEN REPLY @56 DO ~TakePartyItemNum("CB3647Hh",1)
~ GOTO 13
  IF ~PartyHasItem("CB3647Hl")
Global("CbHerbHl","AR3647",0)~ THEN REPLY @57 DO ~TakePartyItemNum("CB3647Hl",1)
~ GOTO 13
  IF ~PartyHasItem("CB3647Hb")
Global("CbHerbHb","AR3647",0)~ THEN REPLY @58 DO ~TakePartyItemNum("CB3647Hb",1)
~ GOTO 13
  IF ~PartyHasItem("CB3647Hn")
Global("CbHerbHn","AR3647",0)~ THEN REPLY @59 DO ~TakePartyItemNum("CB3647Hn",1)
~ GOTO 13
  IF ~PartyHasItem("CB3647Hi")
Global("CbHerbHi","AR3647",0)~ THEN REPLY @60 DO ~TakePartyItemNum("CB3647Hi",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @61
  IF ~RandomNumLT(100,11)
RandomNumGT(100,0)~ THEN DO ~SetGlobal("CbHerbHa","AR3647",0)
SetGlobal("CbHerbHb","AR3647",0)
SetGlobal("CbHerbHc","AR3647",0)
SetGlobal("CbHerbHd","AR3647",0)
SetGlobal("CbHerbHe","AR3647",0)
SetGlobal("CbHerbHf","AR3647",0)
SetGlobal("CbHerbHg","AR3647",0)
SetGlobal("CbHerbHh","AR3647",0)
SetGlobal("CbHerbHi","AR3647",0)
SetGlobal("CbHerbHj","AR3647",0)
SetGlobal("CbHerbHk","AR3647",0)
SetGlobal("CbHerbHl","AR3647",0)
SetGlobal("CbHerbHm","AR3647",0)
SetGlobal("CbHerbHn","AR3647",0)
SetGlobal("CbHerbHo","AR3647",0)
SetGlobal("CbHerbHp","AR3647",0)
GiveItemCreate("CB3647M1",LastTalkedToBy(Myself),1,0,0)
~ GOTO 14
  IF ~RandomNumLT(100,21)
RandomNumGT(100,10)~ THEN DO ~SetGlobal("CbHerbHa","AR3647",0)
SetGlobal("CbHerbHb","AR3647",0)
SetGlobal("CbHerbHc","AR3647",0)
SetGlobal("CbHerbHd","AR3647",0)
SetGlobal("CbHerbHe","AR3647",0)
SetGlobal("CbHerbHf","AR3647",0)
SetGlobal("CbHerbHg","AR3647",0)
SetGlobal("CbHerbHh","AR3647",0)
SetGlobal("CbHerbHi","AR3647",0)
SetGlobal("CbHerbHj","AR3647",0)
SetGlobal("CbHerbHk","AR3647",0)
SetGlobal("CbHerbHl","AR3647",0)
SetGlobal("CbHerbHm","AR3647",0)
SetGlobal("CbHerbHn","AR3647",0)
SetGlobal("CbHerbHo","AR3647",0)
SetGlobal("CbHerbHp","AR3647",0)
GiveItemCreate("CB3647M2",LastTalkedToBy(Myself),1,0,0)
~ GOTO 14
  IF ~RandomNumLT(100,31)
RandomNumGT(100,20)~ THEN DO ~SetGlobal("CbHerbHa","AR3647",0)
SetGlobal("CbHerbHb","AR3647",0)
SetGlobal("CbHerbHc","AR3647",0)
SetGlobal("CbHerbHd","AR3647",0)
SetGlobal("CbHerbHe","AR3647",0)
SetGlobal("CbHerbHf","AR3647",0)
SetGlobal("CbHerbHg","AR3647",0)
SetGlobal("CbHerbHh","AR3647",0)
SetGlobal("CbHerbHi","AR3647",0)
SetGlobal("CbHerbHj","AR3647",0)
SetGlobal("CbHerbHk","AR3647",0)
SetGlobal("CbHerbHl","AR3647",0)
SetGlobal("CbHerbHm","AR3647",0)
SetGlobal("CbHerbHn","AR3647",0)
SetGlobal("CbHerbHo","AR3647",0)
SetGlobal("CbHerbHp","AR3647",0)
GiveItemCreate("CB3647M3",LastTalkedToBy(Myself),1,0,0)
~ GOTO 14
  IF ~RandomNumLT(100,41)
RandomNumGT(100,30)~ THEN DO ~SetGlobal("CbHerbHa","AR3647",0)
SetGlobal("CbHerbHb","AR3647",0)
SetGlobal("CbHerbHc","AR3647",0)
SetGlobal("CbHerbHd","AR3647",0)
SetGlobal("CbHerbHe","AR3647",0)
SetGlobal("CbHerbHf","AR3647",0)
SetGlobal("CbHerbHg","AR3647",0)
SetGlobal("CbHerbHh","AR3647",0)
SetGlobal("CbHerbHi","AR3647",0)
SetGlobal("CbHerbHj","AR3647",0)
SetGlobal("CbHerbHk","AR3647",0)
SetGlobal("CbHerbHl","AR3647",0)
SetGlobal("CbHerbHm","AR3647",0)
SetGlobal("CbHerbHn","AR3647",0)
SetGlobal("CbHerbHo","AR3647",0)
SetGlobal("CbHerbHp","AR3647",0)
GiveItemCreate("CB3647M4",LastTalkedToBy(Myself),1,0,0)
~ GOTO 14
  IF ~RandomNumLT(100,51)
RandomNumGT(100,40)~ THEN DO ~SetGlobal("CbHerbHa","AR3647",0)
SetGlobal("CbHerbHb","AR3647",0)
SetGlobal("CbHerbHc","AR3647",0)
SetGlobal("CbHerbHd","AR3647",0)
SetGlobal("CbHerbHe","AR3647",0)
SetGlobal("CbHerbHf","AR3647",0)
SetGlobal("CbHerbHg","AR3647",0)
SetGlobal("CbHerbHh","AR3647",0)
SetGlobal("CbHerbHi","AR3647",0)
SetGlobal("CbHerbHj","AR3647",0)
SetGlobal("CbHerbHk","AR3647",0)
SetGlobal("CbHerbHl","AR3647",0)
SetGlobal("CbHerbHm","AR3647",0)
SetGlobal("CbHerbHn","AR3647",0)
SetGlobal("CbHerbHo","AR3647",0)
SetGlobal("CbHerbHp","AR3647",0)
GiveItemCreate("CB3647M5",LastTalkedToBy(Myself),1,0,0)
~ GOTO 14
  IF ~RandomNumLT(100,61)
RandomNumGT(100,50)~ THEN DO ~SetGlobal("CbHerbHa","AR3647",0)
SetGlobal("CbHerbHb","AR3647",0)
SetGlobal("CbHerbHc","AR3647",0)
SetGlobal("CbHerbHd","AR3647",0)
SetGlobal("CbHerbHe","AR3647",0)
SetGlobal("CbHerbHf","AR3647",0)
SetGlobal("CbHerbHg","AR3647",0)
SetGlobal("CbHerbHh","AR3647",0)
SetGlobal("CbHerbHi","AR3647",0)
SetGlobal("CbHerbHj","AR3647",0)
SetGlobal("CbHerbHk","AR3647",0)
SetGlobal("CbHerbHl","AR3647",0)
SetGlobal("CbHerbHm","AR3647",0)
SetGlobal("CbHerbHn","AR3647",0)
SetGlobal("CbHerbHo","AR3647",0)
SetGlobal("CbHerbHp","AR3647",0)
GiveItemCreate("CB3647M6",LastTalkedToBy(Myself),1,0,0)
~ GOTO 14
  IF ~RandomNumLT(100,71)
RandomNumGT(100,60)~ THEN DO ~SetGlobal("CbHerbHa","AR3647",0)
SetGlobal("CbHerbHb","AR3647",0)
SetGlobal("CbHerbHc","AR3647",0)
SetGlobal("CbHerbHd","AR3647",0)
SetGlobal("CbHerbHe","AR3647",0)
SetGlobal("CbHerbHf","AR3647",0)
SetGlobal("CbHerbHg","AR3647",0)
SetGlobal("CbHerbHh","AR3647",0)
SetGlobal("CbHerbHi","AR3647",0)
SetGlobal("CbHerbHj","AR3647",0)
SetGlobal("CbHerbHk","AR3647",0)
SetGlobal("CbHerbHl","AR3647",0)
SetGlobal("CbHerbHm","AR3647",0)
SetGlobal("CbHerbHn","AR3647",0)
SetGlobal("CbHerbHo","AR3647",0)
SetGlobal("CbHerbHp","AR3647",0)
GiveItemCreate("CB3647M7",LastTalkedToBy(Myself),1,0,0)
~ GOTO 14
  IF ~RandomNumLT(100,81)
RandomNumGT(100,70)~ THEN DO ~SetGlobal("CbHerbHa","AR3647",0)
SetGlobal("CbHerbHb","AR3647",0)
SetGlobal("CbHerbHc","AR3647",0)
SetGlobal("CbHerbHd","AR3647",0)
SetGlobal("CbHerbHe","AR3647",0)
SetGlobal("CbHerbHf","AR3647",0)
SetGlobal("CbHerbHg","AR3647",0)
SetGlobal("CbHerbHh","AR3647",0)
SetGlobal("CbHerbHi","AR3647",0)
SetGlobal("CbHerbHj","AR3647",0)
SetGlobal("CbHerbHk","AR3647",0)
SetGlobal("CbHerbHl","AR3647",0)
SetGlobal("CbHerbHm","AR3647",0)
SetGlobal("CbHerbHn","AR3647",0)
SetGlobal("CbHerbHo","AR3647",0)
SetGlobal("CbHerbHp","AR3647",0)
GiveItemCreate("CB3647M8",LastTalkedToBy(Myself),1,0,0)
~ GOTO 14
  IF ~RandomNumLT(100,91)
RandomNumGT(100,80)~ THEN DO ~SetGlobal("CbHerbHa","AR3647",0)
SetGlobal("CbHerbHb","AR3647",0)
SetGlobal("CbHerbHc","AR3647",0)
SetGlobal("CbHerbHd","AR3647",0)
SetGlobal("CbHerbHe","AR3647",0)
SetGlobal("CbHerbHf","AR3647",0)
SetGlobal("CbHerbHg","AR3647",0)
SetGlobal("CbHerbHh","AR3647",0)
SetGlobal("CbHerbHi","AR3647",0)
SetGlobal("CbHerbHj","AR3647",0)
SetGlobal("CbHerbHk","AR3647",0)
SetGlobal("CbHerbHl","AR3647",0)
SetGlobal("CbHerbHm","AR3647",0)
SetGlobal("CbHerbHn","AR3647",0)
SetGlobal("CbHerbHo","AR3647",0)
SetGlobal("CbHerbHp","AR3647",0)
GiveItemCreate("CB3647M9",LastTalkedToBy(Myself),1,0,0)
~ GOTO 14
  IF ~RandomNumLT(100,101)
RandomNumGT(100,90)~ THEN DO ~SetGlobal("CbHerbHa","AR3647",0)
SetGlobal("CbHerbHb","AR3647",0)
SetGlobal("CbHerbHc","AR3647",0)
SetGlobal("CbHerbHd","AR3647",0)
SetGlobal("CbHerbHe","AR3647",0)
SetGlobal("CbHerbHf","AR3647",0)
SetGlobal("CbHerbHg","AR3647",0)
SetGlobal("CbHerbHh","AR3647",0)
SetGlobal("CbHerbHi","AR3647",0)
SetGlobal("CbHerbHj","AR3647",0)
SetGlobal("CbHerbHk","AR3647",0)
SetGlobal("CbHerbHl","AR3647",0)
SetGlobal("CbHerbHm","AR3647",0)
SetGlobal("CbHerbHn","AR3647",0)
SetGlobal("CbHerbHo","AR3647",0)
SetGlobal("CbHerbHp","AR3647",0)
GiveItemCreate("CB3647M0",LastTalkedToBy(Myself),1,0,0)
~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @62
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15
  SAY @63
  IF ~~ THEN GOTO 12
END
