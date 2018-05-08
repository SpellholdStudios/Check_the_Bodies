BEGIN ~CBGONAST~

IF ~Global("CbRynnsQuest","GLOBAL",3)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~SetGlobal("CbRynnsQuest","GLOBAL",4)
EraseJournalEntry(@8)
AddJournalEntry(@7,QUEST)
EscapeArea()~ EXIT
END

IF ~Global("CbRynnsQuest","GLOBAL",5)
OR(4)
InParty("RYNNPC06")
InParty("RYNNPC11")
InParty("RYNNPC15")
InParty("RYNNPC19")~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @6
  IF ~InParty("RYNNPC06")~ THEN DO ~GiveItemCreate("CBHLGATE",LastTalkedToBy(Myself),1,0,0)
EraseJournalEntry(@9)
AddJournalEntry(@10,QUEST)
SetGlobal("CbRynnsQuest","GLOBAL",6)
ActionOverride("RYNNPC06",SetDialog("RYNN"))
ActionOverride("RYNNPC06",StartDialogNoSet(Player1))
EscapeArea()~ EXIT
  IF ~InParty("RYNNPC11")~ THEN DO ~GiveItemCreate("CBHLGATE",LastTalkedToBy(Myself),1,0,0)
EraseJournalEntry(@9)
AddJournalEntry(@10,QUEST)
SetGlobal("CbRynnsQuest","GLOBAL",6)
ActionOverride("RYNNPC11",SetDialog("RYNN"))
ActionOverride("RYNNPC11",StartDialogNoSet(Player1))
EscapeArea()~ EXIT
  IF ~InParty("RYNNPC15")~ THEN DO ~GiveItemCreate("CBHLGATE",LastTalkedToBy(Myself),1,0,0)
EraseJournalEntry(@9)
AddJournalEntry(@10,QUEST)
SetGlobal("CbRynnsQuest","GLOBAL",6)
ActionOverride("RYNNPC15",SetDialog("RYNN"))
ActionOverride("RYNNPC15",StartDialogNoSet(Player1))
EscapeArea()~ EXIT
  IF ~InParty("RYNNPC19")~ THEN DO ~GiveItemCreate("CBHLGATE",LastTalkedToBy(Myself),1,0,0)
EraseJournalEntry(@9)
AddJournalEntry(@10,QUEST)
SetGlobal("CbRynnsQuest","GLOBAL",6)
ActionOverride("RYNNPC19",SetDialog("RYNN"))
ActionOverride("RYNNPC19",StartDialogNoSet(Player1))
EscapeArea()~ EXIT
END
