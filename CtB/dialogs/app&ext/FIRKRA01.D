ADD_TRANS_TRIGGER FIRKRA01 9
~False()~

EXTEND_BOTTOM FIRKRA01 9
  IF ~!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Yoshimo")
!IsValidForPartyDialog("Jaheira")~ THEN DO ~RevealAreaOnMap("AR1200")
SetGlobal("CbRelatesToElvesAndArtifacts1200Revealed","GLOBAL",1)
EscapeArea()
~ UNSOLVED_JOURNAL @17 EXIT
END

EXTEND_BOTTOM FIRKRA01 9
  IF ~IsValidForPartyDialog("Minsc")~ THEN DO ~RevealAreaOnMap("AR1200")
SetGlobal("CbRelatesToElvesAndArtifacts1200Revealed","GLOBAL",1)
EscapeArea()~ UNSOLVED_JOURNAL @17 EXTERN ~MINSCJ~ 96
END

EXTEND_BOTTOM FIRKRA01 9
  IF ~!IsValidForPartyDialog("Minsc")
IsValidForPartyDialog("Yoshimo")~ THEN DO ~RevealAreaOnMap("AR1200")
SetGlobal("CbRelatesToElvesAndArtifacts1200Revealed","GLOBAL",1)
EscapeArea()~ UNSOLVED_JOURNAL @17 EXTERN ~YOSHJ~ 42
END

EXTEND_BOTTOM FIRKRA01 9
  IF ~!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Yoshimo")
IsValidForPartyDialog("Jaheira")~ THEN DO ~RevealAreaOnMap("AR1200")
SetGlobal("CbRelatesToElvesAndArtifacts1200Revealed","GLOBAL",1)
EscapeArea()~ UNSOLVED_JOURNAL @17 EXTERN ~JAHEIRAJ~ 356
END

ADD_TRANS_TRIGGER FIRKRA01 8
~False()~

EXTEND_TOP FIRKRA01 8
  IF ~Global("CbMalteseMageInWindspear","GLOBAL",0)~ THEN GOTO 9
END

EXTEND_TOP FIRKRA01 8
  IF ~Global("CbMalteseMageInWindspear","GLOBAL",1)~ THEN GOTO CB_11
END

APPEND FIRKRA01
IF ~~ THEN BEGIN CB_11
  SAY @19
  IF ~!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Yoshimo")
!IsValidForPartyDialog("Jaheira")~ THEN DO ~SetGlobal("CbRelatesToElvesAndArtifacts1200Revealed","GLOBAL",1)
EscapeArea()
~ UNSOLVED_JOURNAL @17 EXIT
  IF ~IsValidForPartyDialog("Minsc")~ THEN DO ~SetGlobal("CbRelatesToElvesAndArtifacts1200Revealed","GLOBAL",1)
EscapeArea()~ UNSOLVED_JOURNAL @17 EXTERN ~MINSCJ~ 96
  IF ~!IsValidForPartyDialog("Minsc")
IsValidForPartyDialog("Yoshimo")~ THEN DO ~SetGlobal("CbRelatesToElvesAndArtifacts1200Revealed","GLOBAL",1)
EscapeArea()~ UNSOLVED_JOURNAL @17 EXTERN ~YOSHJ~ 42
  IF ~!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Yoshimo")
IsValidForPartyDialog("Jaheira")~ THEN DO ~SetGlobal("CbRelatesToElvesAndArtifacts1200Revealed","GLOBAL",1)
EscapeArea()~ UNSOLVED_JOURNAL @17 EXTERN ~JAHEIRAJ~ 356
END
END

ADD_TRANS_TRIGGER FIRKRA01 7
~False()~

EXTEND_TOP FIRKRA01 7
  IF ~Global("CbMalteseMageInWindspear","GLOBAL",0)~ THEN GOTO 9
END

EXTEND_TOP FIRKRA01 7
  IF ~Global("CbMalteseMageInWindspear","GLOBAL",1)~ THEN GOTO CB_11
END

ADD_TRANS_TRIGGER FIRKRA01 6
~False()~

EXTEND_TOP FIRKRA01 6
  IF ~Global("CbMalteseMageInWindspear","GLOBAL",0)~ THEN GOTO 9
END

EXTEND_TOP FIRKRA01 6 
  IF ~Global("CbMalteseMageInWindspear","GLOBAL",1)~ THEN GOTO CB_11
END

