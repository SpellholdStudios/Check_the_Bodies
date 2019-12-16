BEGIN ~CBEM25T3~

IF ~GlobalLT("CbElvenSorceressDemon","GLOBAL",3)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("CbElvenSorceressDemon","GLOBAL",3)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~OR(2)
HaveSpellRES("SPCL918")
HaveSpellRES("SPWISH13")~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBEM25A1")~ EXIT
  IF ~!HaveSpellRES("SPCL918")
!HaveSpellRES("SPWISH13")~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBEM25A2")~ EXIT
END

IF ~Global("CbElvenSorceressDemon","GLOBAL",4)
Global("CbElvenSorceressTeach","AR2500",2)
Global("CbElvenSorceressAdvAlchemy","LOCALS",1)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN DO ~SetGlobal("CbElvenSorceressDemon","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),10000)
AddJournalEntry(@27,INFO)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBEM25E3")~ EXIT
END

IF ~Global("CbElvenSorceressDemon","GLOBAL",4)
Global("CbElvenSorceressTeach","AR2500",2)
Global("CbElvenSorceressAdvEnchant","LOCALS",1)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN DO ~SetGlobal("CbElvenSorceressDemon","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),10000)
AddJournalEntry(@28,INFO)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBEM25S2")~ EXIT
END

IF ~Global("CbElvenSorceressDemon","GLOBAL",4)
Global("CbElvenSorceressTeach","AR2500",2)
Global("CbElvenSorceressImprovedCasting","LOCALS",1)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 8
  SAY @12
  IF ~~ THEN DO ~SetGlobal("CbElvenSorceressDemon","GLOBAL",5)
AddXPObject(LastTalkedToBy(Myself),10000)
AddJournalEntry(@29,INFO)~ EXIT
END

IF ~Global("CbElvenSorceressDemon","GLOBAL",5)
Global("CbElvenSorceressWantsBlade","GLOBAL",0)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 9
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @15 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @17
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @20
  IF ~~ THEN DO ~SetGlobal("CbElvenSorceressWantsBlade","GLOBAL",1)
GiveItemCreate("CBEMHILT",LastTalkedToBy(Myself),1,0,0)
AddJournalEntry(@30,QUEST)~ EXIT
END

IF ~Global("CbElvenSorceressWantsBlade","GLOBAL",1)
OR(2)
	Class(LastTalkedToBy(Myself),SORCERER)
	Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 14
  SAY @21
  IF ~HasItem("CBEMMOON",LastTalkedToBy(Myself))~ THEN REPLY @22 GOTO 16
  IF ~!HasItem("CBEMMOON",LastTalkedToBy(Myself))~ THEN REPLY @23 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @24
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
  SAY @25
  IF ~IsGabber(Player1)~ THEN DO ~GiveItemCreate("CBMOONP1",LastTalkedToBy(Myself),1,0,0)
TakePartyItem("CBEMMOON")
SetGlobal("CbTempMoonBlade","GLOBAL",1)
SetGlobal("CbMoonBladePlayer1","GLOBAL",1)
SetGlobal("CbMoonBladePlayer2","GLOBAL",0)
SetGlobal("CbMoonBladePlayer3","GLOBAL",0)
SetGlobal("CbMoonBladePlayer4","GLOBAL",0)
SetGlobal("CbMoonBladePlayer5","GLOBAL",0)
SetGlobal("CbMoonBladePlayer6","GLOBAL",0)
DestroyItem("CBEMMOON")
SetGlobal("CbElvenSorceressWantsBlade","GLOBAL",2)
AddJournalEntry(@31,QUEST_DONE)
EraseJournalEntry(@30)~ EXIT
  IF ~IsGabber(Player2)~ THEN DO ~GiveItemCreate("CBMOONP2",LastTalkedToBy(Myself),1,0,0)
TakePartyItem("CBEMMOON")
SetGlobal("CbTempMoonBlade","GLOBAL",1)
SetGlobal("CbMoonBladePlayer1","GLOBAL",0)
SetGlobal("CbMoonBladePlayer2","GLOBAL",1)
SetGlobal("CbMoonBladePlayer3","GLOBAL",0)
SetGlobal("CbMoonBladePlayer4","GLOBAL",0)
SetGlobal("CbMoonBladePlayer5","GLOBAL",0)
SetGlobal("CbMoonBladePlayer6","GLOBAL",0)
SetGlobal("CbElvenSorceressWantsBlade","GLOBAL",2)
AddJournalEntry(@31,QUEST_DONE)
EraseJournalEntry(@30)~ EXIT
  IF ~IsGabber(Player3)~ THEN DO ~GiveItemCreate("CBMOONP3",LastTalkedToBy(Myself),1,0,0)
TakePartyItem("CBEMMOON")
SetGlobal("CbTempMoonBlade","GLOBAL",1)
SetGlobal("CbMoonBladePlayer1","GLOBAL",0)
SetGlobal("CbMoonBladePlayer2","GLOBAL",0)
SetGlobal("CbMoonBladePlayer3","GLOBAL",1)
SetGlobal("CbMoonBladePlayer4","GLOBAL",0)
SetGlobal("CbMoonBladePlayer5","GLOBAL",0)
SetGlobal("CbMoonBladePlayer6","GLOBAL",0)
SetGlobal("CbElvenSorceressWantsBlade","GLOBAL",2)
AddJournalEntry(@31,QUEST_DONE)
EraseJournalEntry(@30)~ EXIT
  IF ~IsGabber(Player4)~ THEN DO ~GiveItemCreate("CBMOONP4",LastTalkedToBy(Myself),1,0,0)
TakePartyItem("CBEMMOON")
SetGlobal("CbTempMoonBlade","GLOBAL",1)
SetGlobal("CbMoonBladePlayer1","GLOBAL",0)
SetGlobal("CbMoonBladePlayer2","GLOBAL",0)
SetGlobal("CbMoonBladePlayer3","GLOBAL",0)
SetGlobal("CbMoonBladePlayer4","GLOBAL",1)
SetGlobal("CbMoonBladePlayer5","GLOBAL",0)
SetGlobal("CbMoonBladePlayer6","GLOBAL",0)
SetGlobal("CbElvenSorceressWantsBlade","GLOBAL",2)
AddJournalEntry(@31,QUEST_DONE)
EraseJournalEntry(@30)~ EXIT
  IF ~IsGabber(Player5)~ THEN DO ~GiveItemCreate("CBMOONP5",LastTalkedToBy(Myself),1,0,0)
TakePartyItem("CBEMMOON")
SetGlobal("CbTempMoonBlade","GLOBAL",1)
SetGlobal("CbMoonBladePlayer1","GLOBAL",0)
SetGlobal("CbMoonBladePlayer2","GLOBAL",0)
SetGlobal("CbMoonBladePlayer3","GLOBAL",0)
SetGlobal("CbMoonBladePlayer4","GLOBAL",0)
SetGlobal("CbMoonBladePlayer5","GLOBAL",1)
SetGlobal("CbMoonBladePlayer6","GLOBAL",0)
SetGlobal("CbElvenSorceressWantsBlade","GLOBAL",2)
AddJournalEntry(@31,QUEST_DONE)
EraseJournalEntry(@30)~ EXIT
  IF ~IsGabber(Player6)~ THEN DO ~GiveItemCreate("CBMOONP6",LastTalkedToBy(Myself),1,0,0)
TakePartyItem("CBEMMOON")
SetGlobal("CbTempMoonBlade","GLOBAL",1)
SetGlobal("CbMoonBladePlayer1","GLOBAL",0)
SetGlobal("CbMoonBladePlayer2","GLOBAL",0)
SetGlobal("CbMoonBladePlayer3","GLOBAL",0)
SetGlobal("CbMoonBladePlayer4","GLOBAL",0)
SetGlobal("CbMoonBladePlayer5","GLOBAL",0)
SetGlobal("CbMoonBladePlayer6","GLOBAL",1)
SetGlobal("CbElvenSorceressWantsBlade","GLOBAL",2)
AddJournalEntry(@31,QUEST_DONE)
EraseJournalEntry(@30)~ EXIT
END

IF ~OR(2)
	!Class(LastTalkedToBy(Myself),SORCERER)
	!Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 17
  SAY @26
  IF ~~ THEN EXIT
END

IF ~OR(5)
GlobalGT("CbMasterBardWantsHarp","GLOBAL",0)
GlobalGT("CbRangerDeadDear","GLOBAL",0)
GlobalGT("CbDruidTeachingSeeds","GLOBAL",0)
GlobalGT("CbTumblingWizardWantsResearch","GLOBAL",0)
GlobalGT("CbNorthmenWantStaff","GLOBAL",0)~ THEN BEGIN 18
  SAY @26
  IF ~~ THEN EXIT
END
