BEGIN ~RYNN~

IF ~//GlobalLT("SPRITE_IS_DEADYUANTI","GLOBAL",10)
Global("CbRynnsIntroNoSides","LOCALS",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("CbRynnsIntroNoSides","LOCALS",1)~ GOTO 1
  IF ~Global("CbYuantiesReset","GLOBAL",0)~ THEN DO ~
SetGlobal("CbYuantiesReset","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADYUANTI","GLOBAL",0)                  //resetting possible NeJ2 conflict
SetGlobal("CbRynnsIntroNoSides","LOCALS",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~IsValidForPartyDialog("JAHEIRA")~ THEN EXTERN ~JAHEIRAJ~ CB_APPEND_JH1a
  IF ~!IsValidForPartyDialog("JAHEIRA")
IsValidForPartyDialog("MINSC")~ THEN EXTERN ~MINSCJ~ CB_APPEND_MC1a
  IF ~!IsValidForPartyDialog("JAHEIRA")
!IsValidForPartyDialog("MINSC")
IsValidForPartyDialog("VALYGAR")~ THEN EXTERN ~VALYGARJ~ CB_APPEND_VAL1a
  IF ~!IsValidForPartyDialog("JAHEIRA")
!IsValidForPartyDialog("MINSC")
!IsValidForPartyDialog("VALYGAR")~ THEN EXIT
END

IF ~GlobalLT("SPRITE_IS_DEADYUANTI","GLOBAL",10)
Global("CbRynnsIntroNoSides","LOCALS",1)
RandomNum(2,1)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~GlobalLT("SPRITE_IS_DEADYUANTI","GLOBAL",10)
Global("CbRynnsIntroNoSides","LOCALS",1)
RandomNum(2,2)~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXIT
END

IF ~GlobalGT("SPRITE_IS_DEADYUANTI","GLOBAL",9)
Global("CbRynnsQuest","GLOBAL",0)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @12
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @11
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 10
  SAY @13
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @14
  IF ~IsValidForPartyDialog("KELDORN")~ THEN DO ~SetGlobal("CbRynnsQuest","GLOBAL",1)
AddJournalEntry(@29,QUEST)~ EXTERN ~KELDORJ~ CB_APPEND_KELa
  IF ~!IsValidForPartyDialog("KELDORN")
IsValidForPartyDialog("VICONIA")~ THEN DO ~SetGlobal("CbRynnsQuest","GLOBAL",1)
AddJournalEntry(@29,QUEST)~ EXTERN ~VICONIJ~ CB_APPEND_VICa
  IF ~!IsValidForPartyDialog("KELDORN")
!IsValidForPartyDialog("VICONIA")
IsValidForPartyDialog("MAZZY")~ THEN DO ~SetGlobal("CbRynnsQuest","GLOBAL",1)
AddJournalEntry(@29,QUEST)~  EXTERN ~MAZZYJ~ CB_APPEND_MAZa
  IF ~!IsValidForPartyDialog("KELDORN")
!IsValidForPartyDialog("VICONIA")
!IsValidForPartyDialog("MAZZY")~ THEN DO ~SetGlobal("CbRynnsQuest","GLOBAL",1)
AddJournalEntry(@29,QUEST)~  EXIT
END

IF ~Global("CbRynnsQuest","GLOBAL",1)
!PartyHasItem("CBRYCHST")~ THEN BEGIN 12
  SAY @15
  IF ~~ THEN EXIT
END

IF ~Global("CbRynnsQuest","GLOBAL",1)
PartyHasItem("CBRYCHST")~ THEN BEGIN 13
  SAY @16
  IF ~~ THEN DO ~TakePartyItem("CBRYCHST")
DestroyItem("CBRYCHST")
AddExperienceParty(4000)
EraseJournalEntry(@29)
SetGlobal("CbRynnsQuest","GLOBAL",2)~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @17
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @18
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @19
  IF ~IsValidForPartyDialog("AERIE")~ THEN DO ~SetGlobal("CbRynnsQuest","GLOBAL",3)
AddJournalEntry(@26,QUEST)~ EXTERN ~AERIEJ~ CB_APPEND_AER016
  IF ~!IsValidForPartyDialog("AERIE")
IsValidForPartyDialog("ANOMEN")~ THEN DO ~SetGlobal("CbRynnsQuest","GLOBAL",3)
AddJournalEntry(@26,QUEST)~ EXTERN ~ANOMENJ~ CB_APPEND_ANO016
  IF ~!IsValidForPartyDialog("AERIE")
!IsValidForPartyDialog("ANOMEN")
IsValidForPartyDialog("EDWIN")~ THEN DO ~SetGlobal("CbRynnsQuest","GLOBAL",3)
AddJournalEntry(@26,QUEST)~ EXTERN ~EDWINJ~ CB_APPEND_EDW016
  IF ~!IsValidForPartyDialog("AERIE")
!IsValidForPartyDialog("ANOMEN")
!IsValidForPartyDialog("EDWIN")
IsValidForPartyDialog("NALIA")~ THEN DO ~SetGlobal("CbRynnsQuest","GLOBAL",3)
AddJournalEntry(@26,QUEST)~ EXTERN ~NALIAJ~ CB_APPEND_NAL016
  IF ~!IsValidForPartyDialog("AERIE")
!IsValidForPartyDialog("ANOMEN")
!IsValidForPartyDialog("EDWIN")
!IsValidForPartyDialog("NALIA")
IsValidForPartyDialog("JAHEIRA")~ THEN DO ~SetGlobal("CbRynnsQuest","GLOBAL",3)
AddJournalEntry(@26,QUEST)~ EXTERN ~JAHEIRAJ~ CB_APPEND_JAH016
  IF ~!IsValidForPartyDialog("AERIE")
!IsValidForPartyDialog("ANOMEN")
!IsValidForPartyDialog("EDWIN")
!IsValidForPartyDialog("NALIA")
!IsValidForPartyDialog("JAHEIRA")~ THEN DO ~SetGlobal("CbRynnsQuest","GLOBAL",3)
AddJournalEntry(@26,QUEST)~ EXIT
END

IF ~Global("CbRynnsQuest","GLOBAL",3)~ THEN BEGIN 17
  SAY @20
  IF ~~ THEN EXIT
END

IF ~Global("CbRynnsQuest","GLOBAL",4)~ THEN BEGIN 18
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @23
  IF ~~ THEN DO ~SetGlobal("CbRynnsQuest","GLOBAL",5)
AddExperienceParty(8000)
JoinParty()
ChangeAIScript("RYNNNPC",CLASS)
ChangeAIScript("",OVERRIDE)
ChangeAIScript("",DEFAULT)
ChangeAIScript("",GENERAL)
ChangeAIScript("",RACE)
SetDialog("RYNN")~ EXIT
END

IF ~Global("CbRynnsQuest","GLOBAL",6)
Global("CbTimeToGo","LOCALS",0)~ THEN BEGIN 20
  SAY @24
  IF ~~ THEN DO ~SetGlobal("CbRynnsQuest","GLOBAL",7)
EraseJournalEntry(@30)
AddJournalEntry(@27,QUEST)~ EXIT
END

IF ~Global("CbRynnsQuest","GLOBAL",7)~ THEN BEGIN 21
  SAY @25
  IF ~IsValidForPartyDialog("KELDORN")~ THEN DO ~SetGlobal("CbRynnsQuest","GLOBAL",8)
SetGlobal("CbHlondethCivilWar","GLOBAL",1)
AddExperienceParty(16000)
ReputationInc(1)
EraseJournalEntry(@28)
EraseJournalEntry(@27)
AddJournalEntry(@31,QUEST_DONE)
/*GiveItemCreate("CBRYNN",Myself,1,0,0)*/~ EXTERN ~KELDORJ~ CB_APPEND_KEL021
  IF ~!IsValidForPartyDialog("KELDORN")
IsValidForPartyDialog("MINSC")~ THEN DO ~SetGlobal("CbRynnsQuest","GLOBAL",8)
SetGlobal("CbHlondethCivilWar","GLOBAL",1)
AddExperienceParty(16000)
ReputationInc(1)
EraseJournalEntry(@28)
EraseJournalEntry(@27)
AddJournalEntry(@31,QUEST_DONE)
/*GiveItemCreate("CBRYNN",Myself,1,0,0)*/~ EXTERN ~MINSCJ~ CB_APPEND_MIN021
  IF ~!IsValidForPartyDialog("KELDORN")
!IsValidForPartyDialog("MINSC")
IsValidForPartyDialog("JAHEIRA")~ THEN DO ~SetGlobal("CbRynnsQuest","GLOBAL",8)
SetGlobal("CbHlondethCivilWar","GLOBAL",1)
AddExperienceParty(16000)
ReputationInc(1)
EraseJournalEntry(@28)
EraseJournalEntry(@27)
AddJournalEntry(@31,QUEST_DONE)
/*GiveItemCreate("CBRYNN",Myself,1,0,0)*/~ EXTERN ~JAHEIRAJ~ CB_APPEND_JAH021
  IF ~!IsValidForPartyDialog("KELDORN")
!IsValidForPartyDialog("MINSC")
!IsValidForPartyDialog("JAHEIRA")~ THEN DO ~SetGlobal("CbRynnsQuest","GLOBAL",8)
SetGlobal("CbHlondethCivilWar","GLOBAL",1)
AddExperienceParty(16000)
ReputationInc(1)
EraseJournalEntry(@28)
EraseJournalEntry(@27)
AddJournalEntry(@31,QUEST_DONE)
/*GiveItemCreate("CBRYNN",Myself,1,0,0)*/~ GOTO 29
END

IF ~~ THEN BEGIN 22
  SAY @47
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23
  SAY @48
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24
  SAY @49
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25
  SAY @50
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26
  SAY @50
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27
  SAY @51
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28
  SAY @52
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 29
  SAY @61
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

APPEND JAHEIRAJ
IF ~~ THEN BEGIN CB_APPEND_JH1a
SAY @32
  IF ~IsValidForPartyDialog("MINSC")~ THEN EXTERN ~MINSCJ~ CB_APPEND_MC1a
  IF ~!IsValidForPartyDialog("MINSC")
IsValidForPartyDialog("VALYGAR")~ THEN EXTERN ~VALYGARJ~ CB_APPEND_VAL1a
  IF ~!IsValidForPartyDialog("MINSC")
!IsValidForPartyDialog("VALYGAR")~ THEN EXIT
END
END

APPEND MINSCJ
IF ~~ THEN BEGIN CB_APPEND_MC1a
SAY @33
  IF ~IsValidForPartyDialog("KORGAN")~ THEN GOTO CB_APPEND_MC2a
  IF ~!IsValidForPartyDialog("KORGAN")~ THEN GOTO CB_APPEND_MC3a
END

IF ~~ THEN BEGIN CB_APPEND_MC2a
SAY @34
  IF ~IsValidForPartyDialog("KORGAN")~ THEN EXTERN ~KORGANJ~
CB_APPEND_KOR1a
END

IF ~~ THEN BEGIN CB_APPEND_MC3a
SAY @35
  IF ~!IsValidForPartyDialog("KORGAN")
IsValidForPartyDialog("VALYGAR")~ THEN EXTERN ~VALYGARJ~ CB_APPEND_VAL1a
  IF ~!IsValidForPartyDialog("KORGAN")
!IsValidForPartyDialog("VALYGAR")~ THEN EXIT
END
END

APPEND KORGANJ
IF ~~ THEN BEGIN CB_APPEND_KOR1a
  SAY @36
  IF ~~ THEN GOTO CB_APPEND_KOR2a
END

IF ~~ THEN BEGIN CB_APPEND_KOR2a
  SAY @37
  IF ~IsValidForPartyDialog("VALYGAR")~ THEN EXTERN ~VALYGARJ~ CB_APPEND_VAL1a
  IF ~!IsValidForPartyDialog("VALYGAR")~ THEN EXIT
END
END

APPEND VALYGARJ
IF ~~ THEN BEGIN CB_APPEND_VAL1a
  SAY @38
  IF ~~ THEN GOTO CB_APPEND_VAL2a
END

IF ~~ THEN BEGIN CB_APPEND_VAL2a
  SAY @39
  IF ~~ THEN EXIT
END
END

APPEND KELDORJ
IF ~~ THEN BEGIN CB_APPEND_KELa
 SAY @40
  IF ~IsValidForPartyDialog("VICONIA")~ EXTERN ~VICONIJ~ CB_APPEND_VICb
  IF ~!IsValidForPartyDialog("VICONIA")
IsValidForPartyDialog("MAZZY")~ THEN EXTERN ~MAZZYJ~ CB_APPEND_MAZc
  IF ~!IsValidForPartyDialog("VICONIA")
!IsValidForPartyDialog("MAZZY")~ THEN EXTERN ~RYNN~ 22
END
END

APPEND VICONIJ
IF ~~ THEN BEGIN CB_APPEND_VICa
 SAY @44
 IF ~IsValidForPartyDialog("MAZZY")~ THEN EXTERN ~MAZZYJ~ CB_APPEND_MAZd
 IF ~!IsValidForPartyDialog("MAZZY")~ THEN EXTERN ~RYNN~ 23
END

IF ~~ THEN BEGIN CB_APPEND_VICb
 SAY @41
 IF ~IsValidForPartyDialog("MAZZY")~ THEN EXTERN ~MAZZYJ~ CB_APPEND_MAZb
 IF ~!IsValidForPartyDialog("MAZZY")~ THEN EXTERN ~RYNN~ 24
END
END

APPEND MAZZYJ
IF ~~ THEN BEGIN CB_APPEND_MAZa
 SAY @46
 IF ~~ THEN EXTERN ~RYNN~ 25
END

IF ~~ THEN BEGIN CB_APPEND_MAZb
 SAY @42
 IF ~~ THEN EXTERN ~RYNN~ 26
END

IF ~~ THEN BEGIN CB_APPEND_MAZc
 SAY @43
 IF ~~ THEN EXTERN ~RYNN~ 27
END

IF ~~ THEN BEGIN CB_APPEND_MAZd
 SAY @45
 IF ~~ THEN EXTERN ~RYNN~ 28
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN CB_APPEND_AER016
 SAY @53
 IF ~IsValidForPartyDialog("ANOMEN")~ THEN EXTERN ~ANOMENJ~ CB_APPEND_ANO016
 IF ~!IsValidForPartyDialog("ANOMEN")
IsValidForPartyDialog("EDWIN")~ THEN EXTERN ~EDWINJ~ CB_APPEND_EDW016
 IF ~!IsValidForPartyDialog("ANOMEN")
!IsValidForPartyDialog("EDWIN")
IsValidForPartyDialog("NALIA")~ THEN EXTERN ~NALIAJ~ CB_APPEND_NAL016
 IF ~!IsValidForPartyDialog("ANOMEN")
!IsValidForPartyDialog("EDWIN")
!IsValidForPartyDialog("NALIA")
IsValidForPartyDialog("JAHEIRA")~ THEN EXTERN ~JAHEIRAJ~ CB_APPEND_JAH016
 IF ~!IsValidForPartyDialog("ANOMEN")
!IsValidForPartyDialog("EDWIN")
!IsValidForPartyDialog("NALIA")
!IsValidForPartyDialog("JAHEIRA")~ THEN EXIT
END
END

APPEND ANOMENJ
IF ~~ THEN BEGIN CB_APPEND_ANO016
 SAY @54
 IF ~IsValidForPartyDialog("EDWIN")~ THEN EXTERN ~EDWINJ~ CB_APPEND_EDW016
 IF ~!IsValidForPartyDialog("EDWIN")
IsValidForPartyDialog("NALIA")~ THEN EXTERN ~NALIAJ~ CB_APPEND_NAL016
 IF ~!IsValidForPartyDialog("EDWIN")
!IsValidForPartyDialog("NALIA")
IsValidForPartyDialog("JAHEIRA")~ THEN EXTERN ~JAHEIRAJ~ CB_APPEND_JAH016
 IF ~!IsValidForPartyDialog("EDWIN")
!IsValidForPartyDialog("NALIA")
!IsValidForPartyDialog("JAHEIRA")~ THEN EXIT
END
END

APPEND EDWINJ
IF ~~ THEN BEGIN CB_APPEND_EDW016
 SAY @55
 IF ~IsValidForPartyDialog("NALIA")~ THEN EXTERN ~NALIAJ~ CB_APPEND_NAL016
 IF ~!IsValidForPartyDialog("NALIA")
IsValidForPartyDialog("JAHEIRA")~ THEN EXTERN ~JAHEIRAJ~ CB_APPEND_JAH016
 IF ~!IsValidForPartyDialog("NALIA")
!IsValidForPartyDialog("JAHEIRA")~ THEN EXIT
END
END

APPEND NALIAJ
IF ~~ THEN BEGIN CB_APPEND_NAL016
 SAY @56
 IF ~IsValidForPartyDialog("JAHEIRA")~ THEN EXTERN ~JAHEIRAJ~ CB_APPEND_JAH016
 IF ~!IsValidForPartyDialog("JAHEIRA")~ THEN EXIT
END
END

APPEND JAHEIRAJ
IF ~~ THEN BEGIN CB_APPEND_JAH016
 SAY @57
 IF ~~ THEN EXIT
END
END

APPEND KELDORJ
IF ~~ THEN BEGIN CB_APPEND_KEL021
 SAY @58
 IF ~IsValidForPartyDialog("MINSC")~ THEN EXTERN ~MINSCJ~ CB_APPEND_MIN021
 IF ~!IsValidForPartyDialog("MINSC")
IsValidForPartyDialog("JAHEIRA")~ THEN EXTERN ~JAHEIRAJ~ CB_APPEND_JAH021
 IF ~!IsValidForPartyDialog("MINSC")
!IsValidForPartyDialog("JAHEIRA")~ THEN EXTERN ~RYNN~ 29
END
END

APPEND MINSCJ
IF ~~ THEN BEGIN CB_APPEND_MIN021
 SAY @59
 IF ~IsValidForPartyDialog("JAHEIRA")~ THEN EXTERN ~JAHEIRAJ~ CB_APPEND_JAH021
 IF ~!IsValidForPartyDialog("JAHEIRA")~ THEN EXTERN ~RYNN~ 29
END
END

APPEND JAHEIRAJ
IF ~~ THEN BEGIN CB_APPEND_JAH021
 SAY @60
 IF ~~ THEN EXTERN ~RYNN~ 29
END
END
