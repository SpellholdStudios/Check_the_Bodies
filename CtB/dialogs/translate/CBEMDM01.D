BEGIN ~CBEMDM01~

IF ~CheckStatLT(LastTalkedToBy(Myself),15,CHR)
Global("CbDemonChanging","LOCALS",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~CheckStatGT(LastTalkedToBy(Myself),14,CHR)
Global("CbDemonChanging","LOCALS",0)~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~GlobalGT("CbElvenSorceressDemon","GLOBAL",0)
!Dead("CBEM25T1")
!Dead("CBEM25T2")
!Dead("CBEM25T3")~ THEN REPLY @6 GOTO 4
  IF ~GlobalGT("CbElvenSorceressDemon","GLOBAL",0)
Dead("CBEM25T1")
Dead("CBEM25T2")
Dead("CBEM25T3")~ THEN REPLY @7 GOTO 5
  IF ~GlobalGT("CbMasterBardDemon","GLOBAL",0)
!Dead("CB510BRD")~ THEN REPLY @6 GOTO 8
  IF ~GlobalGT("CbMasterBardDemon","GLOBAL",0)
Dead("CB510BRD")~ THEN REPLY @7 GOTO 9
  IF ~GlobalGT("CbRangerDemon","GLOBAL",0)
!Dead("CB585RNG")~ THEN REPLY @6 GOTO 10
  IF ~GlobalGT("CbRangerDemon","GLOBAL",0)
Dead("CB585RNG")~ THEN REPLY @7 GOTO 11
  IF ~GlobalGT("CbDruidTeachingDemon","GLOBAL",0)
!Dead("CB587DR1")
!Dead("CB587DR2")
!Dead("CB587DR3")~ THEN REPLY @6 GOTO 12
  IF ~GlobalGT("CbDruidTeachingDemon","GLOBAL",0)
Dead("CB587DR1")
Dead("CB587DR2")
Dead("CB587DR3")~ THEN REPLY @7 GOTO 13
  IF ~GlobalGT("CbNorthmenTeachingDemon","GLOBAL",0)
!Dead("CBNRT020")
!Dead("CBNRT025")~ THEN REPLY @6 GOTO 14
  IF ~GlobalGT("CbNorthmenTeachingDemon","GLOBAL",0)
Dead("CBNRT020")
Dead("CBNRT025")~ THEN REPLY @7 GOTO 15
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @9
  IF ~~ THEN DO ~SetGlobal("CbDemonChanging","LOCALS",1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @12
  IF ~~ THEN DO ~SetGlobal("CbDemonChanging","LOCALS",1)
Enemy()~ EXIT
END

IF ~Global("CbDemonChanging","LOCALS",2)~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @14
  IF ~~ THEN DO ~SetGlobal("CbDemonChanging","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @16
  IF ~~ THEN DO ~SetGlobal("CbDemonChanging","LOCALS",1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @18
  IF ~~ THEN DO ~SetGlobal("CbDemonChanging","LOCALS",1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY @20
  IF ~~ THEN DO ~SetGlobal("CbDemonChanging","LOCALS",1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15
  SAY @22
  IF ~~ THEN DO ~SetGlobal("CbDemonChanging","LOCALS",1)
Enemy()~ EXIT
END
