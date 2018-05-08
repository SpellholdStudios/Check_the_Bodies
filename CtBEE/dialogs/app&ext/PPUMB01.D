//needs non-0 flags

ADD_TRANS_TRIGGER PPUMB01 0
~False()~

EXTEND_BOTTOM PPUMB01 0
  IF ~!Global("CbTumblingWizardWantsCure","GLOBAL",2)~ THEN REPLY @2 DO ~StartStore("ppumb01",LastTalkedToBy(Myself))~ EXIT
  IF ~Global("CbTumblingWizardWantsCure","GLOBAL",2)~ THEN REPLY @2 DO ~StartStore("CBCWUMST",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @3 GOTO 1
END