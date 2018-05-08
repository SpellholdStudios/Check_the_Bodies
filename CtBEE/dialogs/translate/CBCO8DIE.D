BEGIN ~CBCO8DIE~

IF ~Global("Cb_MannyDied","GLOBAL",1)
Global("CbCompanyAnnouncedManny","GLOBAL",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("CbCompanyAnnouncedManny","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @3 DO ~SetGlobal("CbCompanyAnnouncedManny","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @4 DO ~SetGlobal("CbCompanyAnnouncedManny","GLOBAL",1)~ GOTO 8
END

IF ~Global("Cb_ArkanusDied","GLOBAL",1)
Global("CbCompanyAnnouncedArkanus","GLOBAL",0)~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN REPLY @6 DO ~SetGlobal("CbCompanyAnnouncedArkanus","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @7 DO ~SetGlobal("CbCompanyAnnouncedArkanus","GLOBAL",1)~ GOTO 7
END

IF ~Global("Cb_MarilynDied","GLOBAL",1)
Global("CbCompanyAnnouncedMarilyn","GLOBAL",0)~ THEN BEGIN 2
  SAY @8
  IF ~~ THEN REPLY @9 DO ~SetGlobal("CbCompanyAnnouncedMarilyn","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @10 DO ~SetGlobal("CbCompanyAnnouncedMarilyn","GLOBAL",1)~ GOTO 7
END

IF ~Global("Cb_TardethDied","GLOBAL",1)
Global("CbCompanyAnnouncedTardeth","GLOBAL",0)~ THEN BEGIN 3
  SAY @11
  IF ~~ THEN REPLY @12 DO ~SetGlobal("CbCompanyAnnouncedTardeth","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY @13 DO ~SetGlobal("CbCompanyAnnouncedTardeth","GLOBAL",1)~ GOTO 7
END

IF ~Global("Cb_SylvanusDied","GLOBAL",1)
Global("CbCompanyAnnouncedSylvanus","GLOBAL",0)~ THEN BEGIN 4
  SAY @14
  IF ~~ THEN REPLY @13 DO ~SetGlobal("CbCompanyAnnouncedSylvanus","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @6 DO ~SetGlobal("CbCompanyAnnouncedSylvanus","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @15 DO ~SetGlobal("CbCompanyAnnouncedSylvanus","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @4 DO ~SetGlobal("CbCompanyAnnouncedSylvanus","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY @7 DO ~SetGlobal("CbCompanyAnnouncedSylvanus","GLOBAL",1)~ GOTO 7
END

IF ~Global("Cb_PaddyDied","GLOBAL",1)
Global("CbCompanyAnnouncedPaddy","GLOBAL",0)~ THEN BEGIN 5
  SAY @16
  IF ~~ THEN REPLY @17 DO ~SetGlobal("CbCompanyAnnouncedPaddy","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @18 DO ~SetGlobal("CbCompanyAnnouncedPaddy","GLOBAL",1)~ GOTO 7
END

IF ~Global("Cb_LawanthaDied","GLOBAL",1)
Global("CbCompanyAnnouncedLawantha","GLOBAL",0)~ THEN BEGIN 6
  SAY @19
  IF ~~ THEN REPLY @20 DO ~SetGlobal("CbCompanyAnnouncedLawantha","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @21 DO ~SetGlobal("CbCompanyAnnouncedLawantha","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @22 DO ~SetGlobal("CbCompanyAnnouncedLawantha","GLOBAL",1)~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @23
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @24
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @25
  IF ~~ THEN EXIT
END
