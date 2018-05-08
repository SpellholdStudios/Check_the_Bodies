EXTEND_BOTTOM CECHALLE 2
  IF ~Global("CbDruidTeachingSeeds","GLOBAL",1)
PartyHasItem("CB587SED")~ THEN REPLY @13 GOTO CB_17
END

EXTEND_TOP CECHALLE 5 #0
  IF ~Global("CbDruidTeachingSeeds","GLOBAL",1)
PartyHasItem("CB587SED")~ THEN REPLY @18 DO ~SetGlobal("MasterTalked","AR1901",1)
GiveItemCreate("STAF13",LastTalkedToBy,0,25,25)
EraseJournalEntry(54895)
EraseJournalEntry(54924)
EraseJournalEntry(54925)
EraseJournalEntry(54926)
EraseJournalEntry(54927)
EraseJournalEntry(54928)
EraseJournalEntry(54929)
EraseJournalEntry(54930)
EraseJournalEntry(54946)
EraseJournalEntry(54947)
EraseJournalEntry(54948)
EraseJournalEntry(54949)
EraseJournalEntry(54951)
EraseJournalEntry(54950)
EraseJournalEntry(54952)
EraseJournalEntry(55128)
EraseJournalEntry(55203)
EraseJournalEntry(55232)
EraseJournalEntry(55265)
EraseJournalEntry(55291)
EraseJournalEntry(55497)
EraseJournalEntry(55499)
EraseJournalEntry(55503)
EraseJournalEntry(55504)
EraseJournalEntry(55505)
EraseJournalEntry(49258)
EraseJournalEntry(55506)
EraseJournalEntry(55507)
EraseJournalEntry(55508)
~ SOLVED_JOURNAL @17 GOTO CB_17
END

EXTEND_TOP CECHALLE 6 #0
  IF ~Global("CbDruidTeachingSeeds","GLOBAL",1)
PartyHasItem("CB587SED")~ THEN REPLY @18 DO ~SetGlobal("MasterTalked","AR1901",1)
EraseJournalEntry(54895)
EraseJournalEntry(54924)
EraseJournalEntry(54925)
EraseJournalEntry(54926)
EraseJournalEntry(54927)
EraseJournalEntry(54928)
EraseJournalEntry(54929)
EraseJournalEntry(54930)
EraseJournalEntry(54946)
EraseJournalEntry(54947)
EraseJournalEntry(54948)
EraseJournalEntry(54949)
EraseJournalEntry(54951)
EraseJournalEntry(54950)
EraseJournalEntry(54952)
EraseJournalEntry(55128)
EraseJournalEntry(55203)
EraseJournalEntry(55232)
EraseJournalEntry(55265)
EraseJournalEntry(55291)
EraseJournalEntry(55497)
EraseJournalEntry(55499)
EraseJournalEntry(55503)
EraseJournalEntry(55504)
EraseJournalEntry(55505)
EraseJournalEntry(49258)
EraseJournalEntry(55506)
EraseJournalEntry(55507)
EraseJournalEntry(55508)
~ SOLVED_JOURNAL @20 GOTO CB_17
END

EXTEND_TOP CECHALLE 10 #0
  IF ~Global("CbDruidTeachingSeeds","GLOBAL",1)
PartyHasItem("CB587SED")~ THEN REPLY @18 DO ~SetGlobal("PlayerHasStronghold","GLOBAL",1)
SetGlobal("DruidStronghold","GLOBAL",1)
EraseJournalEntry(54895)
EraseJournalEntry(54924)
EraseJournalEntry(54925)
EraseJournalEntry(54926)
EraseJournalEntry(54927)
EraseJournalEntry(54928)
EraseJournalEntry(54929)
EraseJournalEntry(54930)
EraseJournalEntry(54946)
EraseJournalEntry(54947)
EraseJournalEntry(54948)
EraseJournalEntry(54949)
EraseJournalEntry(54951)
EraseJournalEntry(54950)
EraseJournalEntry(54952)
EraseJournalEntry(55128)
EraseJournalEntry(55203)
EraseJournalEntry(55232)
EraseJournalEntry(55265)
EraseJournalEntry(55291)
EraseJournalEntry(55497)
EraseJournalEntry(55499)
EraseJournalEntry(55503)
EraseJournalEntry(55504)
EraseJournalEntry(55505)
EraseJournalEntry(49258)
EraseJournalEntry(55506)
EraseJournalEntry(55507)
EraseJournalEntry(55508)
~ SOLVED_JOURNAL @25 GOTO CB_17
END


APPEND CECHALLE
IF ~~ THEN BEGIN CB_17
  SAY @32
  IF ~~ THEN REPLY @33 GOTO CB_18
END
END

APPEND CECHALLE
IF ~~ THEN BEGIN CB_18
  SAY @34
  IF ~~ THEN DO ~SetGlobal("CbDruidTeachingSeeds","GLOBAL",2)
AddExperienceParty(10000)
TakePartyItem("CB587SED")
DestroyItem("CB587SED")~ EXIT
END
END
