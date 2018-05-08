BEGIN ~CBGORCLD~

IF ~NumTimesTalkedTo(0)
!Global("CbGorionDayOne","LOCALS",1)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2  GOTO 1
  IF ~~ THEN REPLY @3  GOTO 11
END

IF ~~ THEN BEGIN 1
  SAY @4   IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6  GOTO 9
  IF ~~ THEN REPLY @7  GOTO 10
END

IF ~~ THEN BEGIN 2
  SAY @8   
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @10 
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @11 
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @12 
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @13 
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @14 
  IF ~~ THEN DO ~SetGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)
SetGlobal("CbGorionDayOne","LOCALS",1)
SaveGame(0)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @15 
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 10
  SAY @16 
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 11
  SAY @17 
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @18 
  IF ~~ THEN REPLY @6  GOTO 13
  IF ~~ THEN REPLY @5  GOTO 9
  IF ~~ THEN REPLY @7  GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY @8 
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 14
  SAY @16 
  IF ~~ THEN GOTO 3
END

IF ~Global("CbGorionTeachesLesson","GLOBAL",0)
Global("CbGorionDayOne","LOCALS",1)~ THEN BEGIN 15
  SAY @19 
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)~ THEN REPLY @20  GOTO 16
  IF ~GlobalGT("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)
GlobalLT("CbPlayerOneDoesCandleKeepChores","GLOBAL",0)~ THEN REPLY @21  GOTO 16
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",-1)~ THEN REPLY @22  GOTO 18
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",0)
TimeLT(18)~ THEN REPLY @23  GOTO 19
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",0)
TimeGT(17)~ THEN REPLY @23  GOTO 20
  IF ~~ THEN REPLY @24  GOTO 29
END

IF ~~ THEN BEGIN 16
  SAY @25 
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @26 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18
  SAY @27 
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 19
  SAY @28 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20
  SAY @29 
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @30 
  IF ~!Global("CbGorionTeachesLesson","GLOBAL",4)~ THEN REPLY @31  GOTO 22
  IF ~~ THEN REPLY @32  GOTO 25
END

IF ~~ THEN BEGIN 22
  SAY @33 
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @34 
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @35 
  IF ~~ THEN DO ~IncrementGlobal("CbGorionTeachesLesson","GLOBAL",1)
DayNight(MIDNIGHT)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBREST")~ EXIT

/*  IF ~Global("CbGorionTeachesLesson","GLOBAL",0)~ THEN DO ~SetGlobal("CbGorionTeachesLesson","GLOBAL",1)
DayNight(0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBREST")~ EXIT
  IF ~Global("CbGorionTeachesLesson","GLOBAL",1)~ THEN DO ~SetGlobal("CbGorionTeachesLesson","GLOBAL",2)
DayNight(0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBREST")~ EXIT
  IF ~Global("CbGorionTeachesLesson","GLOBAL",2)~ THEN DO ~SetGlobal("CbGorionTeachesLesson","GLOBAL",3)
DayNight(0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBREST")~ EXIT
  IF ~Global("CbGorionTeachesLesson","GLOBAL",3)~ THEN DO ~SetGlobal("CbGorionTeachesLesson","GLOBAL",4)
DayNight(0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBREST")~ EXIT
  IF ~Global("CbGorionTeachesLesson","GLOBAL",4)~ THEN DO ~SetGlobal("CbGorionTeachesLesson","GLOBAL",5)
DayNight(0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBREST")~ EXIT*/
END

IF ~~ THEN BEGIN 25
  SAY @36 
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @37 
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @38 
  IF ~!Global("CbGorionTeachesLesson","GLOBAL",4)~ THEN REPLY @39  GOTO 22
  IF ~~ THEN REPLY @40  GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @41
  IF ~Global("CbGorionTeachesLesson","GLOBAL",0)~ THEN DO ~SetGlobal("CbGorionTeachesLesson","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTEACH2")//1
~ EXIT
  IF ~Global("CbGorionTeachesLesson","GLOBAL",1)~ THEN DO ~SetGlobal("CbGorionTeachesLesson","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTEACH1")//2
~ EXIT
  IF ~Global("CbGorionTeachesLesson","GLOBAL",2)~ THEN DO ~SetGlobal("CbGorionTeachesLesson","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTEACH3")
~ EXIT
  IF ~Global("CbGorionTeachesLesson","GLOBAL",3)~ THEN DO ~SetGlobal("CbGorionTeachesLesson","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTEACH4")
~ EXIT
  IF ~Global("CbGorionTeachesLesson","GLOBAL",4)~ THEN DO ~SetGlobal("CbGorionTeachesLesson","GLOBAL",5)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTEACH5")
~ EXIT
END

IF ~~ THEN BEGIN 29
  SAY @42 
  IF ~~ THEN EXIT
END

IF ~Global("CbGorionTeachesLesson","GLOBAL",1)
!Global("CbGorionDayTwo","LOCALS",1)~ THEN BEGIN 30
  SAY @43 
  IF ~~ THEN REPLY @44  DO ~SetGlobal("CbGorionDayTwo","LOCALS",1)
~ GOTO 31
  IF ~~ THEN REPLY @45  DO ~SetGlobal("CbGorionDayTwo","LOCALS",1)
~ GOTO 33
  IF ~~ THEN REPLY @46  DO ~SetGlobal("CbGorionDayTwo","LOCALS",1)
~ GOTO 34
  IF ~~ THEN REPLY @47  DO ~SetGlobal("CbGorionDayTwo","LOCALS",1)
~ GOTO 35
END

IF ~~ THEN BEGIN 31
  SAY @48 
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @49 
  IF ~~ THEN DO ~SetGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)
SetGlobal("CbPlayerDoesChoresForLibrarian","GLOBAL",0)
SetGlobal("CbDoingMaidsChores","GLOBAL",0)
SetGlobal("CbThalantyrScribes","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 33
  SAY @50 
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 34
  SAY @51 
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 35
  SAY @52 
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY @53 
  IF ~~ THEN DO ~SetGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)
SetGlobal("CbPlayerDoesChoresForLibrarian","GLOBAL",0)
SetGlobal("CbDoingMaidsChores","GLOBAL",0)
SetGlobal("CbThalantyrScribes","GLOBAL",0)~ EXIT
END

IF ~Global("CbGorionTeachesLesson","GLOBAL",1)
Global("CbGorionDayTwo","LOCALS",1)~ THEN BEGIN 37
  SAY @54 
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)~ THEN REPLY @20  GOTO 16
  IF ~GlobalGT("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)
GlobalLT("CbPlayerOneDoesCandleKeepChores","GLOBAL",0)~ THEN REPLY @21  GOTO 16
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",-1)~ THEN REPLY @22  GOTO 18
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",0)
TimeLT(18)~ THEN REPLY @23 GOTO 19
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",0)
TimeGT(17)~ THEN REPLY @23  GOTO 20
  IF ~~ THEN REPLY @24   GOTO 29
END

IF ~Global("CbGorionTeachesLesson","GLOBAL",2)
!Global("CbGorionDayThree","LOCALS",1)~ THEN BEGIN 38
  SAY @55 
  IF ~~ THEN REPLY @56  DO ~SetGlobal("CbGorionDayThree","LOCALS",1)
~ GOTO 39
  IF ~~ THEN REPLY @57  DO ~SetGlobal("CbGorionDayThree","LOCALS",1)
~ GOTO 43
  IF ~~ THEN REPLY @58  DO ~SetGlobal("CbGorionDayThree","LOCALS",1)
~ GOTO 50
END

IF ~~ THEN BEGIN 39
  SAY @59 
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @60 
  IF ~~ THEN REPLY @61  GOTO 41
  IF ~~ THEN REPLY @62  GOTO 42
END

IF ~~ THEN BEGIN 41
  SAY @63 
  IF ~~ THEN DO ~SetGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)
SetGlobal("CbPlayerDoesChoresForLibrarian","GLOBAL",0)
SetGlobal("CbDoingMaidsChores","GLOBAL",0)
SetGlobal("CbThalantyrScribes","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 42
  SAY @64 
  IF ~~ THEN DO ~SetGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)
SetGlobal("CbPlayerDoesChoresForLibrarian","GLOBAL",0)
SetGlobal("CbDoingMaidsChores","GLOBAL",0)
SetGlobal("CbThalantyrScribes","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 43
  SAY @65 
  IF ~~ THEN REPLY @66  GOTO 44
  IF ~~ THEN REPLY @67  GOTO 44
  IF ~~ THEN REPLY @68  GOTO 45
END

IF ~~ THEN BEGIN 44
  SAY @69 
  IF ~~ THEN DO ~SetGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)
SetGlobal("CbPlayerDoesChoresForLibrarian","GLOBAL",0)
SetGlobal("CbDoingMaidsChores","GLOBAL",0)
SetGlobal("CbThalantyrScribes","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 45
  SAY @70 
  IF ~~ THEN REPLY @71  GOTO 46
  IF ~~ THEN REPLY @72  GOTO 48
END

IF ~~ THEN BEGIN 46
  SAY @73 
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @74 
  IF ~~ THEN DO ~SetGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)
SetGlobal("CbPlayerDoesChoresForLibrarian","GLOBAL",0)
SetGlobal("CbDoingMaidsChores","GLOBAL",0)
SetGlobal("CbThalantyrScribes","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 48
  SAY @75 
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
  SAY @76 
  IF ~~ THEN DO ~SetGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)
SetGlobal("CbPlayerDoesChoresForLibrarian","GLOBAL",0)
SetGlobal("CbDoingMaidsChores","GLOBAL",0)
SetGlobal("CbThalantyrScribes","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 50
  SAY @77 
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51
  SAY @78 
  IF ~~ THEN DO ~SetGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)
SetGlobal("CbPlayerDoesChoresForLibrarian","GLOBAL",0)
SetGlobal("CbDoingMaidsChores","GLOBAL",0)
SetGlobal("CbThalantyrScribes","GLOBAL",0)~ EXIT
END

IF ~Global("CbGorionTeachesLesson","GLOBAL",2)
Global("CbGorionDayThree","LOCALS",1)~ THEN BEGIN 52
  SAY @79 
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)~ THEN REPLY @20 GOTO 16
  IF ~GlobalGT("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)
GlobalLT("CbPlayerOneDoesCandleKeepChores","GLOBAL",0)~ THEN REPLY @21  GOTO 16
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",-1)~ THEN REPLY @22  GOTO 18
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",0)
TimeLT(18)~ THEN REPLY @23  GOTO 19
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",0)
TimeGT(17)~ THEN REPLY @23  GOTO 20
  IF ~~ THEN REPLY @24  GOTO 29
END



IF ~Global("CbGorionTeachesLesson","GLOBAL",3)
!Global("CbGorionDayFour","LOCALS",1)~ THEN BEGIN 53
  SAY @80
  IF ~!PartyHasItem("POTN02")~ THEN REPLY @81  DO ~SetGlobal("CbGorionDayFour","LOCALS",1)~ GOTO 54
  IF ~!PartyHasItem("POTN02")~ THEN REPLY @82  DO ~SetGlobal("CbGorionDayFour","LOCALS",1)~ GOTO 55
  IF ~PartyHasItem("POTN02")~ THEN REPLY @81  DO ~SetGlobal("CbGorionDayFour","LOCALS",1)~ GOTO 102
  IF ~PartyHasItem("POTN02")~ THEN REPLY @82  DO ~SetGlobal("CbGorionDayFour","LOCALS",1)~ GOTO 101
END



IF ~~ THEN BEGIN 54
  SAY @83
  IF ~~ THEN DO ~SetGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)
SetGlobal("CbPlayerDoesChoresForLibrarian","GLOBAL",0)
SetGlobal("CbDoingMaidsChores","GLOBAL",0)
SetGlobal("CbThalantyrScribes","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 55
  SAY @84
  IF ~~ THEN GOTO 54
END



IF ~~ THEN BEGIN 101
  SAY @84
  IF ~~ THEN GOTO 102
END

IF ~~ THEN BEGIN 102
  SAY @120
  IF ~~ THEN REPLY @121 GOTO 103
END

IF ~~ THEN BEGIN 103
  SAY @122
  IF ~~ THEN DO ~TakePartyItem("POTN02")
GiveItemCreate("POTN37",Player1,1,1,0)~ GOTO 54
END




IF ~Global("CbGorionTeachesLesson","GLOBAL",3)
Global("CbGorionDayFour","LOCALS",1)~ THEN BEGIN 56
  SAY @85
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)~ THEN REPLY @20  GOTO 16
  IF ~GlobalGT("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)
GlobalLT("CbPlayerOneDoesCandleKeepChores","GLOBAL",0)~ THEN REPLY @21  GOTO 16
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",-1)~ THEN REPLY @22  GOTO 18
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",0)
TimeLT(18)~ THEN REPLY @23  GOTO 19
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",0)
TimeGT(17)~ THEN REPLY @23  GOTO 20
  IF ~~ THEN REPLY @24  GOTO 29
END

IF ~Global("CbGorionTeachesLesson","GLOBAL",4)
!Global("CbGorionDayFive","LOCALS",1)~ THEN BEGIN 57
  SAY @86  
  IF ~~ THEN REPLY @87  DO ~SetGlobal("CbGorionDayFive","LOCALS",1)
~ GOTO 58
  IF ~~ THEN REPLY @88  DO ~SetGlobal("CbGorionDayFive","LOCALS",1)
~ GOTO 59
  IF ~~ THEN REPLY @89  DO ~SetGlobal("CbGorionDayFive","LOCALS",1)
~ GOTO 61
END

IF ~~ THEN BEGIN 58
  SAY @90 
  IF ~~ THEN DO ~SetGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)
SetGlobal("CbPlayerDoesChoresForLibrarian","GLOBAL",0)
SetGlobal("CbDoingMaidsChores","GLOBAL",0)
SetGlobal("CbThalantyrScribes","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 59
  SAY @91 
  IF ~~ THEN REPLY @92  GOTO 60
END

IF ~~ THEN BEGIN 60
  SAY @93 
  IF ~~ THEN DO ~SetGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)
SetGlobal("CbPlayerDoesChoresForLibrarian","GLOBAL",0)
SetGlobal("CbDoingMaidsChores","GLOBAL",0)
SetGlobal("CbThalantyrScribes","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 61
  SAY @94 
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62
  SAY @95 
  IF ~~ THEN REPLY @96  GOTO 63
END

IF ~~ THEN BEGIN 63
  SAY @97 
  IF ~~ THEN REPLY @98  GOTO 64
END

IF ~~ THEN BEGIN 64
  SAY @99 
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65
  SAY @100 
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66
  SAY @101 
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67
  SAY @102 
  IF ~~ THEN REPLY @103  GOTO 68
  IF ~~ THEN REPLY @104  GOTO 70
END

IF ~~ THEN BEGIN 68
  SAY @105 
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69
  SAY @106 
  IF ~~ THEN DO ~SetGlobal("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)
SetGlobal("CbPlayerDoesChoresForLibrarian","GLOBAL",0)
SetGlobal("CbDoingMaidsChores","GLOBAL",0)
SetGlobal("CbThalantyrScribes","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 70
  SAY @107 
  IF ~~ THEN GOTO 69
END

IF ~Global("CbGorionTeachesLesson","GLOBAL",4)
Global("CbGorionDayFive","LOCALS",1)~ THEN BEGIN 71
  SAY @108 
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)~ THEN REPLY @20  GOTO 16
  IF ~GlobalGT("CbPlayerOneDoesCandleKeepChores","GLOBAL",-3)
GlobalLT("CbPlayerOneDoesCandleKeepChores","GLOBAL",0)~ THEN REPLY @21  GOTO 16
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",-1)~ THEN REPLY @22  GOTO 18
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",0)
TimeLT(18)~ THEN REPLY @23  GOTO 19
  IF ~Global("CbPlayerOneDoesCandleKeepChores","GLOBAL",0)
TimeGT(17)~ THEN REPLY @23  GOTO 20
  IF ~~ THEN REPLY @24  GOTO 29
END

IF ~Global("CbGorionTeachesLesson","GLOBAL",6)~ THEN BEGIN 72
  SAY @109
  IF ~Global("CbPlayerBlessedByLathander","GLOBAL",0)~ THEN GOTO 73
  IF ~Global("CbPlayerBlessedByLathander","GLOBAL",1)~ THEN GOTO 75
END

IF ~~ THEN BEGIN 73
  SAY @110 
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74
  SAY @111 
  IF ~Gender(Player1,MALE)~ THEN GOTO 77
  IF ~Gender(Player1,FEMALE)~ THEN GOTO 78
END

IF ~~ THEN BEGIN 75
  SAY @112 
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76
  SAY @113 
  IF ~Gender(Player1,MALE)~ THEN GOTO 77
  IF ~Gender(Player1,FEMALE)~ THEN GOTO 78
END

IF ~~ THEN BEGIN 77
  SAY @114 
  IF ~Race(Player1,HUMAN)~ THEN GOTO 79
  IF ~OR(2)
Race(Player1,ELF)
Race(Player1,HALF_ELF)~ THEN GOTO 81
  IF ~Race(Player1,DWARF)~ THEN GOTO 83
  IF ~Race(Player1,HALFLING)~ THEN GOTO 85
  IF ~Race(Player1,GNOME)~ THEN GOTO 87
  IF ~Race(Player1,HALFORC)~ THEN GOTO 89
END

IF ~~ THEN BEGIN 78
  SAY @114 
  IF ~Race(Player1,HUMAN)~ THEN GOTO 80
  IF ~OR(2)
Race(Player1,ELF)
Race(Player1,HALF_ELF)~ THEN GOTO 82
  IF ~Race(Player1,DWARF)~ THEN GOTO 84
  IF ~Race(Player1,HALFLING)~ THEN GOTO 86
  IF ~Race(Player1,GNOME)~ THEN GOTO 88
  IF ~Race(Player1,HALFORC)~ THEN GOTO 90
END

IF ~~ THEN BEGIN 79
  SAY @115 
  IF ~OR(4)
Class(Player1,CLERIC)
Class(Player1,DRUID)
Class(Player1,CLERIC_MAGE)
Class(Player1,CLERIC_THIEF)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6000")
~ EXIT
  IF ~OR(10)
Class(Player1,FIGHTER)
Class(Player1,PALADIN)
Class(Player1,FIGHTER_MAGE)
Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF)
Class(Player1,FIGHTER_MAGE_THIEF)
Class(Player1,RANGER)
Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)
Class(Player1,CLERIC_RANGER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6100")
~ EXIT
  IF ~OR(3)
Class(Player1,MAGE)
Class(Player1,MAGE_THIEF)
Class(Player1,SORCERER)
Gender(Player1,MALE)
Race(Player1,HUMAN)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6200")
~ EXIT
  IF ~OR(2)
Class(Player1,THIEF)
Class(Player1,BARD)
Gender(Player1,MALE)
Race(Player1,HUMAN)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6300")
~ EXIT
  IF ~Class(Player1,MONK)
Gender(Player1,MALE)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6500")
~ EXIT
END

IF ~~ THEN BEGIN 80
  SAY @115 
  IF ~OR(4)
Class(Player1,CLERIC)
Class(Player1,DRUID)
Class(Player1,CLERIC_MAGE)
Class(Player1,CLERIC_THIEF)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6010")
~ EXIT
  IF ~OR(10)
Class(Player1,FIGHTER)
Class(Player1,PALADIN)
Class(Player1,FIGHTER_MAGE)
Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF)
Class(Player1,FIGHTER_MAGE_THIEF)
Class(Player1,RANGER)
Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)
Class(Player1,CLERIC_RANGER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6110")
~ EXIT
  IF ~OR(3)
Class(Player1,MAGE)
Class(Player1,MAGE_THIEF)
Class(Player1,SORCERER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6210")
~ EXIT
  IF ~OR(2)
Class(Player1,THIEF)
Class(Player1,BARD)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6310")
~ EXIT
  IF ~Class(Player1,MONK)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6510")
~ EXIT
END

IF ~~ THEN BEGIN 81
  SAY @114 
  IF ~OR(4)
Class(Player1,CLERIC)
Class(Player1,DRUID)
Class(Player1,CLERIC_MAGE)
Class(Player1,CLERIC_THIEF)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6001")
~ EXIT
  IF ~OR(10)
Class(Player1,FIGHTER)
Class(Player1,PALADIN)
Class(Player1,FIGHTER_MAGE)
Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF)
Class(Player1,FIGHTER_MAGE_THIEF)
Class(Player1,RANGER)
Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)
Class(Player1,CLERIC_RANGER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6101")
~ EXIT
  IF ~OR(3)
Class(Player1,MAGE)
Class(Player1,MAGE_THIEF)
Class(Player1,SORCERER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6201")
~ EXIT
  IF ~OR(2)
Class(Player1,THIEF)
Class(Player1,BARD)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6301")
~ EXIT
END

IF ~~ THEN BEGIN 82
  SAY @114 
  IF ~OR(4)
Class(Player1,CLERIC)
Class(Player1,DRUID)
Class(Player1,CLERIC_MAGE)
Class(Player1,CLERIC_THIEF)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6011")
~ EXIT
  IF ~OR(10)
Class(Player1,FIGHTER)
Class(Player1,PALADIN)
Class(Player1,FIGHTER_MAGE)
Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF)
Class(Player1,FIGHTER_MAGE_THIEF)
Class(Player1,RANGER)
Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)
Class(Player1,CLERIC_RANGER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6111")
~ EXIT
  IF ~OR(3)
Class(Player1,MAGE)
Class(Player1,MAGE_THIEF)
Class(Player1,SORCERER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6211")
~ EXIT
  IF ~OR(2)
Class(Player1,THIEF)
Class(Player1,BARD)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6311")
~ EXIT
END

IF ~~ THEN BEGIN 83
  SAY @114 
  IF ~OR(4)
Class(Player1,CLERIC)
Class(Player1,DRUID)
Class(Player1,CLERIC_MAGE)
Class(Player1,CLERIC_THIEF)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6002")
~ EXIT
  IF ~OR(10)
Class(Player1,FIGHTER)
Class(Player1,PALADIN)
Class(Player1,FIGHTER_MAGE)
Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF)
Class(Player1,FIGHTER_MAGE_THIEF)
Class(Player1,RANGER)
Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)
Class(Player1,CLERIC_RANGER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6102")
~ EXIT
  IF ~OR(3)
Class(Player1,MAGE)
Class(Player1,MAGE_THIEF)
Class(Player1,SORCERER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6202")
~ EXIT
  IF ~OR(2)
Class(Player1,THIEF)
Class(Player1,BARD)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6302")
~ EXIT
END

IF ~~ THEN BEGIN 84
  SAY @114 
  IF ~OR(4)
Class(Player1,CLERIC)
Class(Player1,DRUID)
Class(Player1,CLERIC_MAGE)
Class(Player1,CLERIC_THIEF)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6012")
~ EXIT
  IF ~OR(10)
Class(Player1,FIGHTER)
Class(Player1,PALADIN)
Class(Player1,FIGHTER_MAGE)
Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF)
Class(Player1,FIGHTER_MAGE_THIEF)
Class(Player1,RANGER)
Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)
Class(Player1,CLERIC_RANGER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6112")
~ EXIT
  IF ~OR(3)
Class(Player1,MAGE)
Class(Player1,MAGE_THIEF)
Class(Player1,SORCERER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6212")
~ EXIT
  IF ~OR(2)
Class(Player1,THIEF)
Class(Player1,BARD)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6312")
~ EXIT
END

IF ~~ THEN BEGIN 85
  SAY @114 
  IF ~OR(4)
Class(Player1,CLERIC)
Class(Player1,DRUID)
Class(Player1,CLERIC_MAGE)
Class(Player1,CLERIC_THIEF)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6003")
~ EXIT
  IF ~OR(10)
Class(Player1,FIGHTER)
Class(Player1,PALADIN)
Class(Player1,FIGHTER_MAGE)
Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF)
Class(Player1,FIGHTER_MAGE_THIEF)
Class(Player1,RANGER)
Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)
Class(Player1,CLERIC_RANGER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6103")
~ EXIT
  IF ~OR(2)
Class(Player1,THIEF)
Class(Player1,BARD)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6303")
~ EXIT
END

IF ~~ THEN BEGIN 86
  SAY @114 
  IF ~OR(4)
Class(Player1,CLERIC)
Class(Player1,DRUID)
Class(Player1,CLERIC_MAGE)
Class(Player1,CLERIC_THIEF)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6013")
~ EXIT
  IF ~OR(10)
Class(Player1,FIGHTER)
Class(Player1,PALADIN)
Class(Player1,FIGHTER_MAGE)
Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF)
Class(Player1,FIGHTER_MAGE_THIEF)
Class(Player1,RANGER)
Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)
Class(Player1,CLERIC_RANGER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6113")
~ EXIT
  IF ~OR(2)
Class(Player1,THIEF)
Class(Player1,BARD)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6313")
~ EXIT
END

IF ~~ THEN BEGIN 87
  SAY @114 
  IF ~OR(4)
Class(Player1,CLERIC)
Class(Player1,DRUID)
Class(Player1,CLERIC_MAGE)
Class(Player1,CLERIC_THIEF)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6004")
~ EXIT
  IF ~OR(10)
Class(Player1,FIGHTER)
Class(Player1,PALADIN)
Class(Player1,FIGHTER_MAGE)
Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF)
Class(Player1,FIGHTER_MAGE_THIEF)
Class(Player1,RANGER)
Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)
Class(Player1,CLERIC_RANGER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6104")
~ EXIT
  IF ~OR(3)
Class(Player1,MAGE)
Class(Player1,MAGE_THIEF)
Class(Player1,SORCERER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6204")
~ EXIT
  IF ~OR(2)
Class(Player1,THIEF)
Class(Player1,BARD)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6304")
~ EXIT
END

IF ~~ THEN BEGIN 88
  SAY @114 
  IF ~OR(4)
Class(Player1,CLERIC)
Class(Player1,DRUID)
Class(Player1,CLERIC_MAGE)
Class(Player1,CLERIC_THIEF)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6014")
~ EXIT
  IF ~OR(10)
Class(Player1,FIGHTER)
Class(Player1,PALADIN)
Class(Player1,FIGHTER_MAGE)
Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF)
Class(Player1,FIGHTER_MAGE_THIEF)
Class(Player1,RANGER)
Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)
Class(Player1,CLERIC_RANGER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6114")
~ EXIT
  IF ~OR(3)
Class(Player1,MAGE)
Class(Player1,MAGE_THIEF)
Class(Player1,SORCERER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6214")
~ EXIT
  IF ~OR(2)
Class(Player1,THIEF)
Class(Player1,BARD)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6314")
~ EXIT
END

IF ~~ THEN BEGIN 89
  SAY @114 
  IF ~OR(4)
Class(Player1,CLERIC)
Class(Player1,DRUID)
Class(Player1,CLERIC_MAGE)
Class(Player1,CLERIC_THIEF)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6005")
~ EXIT
  IF ~OR(10)
Class(Player1,FIGHTER)
Class(Player1,PALADIN)
Class(Player1,FIGHTER_MAGE)
Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF)
Class(Player1,FIGHTER_MAGE_THIEF)
Class(Player1,RANGER)
Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)
Class(Player1,CLERIC_RANGER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6105")
~ EXIT
  IF ~OR(3)
Class(Player1,MAGE)
Class(Player1,MAGE_THIEF)
Class(Player1,SORCERER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6205")
~ EXIT
  IF ~OR(2)
Class(Player1,THIEF)
Class(Player1,BARD)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6305")
~ EXIT
END

IF ~~ THEN BEGIN 90
  SAY @114 
  IF ~OR(4)
Class(Player1,CLERIC)
Class(Player1,DRUID)
Class(Player1,CLERIC_MAGE)
Class(Player1,CLERIC_THIEF)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6015")
~ EXIT
  IF ~OR(10)
Class(Player1,FIGHTER)
Class(Player1,PALADIN)
Class(Player1,FIGHTER_MAGE)
Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF)
Class(Player1,FIGHTER_MAGE_THIEF)
Class(Player1,RANGER)
Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)
Class(Player1,CLERIC_RANGER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6115")
~ EXIT
  IF ~OR(3)
Class(Player1,MAGE)
Class(Player1,MAGE_THIEF)
Class(Player1,SORCERER)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6215")
~ EXIT
  IF ~OR(2)
Class(Player1,THIEF)
Class(Player1,BARD)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB__6315")
~ EXIT
END
