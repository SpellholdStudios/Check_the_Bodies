ADD_TRANS_TRIGGER BODHI 28
~NumInParty(1)~ DO 0

ADD_TRANS_TRIGGER BODHI 28 
~NumInParty(1)~ DO 1

ADD_TRANS_TRIGGER BODHI 28 
~NumInParty(1)~ DO 2

ADD_TRANS_TRIGGER BODHI 28 
~NumInParty(1)~ DO 3

ADD_TRANS_TRIGGER BODHI 28 
~NumInParty(1)~ DO 4

ADD_TRANS_TRIGGER BODHI 35
~!Global("CbShadowThievesCapturePC","GLOBAL",6)
!Global("CbShadowThievesCapturePC","GLOBAL",7)
!Global("CbShadowThievesCapturePC","GLOBAL",8)~

//Now we add exactly the same terminating actions, with my globals, and have 'double' the terminating things, the first set False, the second set work.
EXTEND_BOTTOM BODHI 28
  IF ~NumInPartyGT(1)
!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Edwin")~ THEN DO ~MoveToPointNoInterrupt([648.1028])
Unlock("DOOR12")
OpenDoor("DOOR12")
SetGlobal("BodhiAppear","GLOBAL",2)
SetGlobal("CbBodhiJob","GLOBAL",1)
SetGlobal("BodhiJob","GLOBAL",1)
SetGlobal("WorkingForBodhi","GLOBAL",1)
SetGlobal("CbWorkingForBodhi","GLOBAL",1)
EscapeArea()
~ EXIT
  IF ~NumInPartyGT(1)
IsValidForPartyDialog("Jan")~ THEN DO ~MoveToPointNoInterrupt([648.1028])
UnLock("DOOR12")
OpenDoor("DOOR12")
SetGlobal("BodhiAppear","GLOBAL",2)
SetGlobal("BodhiJob","GLOBAL",1)
SetGlobal("WorkingForBodhi","GLOBAL",1)
SetGlobal("CbWorkingForBodhi","GLOBAL",1)
EscapeArea()~ EXTERN ~JANJ~ 118
  IF ~NumInPartyGT(1)
!IsValidForPartyDialog("Jan")
IsValidForPartyDialog("Aerie")~ THEN DO ~MoveToPointNoInterrupt([648.1028])
Unlock("DOOR12")
OpenDoor("DOOR12")
SetGlobal("BodhiAppear","GLOBAL",2)
SetGlobal("CbBodhiJob","GLOBAL",1)
SetGlobal("BodhiJob","GLOBAL",1)
SetGlobal("WorkingForBodhi","GLOBAL",1)
SetGlobal("CbWorkingForBodhi","GLOBAL",1)
EscapeArea()
~ EXTERN ~AERIEJ~ 89
  IF ~NumInPartyGT(1)
!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Aerie")
IsValidForPartyDialog("Nalia")~ THEN DO ~MoveToPointNoInterrupt([648.1028])
Unlock("DOOR12")
OpenDoor("DOOR12")
SetGlobal("BodhiAppear","GLOBAL",2)
SetGlobal("CbBodhiJob","GLOBAL",1)
SetGlobal("BodhiJob","GLOBAL",1)
SetGlobal("WorkingForBodhi","GLOBAL",1)
SetGlobal("CbWorkingForBodhi","GLOBAL",1)
EscapeArea()
~ EXTERN ~NALIAJ~ 254
  IF ~NumInPartyGT(1)
!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Nalia")
IsValidForPartyDialog("Edwin")~ THEN DO ~MoveToPointNoInterrupt([648.1028])
Unlock("DOOR12")
OpenDoor("DOOR12")
SetGlobal("BodhiAppear","GLOBAL",2)
SetGlobal("CbBodhiJob","GLOBAL",1)
SetGlobal("BodhiJob","GLOBAL",1)
SetGlobal("WorkingForBodhi","GLOBAL",1)
SetGlobal("CbWorkingForBodhi","GLOBAL",1)
EscapeArea()
~ EXTERN ~EDWINJ~ 77
END

APPEND BODHI
IF ~Global("CbShadowThievesCapturePC","GLOBAL",6)
Global("CbBodhiJob","GLOBAL",6)
Global("CbWorkingForBodhi","GLOBAL",6)~ THEN BEGIN CB_01
  SAY @241
  IF ~~ THEN EXIT
END
END

APPEND BODHI
IF ~OR(3)
	Global("CbShadowThievesCapturePC","GLOBAL",7)
	Global("CbShadowThievesCapturePC","GLOBAL",8)
	Global("CbShadowThievesCapturePC","GLOBAL",9)~ THEN BEGIN CB_02
  SAY @242
  IF ~~ THEN EXIT
END
END



