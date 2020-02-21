BEGIN ~CBHLD0W1~

IF ~Global("CbIamA_HardCurrencyGirl","LOCALS",1)
Gender(LastTalkedToBy(Myself),FEMALE)
RandomNum(2,1)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_HardCurrencyGirl","LOCALS",1)
Gender(LastTalkedToBy(Myself),FEMALE)
RandomNum(2,2)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_HardCurrencyGirl","LOCALS",1)
Gender(LastTalkedToBy(Myself),MALE)
RandomNum(2,1)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_HardCurrencyGirl","LOCALS",1)
Gender(LastTalkedToBy(Myself),MALE)
RandomNum(2,2)~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_WarVeteran","LOCALS",1)
RandomNum(3,1)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_WarVeteran","LOCALS",1)
RandomNum(3,2)~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_WarVeteran","LOCALS",1)
RandomNum(3,3)~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_Tourist","LOCALS",1)
RandomNum(2,1)~ THEN BEGIN 7
  SAY @8
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_Tourist","LOCALS",1)
RandomNum(2,2)~ THEN BEGIN 8
  SAY @9
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_Minstrel","LOCALS",1)~ THEN BEGIN 9
  SAY @10
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~Global("CbIamA_Lamplighter","LOCALS",1)~ THEN BEGIN 10
  SAY @11
  IF ~~ THEN DO ~RandomWalk()~ EXIT
END

IF ~Global("CbIamA_DrunkenRowdy","LOCALS",1)
GlobalLT("CbDrunkRowdyGoesEnemy","GLOBAL",5)
RandomNum(5,1)~ THEN BEGIN 11
  SAY @12
  IF ~~ THEN DO ~IncrementGlobal("CbDrunkRowdyGoesEnemy","GLOBAL",1)~ EXIT
END

IF ~Global("CbIamA_DrunkenRowdy","LOCALS",1)
GlobalLT("CbDrunkRowdyGoesEnemy","GLOBAL",5)
RandomNum(5,2)~ THEN BEGIN 12
  SAY @13
  IF ~~ THEN DO ~IncrementGlobal("CbDrunkRowdyGoesEnemy","GLOBAL",1)~ EXIT
END

IF ~Global("CbIamA_DrunkenRowdy","LOCALS",1)
GlobalLT("CbDrunkRowdyGoesEnemy","GLOBAL",5)
RandomNum(5,3)~ THEN BEGIN 13
  SAY @14
  IF ~~ THEN DO ~IncrementGlobal("CbDrunkRowdyGoesEnemy","GLOBAL",1)~ EXIT
END

IF ~Global("CbIamA_DrunkenRowdy","LOCALS",1)
GlobalLT("CbDrunkRowdyGoesEnemy","GLOBAL",5)
RandomNum(5,4)~ THEN BEGIN 14
  SAY @15
  IF ~~ THEN DO ~IncrementGlobal("CbDrunkRowdyGoesEnemy","GLOBAL",1)~ EXIT
END

IF ~Global("CbIamA_DrunkenRowdy","LOCALS",1)
GlobalLT("CbDrunkRowdyGoesEnemy","GLOBAL",5)
RandomNum(5,5)~ THEN BEGIN 15
  SAY @16
  IF ~~ THEN DO ~IncrementGlobal("CbDrunkRowdyGoesEnemy","GLOBAL",1)~ EXIT
END

IF ~Global("CbIamA_Lover","LOCALS",1)
Global("CbHlondethIsForLovers","GLOBAL",0)~ THEN BEGIN 16
  SAY @17
  IF ~~ THEN DO ~IncrementGlobal("CbHlondethIsForLovers","GLOBAL",1)
ActionOverride("CBHLD0W1",StartDialogNoSet("CBHLD0M1"))~ EXIT
END

IF ~Global("CbIamA_Lover","LOCALS",1)
Global("CbHlondethIsForLovers","GLOBAL",1)~ THEN BEGIN 17
  SAY @18
  IF ~~ THEN DO ~IncrementGlobal("CbHlondethIsForLovers","GLOBAL",1)
ActionOverride("CBHLD0M1",StartDialogNoSet("CBHLD0W1"))~ EXIT
END

IF ~Global("CbIamA_Lover","LOCALS",1)
Global("CbHlondethIsForLovers","GLOBAL",2)~ THEN BEGIN 18
  SAY @19
  IF ~~ THEN DO ~IncrementGlobal("CbHlondethIsForLovers","GLOBAL",1)
ActionOverride("CBHLD0W1",StartDialogNoSet("CBHLD0M1"))~ EXIT
END

IF ~Global("CbIamA_Lover","LOCALS",1)
Global("CbHlondethIsForLovers","GLOBAL",3)~ THEN BEGIN 19
  SAY @20
  IF ~~ THEN DO ~SetGlobal("CbHlondethIsForLovers","GLOBAL",4)
EscapeArea()~ EXIT
END

IF ~Global("CbIamA_Merc","LOCALS",1)
RandomNum(5,1)~ THEN BEGIN 20
  SAY @21
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_Merc","LOCALS",1)
RandomNum(5,2)~ THEN BEGIN 21
  SAY @22
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_Merc","LOCALS",1)
RandomNum(5,3)~ THEN BEGIN 22
  SAY @23
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_Merc","LOCALS",1)
RandomNum(5,4)~ THEN BEGIN 23
  SAY @24
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_Merc","LOCALS",1)
RandomNum(5,5)~ THEN BEGIN 24
  SAY @25
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_DrunkenForeigner","LOCALS",1)
RandomNum(3,1)~ THEN BEGIN 25
  SAY @26
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_DrunkenForeigner","LOCALS",1)
RandomNum(3,2)~ THEN BEGIN 26
  SAY @27
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_DrunkenForeigner","LOCALS",1)
RandomNum(3,3)~ THEN BEGIN 27
  SAY @28
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_ShoppingWoman","LOCALS",1)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 28
  SAY @29
  IF ~~ THEN DO ~GiveItemCreate("CBHLD001",LastTalkedToBy(Myself),1,0,0)~ EXIT
END

IF ~Global("CbIamA_ShoppingWoman","LOCALS",1)
Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 29
  SAY @29
  IF ~~ THEN DO ~GiveItemCreate("CBHLD002",LastTalkedToBy(Myself),1,0,0)~ EXIT
END

IF ~Global("CbIamA_WagonLoader","LOCALS",1)~ THEN BEGIN 30
  SAY @30
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_InsanePriest","LOCALS",1)
RandomNum(5,1)~ THEN BEGIN 31
  SAY @31
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_InsanePriest","LOCALS",1)
RandomNum(5,2)~ THEN BEGIN 32
  SAY @32
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_InsanePriest","LOCALS",1)
RandomNum(5,3)~ THEN BEGIN 33
  SAY @33
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_InsanePriest","LOCALS",1)
RandomNum(5,4)~ THEN BEGIN 34
  SAY @34
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_InsanePriest","LOCALS",1)
RandomNum(5,5)~ THEN BEGIN 35
  SAY @35
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_EscortwithCourtesan","LOCALS",1)
Global("CbHlondethCourtesanDialog","GLOBAL",0)~ THEN BEGIN 36
  SAY @36
  IF ~~ THEN DO ~SetGlobal("CbHlondethCourtesanDialog","GLOBAL",1)
ActionOverride("CBHLD0W1",StartDialogNoSet("CBHLD0M1"))~ EXIT
END

IF ~Global("CbIamA_CourtesanwithEscort","LOCALS",1)
Global("CbHlondethCourtesanDialog","GLOBAL",1)~ THEN BEGIN 37
  SAY @37
  IF ~~ THEN DO ~SetGlobal("CbHlondethCourtesanDialog","GLOBAL",2)
ActionOverride("CBHLD0M1",StartDialogNoSet("CBHLD0W1"))~ EXIT
END

IF ~Global("CbIamA_EscortwithCourtesan","LOCALS",1)
Global("CbHlondethCourtesanDialog","GLOBAL",2)~ THEN BEGIN 38
  SAY @38
  IF ~~ THEN DO ~SetGlobal("CbHlondethCourtesanDialog","GLOBAL",3)
ActionOverride("CBHLD0W1",StartDialogNoSet("CBHLD0M1"))~ EXIT
END

IF ~Global("CbIamA_CourtesanwithEscort","LOCALS",1)
Global("CbHlondethCourtesanDialog","GLOBAL",3)~ THEN BEGIN 39
  SAY @39
  IF ~~ THEN DO ~SetGlobal("CbHlondethCourtesanDialog","GLOBAL",4)~ EXIT
END

IF ~Global("CbIamA_CrierForValiants","LOCALS",1)~ THEN BEGIN 40
  SAY @40
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_Restauranteur","LOCALS",1)~ THEN BEGIN 41
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @43
  IF ~~ THEN REPLY @44 GOTO 43
  IF ~~ THEN REPLY @45 GOTO 44
END

IF ~~ THEN BEGIN 43
  SAY @46
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 44
  SAY @47
  IF ~~ THEN DO ~StartStore("CBHLD0W1",LastTalkedToBy(Myself))~ EXIT
END

IF ~Global("CbIamA_Messanger","LOCALS",1)~ THEN BEGIN 45
  SAY @48
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~Global("CbIamA_DrunkenRowdy","LOCALS",1)
Global("CbDrunkRowdyGoesEnemy","GLOBAL",5)~ THEN BEGIN 46
  SAY @49
  IF ~~ THEN DO ~SetGlobal("CbDrunkRowdyGoesEnemy","GLOBAL",10)
SetGlobal("CbHlondethStreetScene","GLOBAL",5)
SetGlobalTimer("CbHlondethExtraDestroys","GLOBAL",200)
SetGlobalTimer("CbStreetSceneTimer","GLOBAL",20)~ EXIT
END

IF ~Global("CbIamA_Noblewoman","LOCALS",1)
RandomNum(5,1)~ THEN BEGIN 47
  SAY @50
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_Noblewoman","LOCALS",1)
RandomNum(5,2)~ THEN BEGIN 48
  SAY @51
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_Noblewoman","LOCALS",1)
RandomNum(5,3)~ THEN BEGIN 49
  SAY @52
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_Noblewoman","LOCALS",1)
RandomNum(5,4)~ THEN BEGIN 50
  SAY @53
  IF ~~ THEN EXIT
END

IF ~Global("CbIamA_Noblewoman","LOCALS",1)
RandomNum(5,5)~ THEN BEGIN 51
  SAY @54
  IF ~~ THEN EXIT
END
