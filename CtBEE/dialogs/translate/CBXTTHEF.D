BEGIN ~CBXTTHEF~

IF ~AreaCheck("AR1600")
Global("CbHortonIntroDone","LOCALS",0)
Global("CbXTThiefReturnsToBrynn","LOCALS",0)~ THEN BEGIN 0
  SAY @1
  IF ~Class(LastTalkedToBy(Myself),THIEF)~ THEN GOTO 2
  IF ~!Class(LastTalkedToBy(Myself),THIEF)~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 70
END

IF ~~ THEN BEGIN 4
  SAY @9
  IF ~Global("PlayerThiefGuild","GLOBAL",1)
Global("PGFailed","GLOBAL",0)~ THEN REPLY @10 GOTO 8
  IF ~GlobalGT("BodhiJob","GLOBAL",3)
!Global("WorkingForAran","GLOBAL",1)
Dead("aran")~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @14
  IF ~Global("PlayerThiefGuild","GLOBAL",1)
Global("PGFailed","GLOBAL",0)~ THEN REPLY @10 GOTO 8
  IF ~GlobalGT("BodhiJob","GLOBAL",3)
!Global("WorkingForAran","GLOBAL",1)
Dead("aran")~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 9
  IF ~~ THEN REPLY @19 GOTO 10
END

IF ~~ THEN BEGIN 8
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 13
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~~ THEN REPLY @23 GOTO 12
END

IF ~~ THEN BEGIN 9
  SAY @24
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 10
  SAY @25
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 11
  SAY @26
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 12
  SAY @27
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY @28
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @29
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @30
  IF ~~ THEN REPLY @31 DO ~SetGlobal("CbHortonIntroDone","LOCALS",1)~ GOTO 17
  IF ~~ THEN REPLY @32 DO ~SetGlobal("CbHortonIntroDone","LOCALS",1)~ GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @33
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 67
  IF ~!GlobalGT("CbXTThiefStealsFromTemple","GLOBAL",0)~ THEN REPLY @36 GOTO 18
  IF ~!GlobalGT("CbXTThiefStealsFromSlavers","GLOBAL",0)~ THEN REPLY @37 GOTO 22
  IF ~!GlobalGT("CbXTThiefStealsFromGovernment","GLOBAL",0)~ THEN REPLY @38 GOTO 27
  IF ~!GlobalGT("CbXTThiefStealsFromHarpers","GLOBAL",0)~ THEN REPLY @39 GOTO 30
  IF ~AreaCheck("AR1600")~ THEN REPLY @40 GOTO 41
END

IF ~~ THEN BEGIN 18
  SAY @41
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @42
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @43
  IF ~!GlobalGT("CbXTThiefStealsFromSlavers","GLOBAL",0)~ THEN REPLY @37 GOTO 22
  IF ~!GlobalGT("CbXTThiefStealsFromGovernment","GLOBAL",0)~ THEN REPLY @38 GOTO 27
  IF ~!GlobalGT("CbXTThiefStealsFromHarpers","GLOBAL",0)~ THEN REPLY @39 GOTO 30
  IF ~AreaCheck("AR1600")~ THEN REPLY @40 GOTO 41
  IF ~!GlobalGT("CbXTThiefStealsFromTemple","GLOBAL",0)~ THEN REPLY @44 GOTO 21
  IF ~~ THEN REPLY @35 GOTO 67
END

IF ~~ THEN BEGIN 21
  SAY @45
  IF ~~ THEN DO ~SetGlobal("CbXTThiefStealsFromTemple","GLOBAL",1)
AddJournalEntry(@107,QUEST)
MoveBetweenAreas("AR0900",[2587.1437],14)~ EXIT
END

IF ~~ THEN BEGIN 22
  SAY @46
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @47
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @48
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @49
  IF ~!GlobalGT("CbXTThiefStealsFromTemple","GLOBAL",0)~ THEN REPLY @36 GOTO 18
  IF ~!GlobalGT("CbXTThiefStealsFromGovernment","GLOBAL",0)~ THEN REPLY @38 GOTO 27
  IF ~!GlobalGT("CbXTThiefStealsFromHarpers","GLOBAL",0)~ THEN REPLY @39 GOTO 30
  IF ~AreaCheck("AR1600")~ THEN REPLY @40 GOTO 41
  IF ~!GlobalGT("CbXTThiefStealsFromTemple","GLOBAL",0)~ THEN REPLY @44 GOTO 21
  IF ~~ THEN REPLY @35 GOTO 67
  IF ~!GlobalGT("CbXTThiefStealsFromSlavers","GLOBAL",0)~ THEN REPLY @50 GOTO 26
  IF ~AreaCheck("AR1600")~ THEN REPLY @40 GOTO 41
END

IF ~~ THEN BEGIN 26
  SAY @51
  IF ~~ THEN DO ~SetGlobal("CbXTThiefStealsFromSlavers","GLOBAL",1)
AddJournalEntry(@108,QUEST)
MoveBetweenAreas("AR0906",[1644.1375],10)~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @52
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @53
  IF ~!GlobalGT("CbXTThiefStealsFromGovernment","GLOBAL",0)~ THEN REPLY @54 GOTO 29
  IF ~!GlobalGT("CbXTThiefStealsFromTemple","GLOBAL",0)~ THEN REPLY @36 GOTO 18
  IF ~!GlobalGT("CbXTThiefStealsFromHarpers","GLOBAL",0)~ THEN REPLY @39 GOTO 30
  IF ~AreaCheck("AR1600")~ THEN REPLY @40 GOTO 41
  IF ~!GlobalGT("CbXTThiefStealsFromTemple","GLOBAL",0)~ THEN REPLY @44 GOTO 21
  IF ~~ THEN REPLY @35 GOTO 67
  IF ~!GlobalGT("CbXTThiefStealsFromSlavers","GLOBAL",0)~ THEN REPLY @37 GOTO 22
  IF ~AreaCheck("AR1600")~ THEN REPLY @40 GOTO 41
END

IF ~~ THEN BEGIN 29
  SAY @55
  IF ~~ THEN DO ~SetGlobal("CbXTThiefStealsFromGovernment","GLOBAL",1)
AddJournalEntry(@109,QUEST)
MoveBetweenAreas("AR1000",[2808.894],13)~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY @56
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @57
  IF ~!GlobalGT("CbXTThiefStealsFromTemple","GLOBAL",0)~ THEN REPLY @36 GOTO 18
  IF ~!GlobalGT("CbXTThiefStealsFromGovernment","GLOBAL",0)~ THEN REPLY @38 GOTO 27
  IF ~!GlobalGT("CbXTThiefStealsFromHarpers","GLOBAL",0)~ THEN REPLY @58 GOTO 32
  IF ~AreaCheck("AR1600")~ THEN REPLY @40 GOTO 41
  IF ~~ THEN REPLY @35 GOTO 67
  IF ~!GlobalGT("CbXTThiefStealsFromSlavers","GLOBAL",0)~ THEN REPLY @37 GOTO 22
END

IF ~~ THEN BEGIN 32
  SAY @59
  IF ~~ THEN DO ~SetGlobal("CbXTThiefStealsFromHarpers","GLOBAL",1)
AddJournalEntry(@110,QUEST)
MoveBetweenAreas("AR0300",[1006.3472],1)~ EXIT
END

IF ~AreaCheck("AR0900")
Global("CbXTThiefStealsFromTemple","GLOBAL",1)
!PartyHasItem("CBXTLTaa")
!PartyHasItem("CBXTLTbb")
!PartyHasItem("CBXTLTcc")~ THEN BEGIN 33
  SAY @60
  IF ~~ THEN EXIT
END

IF ~AreaCheck("AR0900")
Global("CbXTThiefStealsFromTemple","GLOBAL",1)
PartyHasItem("CBXTLTaa")
PartyHasItem("CBXTLTbb")
PartyHasItem("CBXTLTcc")~ THEN BEGIN 34
  SAY @61
  IF ~~ THEN DO ~SetGlobal("CbXTThiefStealsFromTemple","GLOBAL",2)
AddJournalEntry(@136,QUEST)
MoveBetweenAreas("AR0400",[42.2200],10)~ EXIT
END

IF ~Global("CbXTThiefStealsFromSlavers","GLOBAL",1)
AreaCheck("AR0906")
!PartyHasItem("CBXTSHaa")
!PartyHasItem("CBXTSHbb")
!PartyHasItem("CBXTSHcc")
!PartyHasItem("CBXTSHdd")
!PartyHasItem("CBXTSHee")~ THEN BEGIN 35
  SAY @62
  IF ~~ THEN EXIT
END

IF ~Global("CbXTThiefStealsFromSlavers","GLOBAL",1)
AreaCheck("AR0906")
PartyHasItem("CBXTSHaa")
PartyHasItem("CBXTSHbb")
PartyHasItem("CBXTSHcc")
PartyHasItem("CBXTSHdd")
PartyHasItem("CBXTSHee")~ THEN BEGIN 36
  SAY @63
  IF ~~ THEN DO ~TakePartyItem("CBXTSHee")
DestroyItem("CBXTSHee")
GiveGoldForce(44600)
SetGlobal("CbXTThiefStealsFromSlavers","GLOBAL",2)
AddJournalEntry(@136,QUEST)
MoveBetweenAreas("AR0400",[42.2200],10)~ EXIT
END

IF ~Global("CbXTThiefStealsFromGovernment","GLOBAL",1)
AreaCheck("AR1000")
!PartyHasItem("CBXTGBaa")
!PartyHasItem("CBXTGBbb")~ THEN BEGIN 37
  SAY @64
  IF ~~ THEN EXIT
END

IF ~Global("CbXTThiefStealsFromGovernment","GLOBAL",1)
AreaCheck("AR1000")
PartyHasItem("CBXTGBaa")
PartyHasItem("CBXTGBbb")~ THEN BEGIN 38
  SAY @65
  IF ~~ THEN DO ~SetGlobal("CbXTThiefStealsFromGovernment","GLOBAL",2)
AddJournalEntry(@136,QUEST)
MoveBetweenAreas("AR0400",[42.2200],10)~ EXIT
END

IF ~Global("CbXTThiefStealsFromHarpers","GLOBAL",1)
AreaCheck("AR0300")
!PartyHasItem("CBXTHSaa")
!PartyHasItem("CBXTHSbb")
!PartyHasItem("CBXTHScc")
!PartyHasItem("CBXTHSdd")~ THEN BEGIN 39
  SAY @66
  IF ~~ THEN DO ~Unlock("Door0308b")
TriggerActivation("Tran0308b",TRUE)~ EXIT
END

IF ~Global("CbXTThiefStealsFromHarpers","GLOBAL",1)
AreaCheck("AR0300")
PartyHasItem("CBXTHSaa")
PartyHasItem("CBXTHSbb")
PartyHasItem("CBXTHScc")
PartyHasItem("CBXTHSdd")~ THEN BEGIN 40
  SAY @67
  IF ~~ THEN DO ~SetGlobal("CbXTThiefStealsFromHarpers","GLOBAL",2)
AddJournalEntry(@136,QUEST)
MoveBetweenAreas("AR0400",[42.2200],10)~ EXIT
END

IF ~~ THEN BEGIN 41
  SAY @68
  IF ~~ THEN REPLY @69 GOTO 42
  IF ~!GlobalGT("CbXTThiefStealsFromPaladins","GLOBAL",0)~ THEN REPLY @70 GOTO 43
  IF ~!GlobalGT("CbXTThiefStealsFromDead","GLOBAL",0)~ THEN REPLY @71 GOTO 48
  IF ~!GlobalGT("CbXTThiefStealsFromJysstev","GLOBAL",0)~ THEN REPLY @72 GOTO 52
  IF ~~ THEN REPLY @35 GOTO 67
END

IF ~~ THEN BEGIN 42
  SAY @73
  IF ~!GlobalGT("CbXTThiefStealsFromTemple","GLOBAL",0)~ THEN REPLY @36 GOTO 18
  IF ~!GlobalGT("CbXTThiefStealsFromSlavers","GLOBAL",0)~ THEN REPLY @37 GOTO 22
  IF ~!GlobalGT("CbXTThiefStealsFromGovernment","GLOBAL",0)~ THEN REPLY @38 GOTO 27
  IF ~!GlobalGT("CbXTThiefStealsFromHarpers","GLOBAL",0)~ THEN REPLY @39 GOTO 30
  IF ~AreaCheck("AR1600")~ THEN REPLY @40 GOTO 41
  IF ~~ THEN REPLY @35 GOTO 67
  IF ~!GlobalGT("CbXTThiefStealsFromPaladins","GLOBAL",0)~ THEN REPLY @70 GOTO 43
  IF ~!GlobalGT("CbXTThiefStealsFromDead","GLOBAL",0)~ THEN REPLY @71 GOTO 48
  IF ~!GlobalGT("CbXTThiefStealsFromJysstev","GLOBAL",0)~ THEN REPLY @72 GOTO 52
END

IF ~~ THEN BEGIN 43
  SAY @74
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY @75
  IF ~!GlobalGT("CbXTThiefStealsFromTemple","GLOBAL",0)~ THEN REPLY @36 GOTO 18
  IF ~!GlobalGT("CbXTThiefStealsFromSlavers","GLOBAL",0)~ THEN REPLY @37 GOTO 22
  IF ~!GlobalGT("CbXTThiefStealsFromGovernment","GLOBAL",0)~ THEN REPLY @38 GOTO 27
  IF ~!GlobalGT("CbXTThiefStealsFromHarpers","GLOBAL",0)~ THEN REPLY @39 GOTO 30
  IF ~AreaCheck("AR1600")~ THEN REPLY @40 GOTO 41
  IF ~~ THEN REPLY @35 GOTO 67
  IF ~!GlobalGT("CbXTThiefStealsFromPaladins","GLOBAL",0)~ THEN REPLY @76 GOTO 45
  IF ~!GlobalGT("CbXTThiefStealsFromDead","GLOBAL",0)~ THEN REPLY @71 GOTO 48
  IF ~!GlobalGT("CbXTThiefStealsFromJysstev","GLOBAL",0)~ THEN REPLY @72 GOTO 52
END

IF ~~ THEN BEGIN 45
  SAY @77
  IF ~~ THEN DO ~SetGlobal("CbXTThiefStealsFromPaladins","GLOBAL",1)
AddJournalEntry(@115,QUEST)
MoveBetweenAreas("AR0900",[2949.3657],8)~ EXIT
END

IF ~AreaCheck("AR0900")
Global("CbXTThiefStealsFromPaladins","GLOBAL",1)
!PartyHasItem("CBXTRHaa")~ THEN BEGIN 46
  SAY @78
  IF ~~ THEN EXIT
END

IF ~AreaCheck("AR0900")
Global("CbXTThiefStealsFromPaladins","GLOBAL",1)
PartyHasItem("CBXTRHaa")~ THEN BEGIN 47
  SAY @79
  IF ~~ THEN DO ~SetGlobal("CbXTThiefStealsFromPaladins","GLOBAL",2)
AddJournalEntry(@136,QUEST)
MoveBetweenAreas("AR0400",[42.2200],10)~ EXIT
END

IF ~~ THEN BEGIN 48
  SAY @80
  IF ~~ THEN REPLY @69 GOTO 42
  IF ~!GlobalGT("CbXTThiefStealsFromTemple","GLOBAL",0)~ THEN REPLY @36 GOTO 18
  IF ~!GlobalGT("CbXTThiefStealsFromSlavers","GLOBAL",0)~ THEN REPLY @37 GOTO 22
  IF ~!GlobalGT("CbXTThiefStealsFromGovernment","GLOBAL",0)~ THEN REPLY @38 GOTO 27
  IF ~!GlobalGT("CbXTThiefStealsFromHarpers","GLOBAL",0)~ THEN REPLY @39 GOTO 30
  IF ~AreaCheck("AR1600")~ THEN REPLY @40 GOTO 67
  IF ~~ THEN REPLY @35 GOTO 67
  IF ~!GlobalGT("CbXTThiefStealsFromPaladins","GLOBAL",0)~ THEN REPLY @70 GOTO 43
  IF ~!GlobalGT("CbXTThiefStealsFromDead","GLOBAL",0)~ THEN REPLY @81 GOTO 49
  IF ~!GlobalGT("CbXTThiefStealsFromJysstev","GLOBAL",0)~ THEN REPLY @72 GOTO 52
END

IF ~~ THEN BEGIN 49
  SAY @82
  IF ~~ THEN DO ~SetGlobal("CbXTThiefStealsFromDead","GLOBAL",1)
AddJournalEntry(@117,QUEST)
MoveBetweenAreas("AR0800",[1066.1157],15)~ EXIT
END

IF ~Global("CbXTThiefStealsFromDead","GLOBAL",1)
AreaCheck("AR0800")
!PartyHasItem("CBXTGCaa")
!PartyHasItem("CBXTGCbb")
!PartyHasItem("CBXTGCcc")
!PartyHasItem("CBXTGCdd")~ THEN BEGIN 50
  SAY @83
  IF ~~ THEN EXIT
END

IF ~Global("CbXTThiefStealsFromDead","GLOBAL",1)
AreaCheck("AR0800")
PartyHasItem("CBXTGCaa")
PartyHasItem("CBXTGCbb")
PartyHasItem("CBXTGCcc")
PartyHasItem("CBXTGCdd")~ THEN BEGIN 51
  SAY @84
  IF ~~ THEN DO ~SetGlobal("CbXTThiefStealsFromDead","GLOBAL",2)
AddJournalEntry(@136,QUEST)
MoveBetweenAreas("AR0400",[42.2200],10)~ EXIT
END

IF ~~ THEN BEGIN 52
  SAY @85
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
  SAY @86
  IF ~~ THEN REPLY @69 GOTO 42
  IF ~!GlobalGT("CbXTThiefStealsFromTemple","GLOBAL",0)~ THEN REPLY @36 GOTO 18
  IF ~!GlobalGT("CbXTThiefStealsFromSlavers","GLOBAL",0)~ THEN REPLY @37 GOTO 22
  IF ~!GlobalGT("CbXTThiefStealsFromJysstev","GLOBAL",0)~ THEN REPLY @87 GOTO 54
  IF ~!GlobalGT("CbXTThiefStealsFromGovernment","GLOBAL",0)~ THEN REPLY @38 GOTO 27
  IF ~!GlobalGT("CbXTThiefStealsFromHarpers","GLOBAL",0)~ THEN REPLY @39 GOTO 30
  IF ~AreaCheck("AR1600")~ THEN REPLY @40 GOTO 67
  IF ~~ THEN REPLY @35 GOTO 67
  IF ~!GlobalGT("CbXTThiefStealsFromPaladins","GLOBAL",0)~ THEN REPLY @70 GOTO 43
  IF ~!GlobalGT("CbXTThiefStealsFromDead","GLOBAL",0)~ THEN REPLY @71 GOTO 48
END

IF ~~ THEN BEGIN 54
  SAY @88
  IF ~~ THEN DO ~SetGlobal("CbXTThiefStealsFromJysstev","GLOBAL",1)
AddJournalEntry(@119,QUEST)
MoveBetweenAreas("AR1000",[2776.2930],10)~ EXIT
END

IF ~Global("CbXTThiefStealsFromJysstev","GLOBAL",1)
AreaCheck("AR1000")
!PartyHasItem("CBXTJEaa")
!PartyHasItem("CBXTJEbb")~ THEN BEGIN 55
  SAY @89
  IF ~~ THEN EXIT
END

IF ~Global("CbXTThiefStealsFromJysstev","GLOBAL",1)
AreaCheck("AR1000")
PartyHasItem("CBXTJEaa")
PartyHasItem("CBXTJEbb")~ THEN BEGIN 56
  SAY @90
  IF ~~ THEN DO ~SetGlobal("CbXTThiefStealsFromJysstev","GLOBAL",2)
AddJournalEntry(@136,QUEST)
MoveBetweenAreas("AR0400",[42.2200],10)~ EXIT
END

IF ~AreaCheck("AR0400")
Global("CbXTThiefJobDone","LOCALS",0)~ THEN BEGIN 57
  SAY @91
  IF ~Global("CbXTThiefStealsFromTemple","GLOBAL",2)
PartyGoldGT(10000)~ THEN DO ~TakePartyGold(10000)
EraseJournalEntry(@121)
EraseJournalEntry(@136)
AddJournalEntry(@111,QUEST_DONE)
SetGlobal("CbXTThiefStealsFromTemple","GLOBAL",3)~ GOTO 58
  IF ~Global("CbXTThiefStealsFromSlavers","GLOBAL",2)
PartyGoldGT(21600)~ THEN DO ~TakePartyGold(21600)
EraseJournalEntry(@122)
EraseJournalEntry(@136)
AddJournalEntry(@112,QUEST_DONE)
SetGlobal("CbXTThiefStealsFromSlavers","GLOBAL",3)~ GOTO 58
  IF ~Global("CbXTThiefStealsFromGovernment","GLOBAL",2)
PartyGoldGT(320000)~ THEN DO ~TakePartyGold(320000)
EraseJournalEntry(@123)
EraseJournalEntry(@136)
AddJournalEntry(@113,QUEST_DONE)
SetGlobal("CbXTThiefStealsFromGovernment","GLOBAL",3)~ GOTO 58
  IF ~Global("CbXTThiefStealsFromPaladins","GLOBAL",2)
PartyGoldGT(4800)~ THEN DO ~TakePartyGold(4800)
EraseJournalEntry(@125)
EraseJournalEntry(@136)
AddJournalEntry(@116,QUEST_DONE)
SetGlobal("CbXTThiefStealsFromPaladins","GLOBAL",3)~ GOTO 58
  IF ~Global("CbXTThiefStealsFromHarpers","GLOBAL",2)
PartyGoldGT(136000)~ THEN DO ~TakePartyGold(136000)
EraseJournalEntry(@124)
EraseJournalEntry(@136)
AddJournalEntry(@114,QUEST_DONE)
SetGlobal("CbXTThiefStealsFromHarpers","GLOBAL",3)~ GOTO 58
  IF ~Global("CbXTThiefStealsFromDead","GLOBAL",2)
PartyGoldGT(3200)~ THEN DO ~TakePartyGold(3200)
EraseJournalEntry(@127)
EraseJournalEntry(@136)
AddJournalEntry(@118,QUEST_DONE)
SetGlobal("CbXTThiefStealsFromDead","GLOBAL",3)~ GOTO 58
  IF ~Global("CbXTThiefStealsFromJysstev","GLOBAL",2)
PartyGoldGT(30100)~ THEN DO ~TakePartyGold(30100)
EraseJournalEntry(@128)
EraseJournalEntry(@136)
AddJournalEntry(@120,QUEST_DONE)
SetGlobal("CbXTThiefStealsFromJysstev","GLOBAL",3)~ GOTO 58
  IF ~Global("CbXTThiefStealsFromTemple","GLOBAL",2)
PartyGoldLT(10001)~ THEN DO ~SetGlobal("CbXTThiefTakesGoldTemp","LOCALS",10000)
EraseJournalEntry(@121)
EraseJournalEntry(@136)
AddJournalEntry(@129,QUEST_DONE)
SetGlobal("CbXTThiefStealsFromTemple","GLOBAL",3)~ GOTO 68
  IF ~Global("CbXTThiefStealsFromSlavers","GLOBAL",2)
PartyGoldLT(21601)~ THEN DO ~SetGlobal("CbXTThiefTakesGoldSlave","LOCALS",21600)
EraseJournalEntry(@122)
EraseJournalEntry(@136)
AddJournalEntry(@130,QUEST_DONE)
SetGlobal("CbXTThiefStealsFromSlavers","GLOBAL",3)~ GOTO 68
  IF ~Global("CbXTThiefStealsFromGovernment","GLOBAL",2)
PartyGoldLT(320001)~ THEN DO ~SetGlobal("CbXTThiefTakesGoldGov","LOCALS",320000)
EraseJournalEntry(@123)
EraseJournalEntry(@136)
AddJournalEntry(@131,QUEST_DONE)
SetGlobal("CbXTThiefStealsFromGovernment","GLOBAL",3)~ GOTO 68
  IF ~Global("CbXTThiefStealsFromPaladins","GLOBAL",2)
PartyGoldLT(4801)~ THEN DO ~SetGlobal("CbXTThiefTakesGoldPal","LOCALS",4800)
EraseJournalEntry(@125)
EraseJournalEntry(@136)
AddJournalEntry(@132,QUEST_DONE)
SetGlobal("CbXTThiefStealsFromPaladins","GLOBAL",3)~ GOTO 68
  IF ~Global("CbXTThiefStealsFromHarpers","GLOBAL",2)
PartyGoldLT(136001)~ THEN DO ~SetGlobal("CbXTThiefTakesGoldHarp","LOCALS",136000)
EraseJournalEntry(@124)
EraseJournalEntry(@136)
AddJournalEntry(@133,QUEST_DONE)
SetGlobal("CbXTThiefStealsFromHarpers","GLOBAL",3)~ GOTO 68
  IF ~Global("CbXTThiefStealsFromDead","GLOBAL",2)
PartyGoldLT(3201)~ THEN DO ~SetGlobal("CbXTThiefTakesGoldDead","LOCALS",3200)
EraseJournalEntry(@127)
EraseJournalEntry(@136)
AddJournalEntry(@134,QUEST_DONE)
SetGlobal("CbXTThiefStealsFromDead","GLOBAL",3)~ GOTO 68
  IF ~Global("CbXTThiefStealsFromJysstev","GLOBAL",2)
PartyGoldLT(30101)~ THEN DO ~SetGlobal("CbXTThiefTakesGoldNoble","LOCALS",30100)
EraseJournalEntry(@128)
EraseJournalEntry(@136)
AddJournalEntry(@135,QUEST_DONE)
SetGlobal("CbXTThiefStealsFromJysstev","GLOBAL",3)~ GOTO 68
END

IF ~~ THEN BEGIN 58
  SAY @92
  IF ~~ THEN REPLY @93 GOTO 59
  IF ~~ THEN REPLY @94 GOTO 62
  IF ~~ THEN REPLY @95 GOTO 63
END

IF ~~ THEN BEGIN 59
  SAY @96
  IF ~~ THEN DO ~SetGlobal("CbXTThiefJobDone","LOCALS",1)~ EXIT
END

IF ~AreaCheck("AR0400")
Global("CbXTThiefJobDone","LOCALS",1)~ THEN BEGIN 60
  SAY @97
  IF ~~ THEN REPLY @93 GOTO 61
  IF ~~ THEN REPLY @94 GOTO 62
  IF ~~ THEN REPLY @35 GOTO 67
END

IF ~~ THEN BEGIN 61
  SAY @98
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 62
  SAY @99
  IF ~~ THEN REPLY @35 GOTO 67
  IF ~!GlobalGT("CbXTThiefStealsFromTemple","GLOBAL",0)~ THEN REPLY @36 GOTO 18
  IF ~!GlobalGT("CbXTThiefStealsFromSlavers","GLOBAL",0)~ THEN REPLY @37 GOTO 22
  IF ~!GlobalGT("CbXTThiefStealsFromGovernment","GLOBAL",0)~ THEN REPLY @38 GOTO 27
  IF ~!GlobalGT("CbXTThiefStealsFromHarpers","GLOBAL",0)~ THEN REPLY @39 GOTO 30
  IF ~!GlobalGT("CbXTThiefStealsFromPaladins","GLOBAL",0)~ THEN REPLY @100 GOTO 43
  IF ~!GlobalGT("CbXTThiefStealsFromDead","GLOBAL",0)~ THEN REPLY @71 GOTO 48
  IF ~!GlobalGT("CbXTThiefStealsFromJysstev","GLOBAL",0)~ THEN REPLY @72 GOTO 52
  IF ~!AreaCheck("AR0400")
GlobalGT("CbXTThiefStealsFromJysstev","GLOBAL",0)
GlobalGT("CbXTThiefStealsFromDead","GLOBAL",0)
GlobalGT("CbXTThiefStealsFromPaladins","GLOBAL",0)
GlobalGT("CbXTThiefStealsFromHarpers","GLOBAL",0)
GlobalGT("CbXTThiefStealsFromGovernment","GLOBAL",0)
GlobalGT("CbXTThiefStealsFromSlavers","GLOBAL",0)
GlobalGT("CbXTThiefStealsFromTemple","GLOBAL",0)~ THEN GOTO 65
  IF ~AreaCheck("AR0400")
GlobalGT("CbXTThiefStealsFromHarpers","GLOBAL",0)
GlobalGT("CbXTThiefStealsFromGovernment","GLOBAL",0)
GlobalGT("CbXTThiefStealsFromSlavers","GLOBAL",0)
GlobalGT("CbXTThiefStealsFromTemple","GLOBAL",0)~ THEN GOTO 65
END

IF ~~ THEN BEGIN 63
  SAY @101
  IF ~~ THEN DO ~SetGlobal("CbXTThiefReturnsToBrynn","LOCALS",1)
MoveBetweenAreas("AR1600",[537.1971],12)~ EXIT
END

IF ~AreaCheck("AR1600")
Global("CbXTThiefReturnsToBrynn","LOCALS",1)~ THEN BEGIN 64
  SAY @97
  IF ~~ THEN REPLY @93 GOTO 61
  IF ~~ THEN REPLY @94 GOTO 62
  IF ~~ THEN REPLY @35 GOTO 67
END

IF ~~ THEN BEGIN 65
  SAY @102
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66
  SAY @103
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 67
  SAY @104
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 68
  SAY @105
  IF ~~ THEN REPLY @93 GOTO 59
  IF ~~ THEN REPLY @94 GOTO 62
  IF ~~ THEN REPLY @95 GOTO 63
END

IF ~AreaCheck("AR1600")
Global("CbHortonIntroDone","LOCALS",1)
Global("CbXTThiefReturnsToBrynn","LOCALS",0)~ THEN BEGIN 69
  SAY @30
  IF ~~ THEN REPLY @93 GOTO 61
  IF ~~ THEN REPLY @94 GOTO 62
  IF ~~ THEN REPLY @35 GOTO 67
END

IF ~~ THEN BEGIN 70
  SAY @106
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 70
END
