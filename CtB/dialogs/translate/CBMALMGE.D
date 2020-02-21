BEGIN ~CBMALMGE~

IF ~!PartyHasItemIdentified("CBMALMGE")~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXIT
END

IF ~PartyHasItemIdentified("CBMALMGE")
Global("CbMalteseArtifact","GLOBAL",3)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~Global("CbRelatesToElvesAndArtifacts","GLOBAL",1)~ THEN DO ~SetGlobal("CbMalteseArtifact","GLOBAL",4)
AddJournalEntry(@7,QUEST)
EraseJournalEntry(@8)~ EXIT
  IF ~!Global("CbRelatesToElvesAndArtifacts","GLOBAL",1)~ THEN DO ~RevealAreaOnMap("AR2000")
SetGlobal("CbMalteseArtifact","GLOBAL",4)
AddJournalEntry(@7,QUEST)
EraseJournalEntry(@8)~ EXIT
END

IF ~PartyHasItemIdentified("CBMALMGE")
GlobalGT("CbMalteseArtifact","GLOBAL",3)~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN EXIT
END
