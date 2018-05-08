BEGIN ~CBSHDWKY~

IF ~Global("CbParisaHelpsNPCs","AR0300",1)
Global("CbSpawnParisa","GLOBAL",2)
Global("CbShadowThievesCapturePC","GLOBAL",6)
Global("CbBodhiJob","GLOBAL",6)
Global("CbWorkingForBodhi","GLOBAL",6)
Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~Global("CbParisaHelpsNPCs","AR0300",1)
Global("CbSpawnParisa","GLOBAL",2)
Global("CbShadowThievesCapturePC","GLOBAL",6)
Global("CbBodhiJob","GLOBAL",6)
Global("CbWorkingForBodhi","GLOBAL",6)
!Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~CheckStatGT(LastTalkedToBy(Myself),11,WIS)~ THEN REPLY @5 GOTO 6
  IF ~CheckStatGT(LastTalkedToBy(Myself),11,WIS)~ THEN REPLY @6 GOTO 13
  IF ~CheckStatGT(LastTalkedToBy(Myself),11,WIS)~ THEN REPLY @7 GOTO 14
  IF ~CheckStatLT(LastTalkedToBy(Myself),12,WIS)~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @9
  IF ~CheckStatLT(LastTalkedToBy(Myself),7,WIS)~ THEN REPLY @10 GOTO 5
  IF ~CheckStatGT(LastTalkedToBy(Myself),6,WIS)~ THEN REPLY @11 GOTO 14
END

IF ~~ THEN BEGIN 5
  SAY @12
  IF ~~ THEN DO ~GiveItem("CBSHDWKY",LastTalkedToBy(Myself))
SetGlobal("CbShadowThievesCapturePC","GLOBAL",7)
SetGlobal("CbBodhiJob","GLOBAL",7)
SetGlobal("CbWorkingForBodhi","GLOBAL",7)
SetGlobal("CbParisaHelpsNPCs","AR0300",2)
SetGlobal("CbSpawnParisa","GLOBAL",3)
ActionOverride("VVMALE1",ReallyForceSpellDead("VVMALE1",VAMPIRE_BAT_FORM_CHANGE))
ActionOverride("VVMALE1",EscapeArea())
ActionOverride("VVMALE2",ReallyForceSpellDead("VVMALE2",VAMPIRE_BAT_FORM_CHANGE))
ActionOverride("VVMALE2",EscapeArea())
ActionOverride("VVMALE3",ReallyForceSpellDead("VVMALE3",VAMPIRE_BAT_FORM_CHANGE))
ActionOverride("VVMALE3",EscapeArea())
AddJournalEntry(@23,QUEST)
Wait(2)
ReallyForceSpellDead(Myself,VAMPIRE_BAT_FORM_CHANGE)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @14
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @15
  IF ~~ THEN DO ~GiveItem("CBSHDWKY",LastTalkedToBy(Myself))~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @16
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @17
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @18
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @19
  IF ~~ THEN DO ~SetGlobal("CbShadowThievesCapturePC","GLOBAL",7)
SetGlobal("CbBodhiJob","GLOBAL",7)
SetGlobal("CbWorkingForBodhi","GLOBAL",7)
SetGlobal("CbParisaHelpsNPCs","AR0300",2)
SetGlobal("CbSpawnParisa","GLOBAL",3)
ActionOverride("VVMALE1",ReallyForceSpellDead("VVMALE1",VAMPIRE_BAT_FORM_CHANGE))
ActionOverride("VVMALE1",EscapeArea())
ActionOverride("VVMALE2",ReallyForceSpellDead("VVMALE2",VAMPIRE_BAT_FORM_CHANGE))
ActionOverride("VVMALE2",EscapeArea())
ActionOverride("VVMALE3",ReallyForceSpellDead("VVMALE3",VAMPIRE_BAT_FORM_CHANGE))
ActionOverride("VVMALE3",EscapeArea())
AddJournalEntry(@23,QUEST)
Wait(2)
ReallyForceSpellDead(Myself,VAMPIRE_BAT_FORM_CHANGE)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @20
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 14
  SAY @21
  IF ~~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 13
  IF ~~ THEN REPLY @22 GOTO 4
END
