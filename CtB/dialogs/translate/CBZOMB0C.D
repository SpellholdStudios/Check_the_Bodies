BEGIN ~CBZOMB0C~

IF ~GlobalLT("CbHlondethRetreatStage","AR3675",10)
RandomNum(2,1)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXIT
END

IF ~GlobalLT("CbHlondethRetreatStage","AR3675",10)
RandomNum(2,2)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Global("CbHlondethRetreatStage","AR3675",10)
Global("CbOfficerThreeCreatesMOB","AR3675",1)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~SetGlobal("CbHlondethMustRetreat","AR3675",11)
SetGlobal("CbOfficerThreeCreatesMOB","AR3675",2)
ActionOverride("CBZOMB0B",DestroyItem("MINHP1"))~ EXIT
END

IF ~Global("CbUtterDestruction","AR3675",1)
Global("CbHlondethMustRetreat","AR3675",12)~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CbHlondethRetreatStage","AR3675",13)
DestroyItem("MINHP1")
EraseJournalEntry(@6)
AddJournalEntry(@7,QUEST_DONE)
ApplySpellRES("CBZOMB0C",Player1)
ApplySpellRES("CBZOMB0C",Player2)
ApplySpellRES("CBZOMB0C",Player3)
ApplySpellRES("CBZOMB0C",Player4)
ApplySpellRES("CBZOMB0C",Player5)
ApplySpellRES("CBZOMB0C",Player6)
ActionOverride(Player1,DisplayString(Player1,@9))
ActionOverride(Player2,DisplayString(Player2,@9))
ActionOverride(Player3,DisplayString(Player3,@9))
ActionOverride(Player4,DisplayString(Player4,@9))
ActionOverride(Player5,DisplayString(Player5,@9))
ActionOverride(Player6,DisplayString(Player6,@9))
EscapeArea()~ EXIT
END

IF ~Global("CbHlondethWins","AR3675",1)
Global("CbHlondethMustRetreat","AR3675",12)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN DO ~SetGlobal("CbCloseToHome","GLOBAL",4)
SetGlobal("CbHlondethRetreatStage","AR3675",13)
AddExperienceParty(158736)
EraseJournalEntry(@6)
AddJournalEntry(@8,QUEST_DONE)
EscapeArea()~ EXIT
END
