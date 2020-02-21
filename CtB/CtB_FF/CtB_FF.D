EXTEND_BOTTOM CBGORCLD 15 37 52 59 74
IF ~~ THEN REPLY @0 GOTO FastFwd1
END

APPEND CBGorCld
IF ~~ THEN BEGIN FastFwd1
SAY @1
IF ~~ THEN REPLY @2GOTO FastFwd2
END

IF ~~ THEN BEGIN FastFwd2
SAY @3
  IF ~~ THEN REPLY @4DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPIN112"))
~ GOTO FastFwd3
  IF ~~ THEN REPLY @5DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPIN121"))
~ GOTO FastFwd3
END

IF ~~ THEN BEGIN FastFwd3
SAY @6
  IF ~~ THEN REPLY @7DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPCL907"))
~ GOTO FastFwd4
  IF ~~ THEN REPLY @8DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPCL922"))
~ GOTO FastFwd4
END

IF ~~ THEN BEGIN FastFwd4
SAY @9
  IF ~~ THEN REPLY @10DO ~AddXPObject(Player1,1000)
ForceSpellRES("CBTETTCH",Player1)
~ GOTO FastFwd5
  IF ~~ THEN REPLY @11DO ~AddXPObject(Player1,1000)
ForceSpellRES("CBPHYTCH",Player1)
~ GOTO FastFwd5
END

IF ~~ THEN BEGIN FastFwd5
SAY @12
  IF ~~ THEN REPLY @13DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPCL522"))
~ GOTO FastFwd6
  IF ~~ THEN REPLY @14DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPCL521"))
~ GOTO FastFwd6
END

IF ~~ THEN BEGIN FastFwd6
SAY @15
  IF ~~ THEN REPLY @16DO ~SetGlobal("CbPlayerBlessedByLathander","GLOBAL",1)
  AddXPObject(Player1,1000)
  ActionOverride(Player1,AddSpecialAbility("spcl741"))
~ GOTO FastFwd7
  IF ~~ THEN REPLY @17DO ~AddXPObject(Player1,1000)
~ GOTO FastFwd7
END

IF ~~ THEN BEGIN FastFwd7
SAY @18
IF ~~ THEN DO ~SetGlobal("CbGorionTeachesLesson","GLOBAL",6)~ EXIT
END
END
