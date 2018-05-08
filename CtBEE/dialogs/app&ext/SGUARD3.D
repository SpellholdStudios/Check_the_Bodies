ADD_STATE_TRIGGER SGUARD3 0
~!Global("CbCanDoWedding","GLOBAL",1)~

APPEND SGUARD3
IF ~Global("CbCanDoWedding","GLOBAL",1)~ THEN BEGIN CB_1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("sguard3yell","GLOBAL",1)~ EXIT
END
END