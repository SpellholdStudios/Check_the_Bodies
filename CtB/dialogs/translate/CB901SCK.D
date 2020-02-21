BEGIN ~CB901SCK~

IF ~Global("CbHelpHolly","AR0901",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @12
  IF ~~ THEN DO ~ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @13
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @14
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @15
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @16
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @17
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @20 GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY @21
  IF ~~ THEN DO ~SetGlobal("CbInformedAboutRoots","GLOBAL",1)
SetGlobal("CbHelpHolly","AR0901",1)
AddJournalEntry(@39,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @22
  IF ~~ THEN DO ~SetGlobal("CbInformedAboutRoots","GLOBAL",1)
SetGlobal("CbHelpHolly","AR0901",1)
AddJournalEntry(@39,QUEST)~ EXIT
END

IF ~Global("CbHelpHolly","AR0901",1)~ THEN BEGIN 15
  SAY @23
  IF ~Global("CbPartyHasMedicineForHolly","LOCALS",0)~ THEN REPLY @24 GOTO 16
  IF ~Global("CbPartyHasMedicineForHolly","LOCALS",1)~ THEN REPLY @25 GOTO 16
  IF ~Global("CbPartyHasMedicineForHolly","LOCALS",2)~ THEN REPLY @26 GOTO 16
  IF ~Global("CbPartyHasMedicineForHolly","LOCALS",3)~ THEN REPLY @27 GOTO 16
  IF ~Global("CbPartyHasMedicineForHolly","LOCALS",4)~ THEN REPLY @28 GOTO 16
  IF ~Global("CbPartyHasMedicineForHolly","LOCALS",5)~ THEN REPLY @29 GOTO 17
END

IF ~~ THEN BEGIN 16
  SAY @30
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY @31
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @32
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @33
  IF ~~ THEN DO ~TakePartyItemAll("CB901ELD")
TakePartyItemAll("CB901CMS")
TakePartyItemAll("CB901WRM")
TakePartyItemAll("CB901PCH")
TakePartyItemAll("CB901CHG")~ GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @34
  IF ~~ THEN DO ~SetGlobal("CbHelpHolly","AR0901",2)
SetGlobalTimer("CbHollyGetsWell","AR0901",ONE_DAY)~ EXIT
END

IF ~Global("CbHelpHolly","AR0901",3)~ THEN BEGIN 21
  SAY @35
  IF ~Global("CbHollyThanksParty","LOCALS",0)~ THEN GOTO 22
  IF ~Global("CbHollyThanksParty","LOCALS",1)~ THEN GOTO 24
END

IF ~~ THEN BEGIN 22
  SAY @36
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @37
  IF ~~ THEN DO ~SetGlobal("CbHollyThanksParty","LOCALS",1)
GiveItemCreate("CBHOLLY1",LastTalkedToBy(Myself),1,1,0)
GiveItemCreate("CBHOLLY2",LastTalkedToBy(Myself),1,0,0)
AddExperienceParty(10000)
ReputationInc(1)
EraseJournalEntry(@39)
AddJournalEntry(@40,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 24
  SAY @38
  IF ~~ THEN EXIT
END
