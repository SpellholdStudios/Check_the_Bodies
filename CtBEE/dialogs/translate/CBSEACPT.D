BEGIN ~CBSEACPT~

IF ~AreaCheck("AR0300")
Global("CbSeaCaptainDidIntro","GLOBAL",0)
Global("CbSeaCaptainToDocks","GLOBAL",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN REPLY @10 DO ~SetGlobal("CbSeaCaptainDidIntro","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @11 DO ~SetGlobal("CbSeaCaptainDidIntro","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @12 DO ~SetGlobal("CbSeaCaptainDidIntro","GLOBAL",1)~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~Global("CbSeaCaptainTale","GLOBAL",0)~ THEN REPLY @16 DO ~SetGlobal("CbSeaCaptainTale","GLOBAL",1)~ GOTO 22
  IF ~Global("CbSeaCaptainTale","GLOBAL",1)~ THEN REPLY @16 DO ~SetGlobal("CbSeaCaptainTale","GLOBAL",2)~ GOTO 23
  IF ~Global("CbSeaCaptainTale","GLOBAL",2)~ THEN REPLY @16 DO ~SetGlobal("CbSeaCaptainTale","GLOBAL",3)~ GOTO 24
  IF ~GlobalGT("CbSeaCaptainTale","GLOBAL",2)~ THEN REPLY @16 GOTO 27
  IF ~Global("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @17 GOTO 21
  IF ~!AreaCheck("AR3588")
GlobalGT("CbBarbarianIntroGuy","GLOBAL",1)
Global("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @18 GOTO 12
  IF ~!AreaCheck("AR3588")
GlobalGT("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @19 GOTO 12
  IF ~!AreaCheck("AR1600")
GlobalGT("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @17 GOTO 15
  IF ~!AreaCheck("AR0300")~ THEN REPLY @20 GOTO 28
  IF ~~ THEN REPLY @21 GOTO 2
END

IF ~~ THEN BEGIN 8
  SAY @22
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @23
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @24
  IF ~!AreaCheck("AR3588")
GlobalGT("CbBarbarianIntroGuy","GLOBAL",1)
Global("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @18 GOTO 12
  IF ~!AreaCheck("AR3588")
GlobalGT("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @19 GOTO 12
  IF ~!AreaCheck("AR1600")
GlobalGT("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @17 GOTO 15
  IF ~Global("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @17 GOTO 21
  IF ~!AreaCheck("AR0300")~ THEN REPLY @20 GOTO 28
  IF ~~ THEN REPLY @25 GOTO 11
  IF ~Global("CbSeaCaptainTale","GLOBAL",0)~ THEN REPLY @26 DO ~SetGlobal("CbSeaCaptainTale","GLOBAL",1)~ GOTO 22
  IF ~Global("CbSeaCaptainTale","GLOBAL",1)~ THEN REPLY @26 DO ~SetGlobal("CbSeaCaptainTale","GLOBAL",2)~ GOTO 23
  IF ~Global("CbSeaCaptainTale","GLOBAL",2)~ THEN REPLY @26 DO ~SetGlobal("CbSeaCaptainTale","GLOBAL",3)~ GOTO 24
  IF ~GlobalGT("CbSeaCaptainTale","GLOBAL",2)~ THEN REPLY @26 GOTO 27
END

IF ~~ THEN BEGIN 11
  SAY @27
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @30
  IF ~PartyGoldGT(2199)~ THEN REPLY @31 DO ~TakePartyGold(2200)
DestroyGold(2200)~ GOTO 14
  IF ~PartyGoldLT(2200)~ THEN REPLY @32 GOTO 11
  IF ~~ THEN REPLY @33 GOTO 11
END

IF ~~ THEN BEGIN 14
  SAY @34
  IF ~~ THEN DO ~SetGlobal("CbSeaCaptainToRauthym","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @35
  IF ~PartyGoldGT(999)~ THEN REPLY @36 GOTO 17
  IF ~PartyGoldGT(4999)~ THEN REPLY @37 GOTO 18
  IF ~PartyGoldGT(9999)~ THEN REPLY @38 GOTO 19
  IF ~PartyGoldGT(19999)~ THEN REPLY @39 GOTO 20
  IF ~~ THEN REPLY @40 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @41
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY @42
  IF ~PartyGoldGT(4999)~ THEN REPLY @37 GOTO 18
  IF ~PartyGoldGT(9999)~ THEN REPLY @38 GOTO 19
  IF ~PartyGoldGT(19999)~ THEN REPLY @39 GOTO 20
  IF ~~ THEN REPLY @40 GOTO 16
END

IF ~~ THEN BEGIN 18
  SAY @43
  IF ~PartyGoldGT(999)~ THEN REPLY @36 GOTO 17
  IF ~PartyGoldGT(9999)~ THEN REPLY @38 GOTO 19
  IF ~PartyGoldGT(19999)~ THEN REPLY @39 GOTO 20
  IF ~~ THEN REPLY @40 GOTO 16
END

IF ~~ THEN BEGIN 19
  SAY @44
  IF ~PartyGoldGT(999)~ THEN REPLY @36 GOTO 17
  IF ~PartyGoldGT(4999)~ THEN REPLY @37 GOTO 18
  IF ~PartyGoldGT(19999)~ THEN REPLY @39 GOTO 20
  IF ~~ THEN REPLY @40 GOTO 16
END

IF ~~ THEN BEGIN 20
  SAY @45
  IF ~~ THEN DO ~TakePartyGold(20000)
DestroyGold(20000)
SetGlobal("CbSeaCaptainToBrynnlaw","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @46
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22
  SAY @47
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 23
  SAY @48
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 24
  SAY @49
  IF ~~ THEN GOTO 61
END

IF ~False()~ THEN BEGIN 25
  SAY @50
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 26
  SAY @50
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27
  SAY @51
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~!AreaCheck("AR3588")
GlobalGT("CbBarbarianIntroGuy","GLOBAL",1)
Global("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @18 GOTO 12
  IF ~!AreaCheck("AR3588")
GlobalGT("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @19 GOTO 12
  IF ~!AreaCheck("AR1600")
GlobalGT("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @17 GOTO 15
  IF ~Global("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @17 GOTO 21
  IF ~!AreaCheck("AR0300")~ THEN REPLY @20 GOTO 28
  IF ~~ THEN REPLY @21 GOTO 2
END

IF ~~ THEN BEGIN 28
  SAY @52
  IF ~PartyGoldGT(3999)~ THEN REPLY @31 DO ~TakePartyGold(4000)
DestroyGold(4000)~ GOTO 29
  IF ~PartyGoldLT(4000)~ THEN REPLY @32 GOTO 11
  IF ~~ THEN REPLY @33 GOTO 11
END

IF ~~ THEN BEGIN 29
  SAY @53
  IF ~~ THEN DO ~SetGlobal("CbSeaCaptainToDocks","GLOBAL",1)~ EXIT
END

IF ~AreaCheck("AR3588")
Global("CbSeaCaptainToRauthym","GLOBAL",3)~ THEN BEGIN 30
  SAY @54
  IF ~~ THEN REPLY @55 GOTO 33
  IF ~!AreaCheck("AR1600")
GlobalGT("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @56 GOTO 15
  IF ~Global("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @56 GOTO 21
  IF ~~ THEN REPLY @57 GOTO 28
  IF ~~ THEN REPLY @58 GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 32
  IF ~~ THEN REPLY @61 GOTO 33
END

IF ~~ THEN BEGIN 32
  SAY @62
  IF ~~ THEN DO ~SetGlobal("CbSeaCaptainToRauthym","GLOBAL",0)
Wait(1)
EscapeAreaMove("AR0300",4384,3000,2)~ EXIT
END

IF ~~ THEN BEGIN 33
  SAY @63
  IF ~~ THEN DO ~SetGlobal("CbSeaCaptainToRauthym","GLOBAL",0)~ EXIT
END

IF ~AreaCheck("AR3588")
Global("CbSeaCaptainToRauthym","GLOBAL",0)~ THEN BEGIN 34
  SAY @64
  IF ~~ THEN REPLY @65 GOTO 35
  IF ~!AreaCheck("AR1600")
GlobalGT("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @56 GOTO 15
  IF ~Global("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @56 GOTO 21
  IF ~~ THEN REPLY @57 GOTO 28
  IF ~~ THEN REPLY @66 GOTO 31
END

IF ~~ THEN BEGIN 35
  SAY @67
  IF ~~ THEN DO ~SetGlobal("CbSeaCaptainToRauthym","GLOBAL",0)~ EXIT
END

IF ~AreaCheck("AR1600")
Global("CbSeaCaptainToBrynnlaw","GLOBAL",3)~ THEN BEGIN 36
  SAY @68
  IF ~!AreaCheck("AR3588")
GlobalGT("CbBarbarianIntroGuy","GLOBAL",1)
Global("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @18 GOTO 12
  IF ~!AreaCheck("AR3588")
GlobalGT("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @55 GOTO 37
  IF ~~ THEN REPLY @57 GOTO 28
  IF ~~ THEN REPLY @58 GOTO 40
END

IF ~~ THEN BEGIN 37
  SAY @69
  IF ~~ THEN DO ~SetGlobal("CbSeaCaptainToBrynnlaw","GLOBAL",0)~ GOTO 44
END

IF ~AreaCheck("AR1600")
Global("CbSeaCaptainToBrynnlaw","GLOBAL",0)~ THEN BEGIN 38
  SAY @70
  IF ~!AreaCheck("AR3588")
GlobalGT("CbBarbarianIntroGuy","GLOBAL",1)
Global("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @18 GOTO 12
  IF ~!AreaCheck("AR3588")
GlobalGT("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @55 GOTO 39
  IF ~~ THEN REPLY @57 GOTO 28
  IF ~~ THEN REPLY @58 GOTO 40
END

IF ~~ THEN BEGIN 39
  SAY @71
  IF ~~ THEN DO ~SetGlobal("CbSeaCaptainToBrynnlaw","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 40
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 41
  IF ~~ THEN REPLY @61 GOTO 39
END

IF ~~ THEN BEGIN 41
  SAY @62
  IF ~~ THEN DO ~SetGlobal("CbSeaCaptainToBrynnlaw","GLOBAL",0)
Wait(1)
EscapeAreaMove("AR0300",4384,3000,2)~ EXIT
END

IF ~AreaCheck("AR0300")
GlobalGT("CbSeaCaptainToDocks","GLOBAL",0)~ THEN BEGIN 42
  SAY @72
  IF ~~ THEN DO ~SetGlobal("CbSeaCaptainToDocks","GLOBAL",0)~ EXIT
END

IF ~AreaCheck("AR0300")
Global("CbSeaCaptainDidIntro","GLOBAL",1)
Global("CbSeaCaptainToDocks","GLOBAL",0)~ THEN BEGIN 43
  SAY @73
  IF ~Global("CbSeaCaptainTale","GLOBAL",0)~ THEN REPLY @16 DO ~SetGlobal("CbSeaCaptainTale","GLOBAL",1)~ GOTO 22
  IF ~Global("CbSeaCaptainTale","GLOBAL",1)~ THEN REPLY @16 DO ~SetGlobal("CbSeaCaptainTale","GLOBAL",2)~ GOTO 23
  IF ~Global("CbSeaCaptainTale","GLOBAL",2)~ THEN REPLY @16 DO ~SetGlobal("CbSeaCaptainTale","GLOBAL",3)~ GOTO 24
  IF ~GlobalGT("CbSeaCaptainTale","GLOBAL",2)~ THEN REPLY @16 GOTO 27
  IF ~Global("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @17 GOTO 21
  IF ~!AreaCheck("AR3588")
GlobalGT("CbBarbarianIntroGuy","GLOBAL",1)
Global("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @18 GOTO 12
  IF ~!AreaCheck("AR3588")
GlobalGT("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @19 GOTO 12
  IF ~!AreaCheck("AR1600")
GlobalGT("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @17 GOTO 15
  IF ~!AreaCheck("AR0300")~ THEN REPLY @20 GOTO 28
  IF ~~ THEN REPLY @21 GOTO 2
END

IF ~~ THEN BEGIN 44
  SAY @74
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45
  SAY @75
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY @76
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @77
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY @78
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
  SAY @79
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~!AreaCheck("AR3588")
GlobalGT("CbBarbarianIntroGuy","GLOBAL",1)
Global("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @18 GOTO 12
  IF ~!AreaCheck("AR3588")
GlobalGT("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @19 GOTO 12
  IF ~!AreaCheck("AR1600")
GlobalGT("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @17 GOTO 15
  IF ~Global("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @17 GOTO 21
  IF ~!AreaCheck("AR0300")~ THEN REPLY @20 GOTO 28
  IF ~~ THEN REPLY @21 GOTO 2
END

IF ~~ THEN BEGIN 50
  SAY @80
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51
  SAY @81
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52
  SAY @82
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
  SAY @83
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54
  SAY @84
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55
  SAY @85
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56
  SAY @86
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57
  SAY @87
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58
  SAY @88
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59
  SAY @89
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60
  SAY @90
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~!AreaCheck("AR3588")
GlobalGT("CbBarbarianIntroGuy","GLOBAL",1)
Global("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @18 GOTO 12
  IF ~!AreaCheck("AR3588")
GlobalGT("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @19 GOTO 12
  IF ~!AreaCheck("AR1600")
GlobalGT("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @17 GOTO 15
  IF ~Global("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @17 GOTO 21
  IF ~!AreaCheck("AR0300")~ THEN REPLY @20 GOTO 28
  IF ~~ THEN REPLY @21 GOTO 2
END

IF ~~ THEN BEGIN 61
  SAY @91
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62
  SAY @92
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63
  SAY @93
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64
  SAY @94
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65
  SAY @95
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~!AreaCheck("AR3588")
GlobalGT("CbBarbarianIntroGuy","GLOBAL",1)
Global("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @18 GOTO 12
  IF ~!AreaCheck("AR3588")
GlobalGT("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @19 GOTO 12
  IF ~!AreaCheck("AR1600")
GlobalGT("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @17 GOTO 15
  IF ~Global("CbPartyEscapedUnderdark","GLOBAL",0)~ THEN REPLY @17 GOTO 21
  IF ~!AreaCheck("AR0300")~ THEN REPLY @20 GOTO 28
  IF ~~ THEN REPLY @21 GOTO 2
END
