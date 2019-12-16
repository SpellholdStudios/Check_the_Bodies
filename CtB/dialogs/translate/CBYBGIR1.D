BEGIN ~CBYBGIR1~

IF ~Global("CbMalteseArtifact","GLOBAL",4)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 11
END

IF ~~ THEN BEGIN 3
  SAY @10
  IF ~~ THEN DO ~SetGlobal("CbKillOffYbgir","GLOBAL",1)
TakePartyItem("CBMALMGE")
DestroyItem("CBMALMGE")
MoveToPointNoInterrupt([1226.1104])
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @11
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @12
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @15 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @16
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 11
  IF ~~ THEN REPLY @9 GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY @17
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @12
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @15 GOTO 7
END

IF ~~ THEN BEGIN 11
  SAY @18
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @19
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @20
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 15
  IF ~~ THEN REPLY @24 GOTO 18
END

IF ~~ THEN BEGIN 15
  SAY @25
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @26
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @27
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 18
  SAY @28
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @29
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 21
  IF ~~ THEN REPLY @32 GOTO 24
  IF ~~ THEN REPLY @33 GOTO 26
  IF ~~ THEN REPLY @34 GOTO 28
END

IF ~~ THEN BEGIN 21
  SAY @35 
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @36  
  IF ~~ THEN REPLY @37 GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @38 
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 24
  SAY @39
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @40
  IF ~~ THEN REPLY @37 GOTO 23
END

IF ~~ THEN BEGIN 26
  SAY @41
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @42
  IF ~~ THEN REPLY @37 GOTO 23
END

IF ~~ THEN BEGIN 28
  SAY @43
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 30
  IF ~~ THEN REPLY @46 GOTO 31
  IF ~~ THEN REPLY @47 GOTO 35
  IF ~Global("CbRelatesToElvesAndArtifacts1202","GLOBAL",0)~ THEN REPLY @48 GOTO 36
  IF ~Global("CbRelatesToElvesAndArtifacts1202","GLOBAL",1)
Global("CbRelatesToElvesAndArtifacts1401","GLOBAL",0)~ THEN REPLY @48 GOTO 39
  IF ~Global("CbRelatesToElvesAndArtifacts1202","GLOBAL",1)
Global("CbRelatesToElvesAndArtifacts1401","GLOBAL",1)~ THEN REPLY @48 GOTO 41
END

IF ~~ THEN BEGIN 30
  SAY @49
  IF ~~ THEN REPLY @46 GOTO 31
  IF ~~ THEN REPLY @47 GOTO 35
  IF ~Global("CbRelatesToElvesAndArtifacts1202","GLOBAL",0)~ THEN REPLY @48 GOTO 36
  IF ~Global("CbRelatesToElvesAndArtifacts1202","GLOBAL",1)
Global("CbRelatesToElvesAndArtifacts1401","GLOBAL",0)~ THEN REPLY @48 GOTO 39
  IF ~Global("CbRelatesToElvesAndArtifacts1202","GLOBAL",1)
Global("CbRelatesToElvesAndArtifacts1401","GLOBAL",1)~ THEN REPLY @48 GOTO 41
END

IF ~~ THEN BEGIN 31
  SAY @50
  IF ~NumInParty(1)~ THEN GOTO 32
  IF ~NumInPartyGT(1)~ THEN GOTO 33
END

IF ~~ THEN BEGIN 32
  SAY @51
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 33
  SAY @52
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @53
  IF ~~ THEN REPLY @45 GOTO 30
  IF ~~ THEN REPLY @47 GOTO 35
  IF ~Global("CbRelatesToElvesAndArtifacts1202","GLOBAL",0)~ THEN REPLY @48 GOTO 36
  IF ~Global("CbRelatesToElvesAndArtifacts1202","GLOBAL",1)
Global("CbRelatesToElvesAndArtifacts1401","GLOBAL",0)~ THEN REPLY @48 GOTO 39
  IF ~Global("CbRelatesToElvesAndArtifacts1202","GLOBAL",1)
Global("CbRelatesToElvesAndArtifacts1401","GLOBAL",1)~ THEN REPLY @48 GOTO 41
END

IF ~~ THEN BEGIN 35
  SAY @54
  IF ~~ THEN DO ~SetGlobal("CbKillOffYbgir","GLOBAL",1)
TakePartyItem("CBMALMGE")
DestroyItem("CBMALMGE")
MoveToPointNoInterrupt([1226.1104])
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 36
  SAY @55
  IF ~Global("CbRelatesToElvesAndArtifacts1200Revealed","GLOBAL",1)~ THEN GOTO 37
  IF ~Global("CbRelatesToElvesAndArtifacts1200Revealed","GLOBAL",0)~ THEN GOTO 38
END

IF ~~ THEN BEGIN 37
  SAY @56
  IF ~~ THEN DO ~SetGlobal("CbMalteseArtifact","GLOBAL",5)
SetGlobal("CbMalteseMageInWindspear","GLOBAL",1)~ GOTO 43
END

IF ~~ THEN BEGIN 38
  SAY @57
  IF ~~ THEN DO ~RevealAreaOnMap("AR1200")
SetGlobal("CbMalteseArtifact","GLOBAL",5)
SetGlobal("CbMalteseMageInWindspear","GLOBAL",1)~ GOTO 43
END

IF ~~ THEN BEGIN 39
  SAY @58
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @59
  IF ~~ THEN DO ~RevealAreaOnMap("AR1400")
SetGlobal("CbMalteseArtifact","GLOBAL",5)
SetGlobal("CbMalteseMageInTemple","GLOBAL",1)~ GOTO 43
END

IF ~~ THEN BEGIN 41
  SAY @60
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @61
  IF ~~ THEN DO ~RevealAreaOnMap("AR3570")
SetGlobal("CbMalteseArtifact","GLOBAL",5)
SetGlobal("CbMalteseMageInMeadow","GLOBAL",1)~ GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY @62
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY @63
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
  SAY @64
  IF ~~ THEN REPLY @65 GOTO 47
  IF ~~ THEN REPLY @66 GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY @67
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @68
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY @69
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
  SAY @70
  IF ~~ THEN REPLY @71 GOTO 50
END

IF ~~ THEN BEGIN 50
  SAY @72
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51
  SAY @73
  IF ~Global("CbMalteseMageInWindspear","GLOBAL",1)~ THEN DO ~SetGlobal("CbKillOffYbgir","GLOBAL",1)
AddJournalEntry(@74,QUEST)
EraseJournalEntry(@77)
EraseJournalEntry(@78)
TakePartyItem("CBMALMGE")
DestroyItem("CBMALMGE")
MoveToPointNoInterrupt([1226.1104])
EscapeArea()~ EXIT
  IF ~Global("CbMalteseMageInTemple","GLOBAL",1)~ THEN DO ~SetGlobal("CbKillOffYbgir","GLOBAL",1)
AddJournalEntry(@75,QUEST)
EraseJournalEntry(@77)
EraseJournalEntry(@78)
TakePartyItem("CBMALMGE")
DestroyItem("CBMALMGE")
MoveToPointNoInterrupt([1226.1104])
EscapeArea()~ EXIT
  IF ~Global("CbMalteseMageInMeadow","GLOBAL",1)~ THEN DO ~SetGlobal("CbKillOffYbgir","GLOBAL",1)
AddJournalEntry(@76,QUEST)
EraseJournalEntry(@77)
EraseJournalEntry(@78)
TakePartyItem("CBMALMGE")
DestroyItem("CBMALMGE")
MoveToPointNoInterrupt([1226.1104])
EscapeArea()~ EXIT
END
