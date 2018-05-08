BEGIN ~CBBODH66~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~SetGlobal("CbWorkingForBodhi","GLOBAL",9)
SetGlobal("CbShadowThievesCapturePC","GLOBAL",9)
SetGlobal("CbBodhiJob","GLOBAL",9)
SetGlobal("WorkingForBodhi","GLOBAL",1)
SetGlobal("BodhiJob","GLOBAL",1)
EraseJournalEntry(@4)
EraseJournalEntry(@5)
AddJournalEntry(@6,QUEST_DONE)
Wait(1)
ReallyForceSpellDead(Myself,VAMPIRE_BAT_FORM_CHANGE)
Wait(1)
EscapeArea()~ EXIT
END
