BEGIN ~CBSTLKP2~

IF ~Global("CbNumTimesTalkedTo1","LOCALS",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 5
  IF ~~ THEN REPLY @5 GOTO 7
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN DO ~TakePartyItemAll("CLCK01")
TakePartyItemAll("SCRL3H")~ GOTO 11
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN DO ~TakePartyItemAll("CLCK01")
TakePartyItemAll("SCRL3H")~ GOTO 4
END

IF ~~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN DO ~TakePartyItemAll("CLCK01")
TakePartyItemAll("SCRL3H")~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @12
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @13
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @14
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @15
  IF ~Class(Player1,THIEF)~ THEN DO ~SetGlobal("CbNumTimesTalkedTo1","LOCALS",1)
SetGlobal("CB_NoLieThief","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBUNFRID")~ EXIT
  IF ~!Class(Player1,THIEF)~ THEN DO ~SetGlobal("CbNumTimesTalkedTo1","LOCALS",1)
SetGlobal("CB_NoLieNotThief","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBUNFRID")~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @16
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @15
  IF ~Class(Player1,THIEF)~ THEN DO ~SetGlobal("CbNumTimesTalkedTo1","LOCALS",1)
SetGlobal("CB_LieThief","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBUNFRID")~ EXIT
  IF ~!Class(Player1,THIEF)~ THEN DO ~SetGlobal("CbNumTimesTalkedTo1","LOCALS",1)
SetGlobal("CB_LieNotThief","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBUNFRID")~ EXIT
END

IF ~Global("CbNumTimesTalkedTo1","LOCALS",1)~ THEN BEGIN 14
  SAY @17
  IF ~Global("CB_NoLieThief","LOCALS",1)~ THEN GOTO 15
  IF ~Global("CB_NoLieNotThief","LOCALS",1)~ THEN GOTO 17
  IF ~Global("CB_LieThief","LOCALS",1)~ THEN GOTO 19
  IF ~Global("CB_LieNotThief","LOCALS",1)~ THEN GOTO 22
END

IF ~~ THEN BEGIN 15
  SAY @18
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @19
  IF ~~ THEN DO ~SetGlobal("CbNumTimesTalkedTo1","LOCALS",2)
Wait(1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBSTLKPa")~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @20
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @19
  IF ~~ THEN DO ~SetGlobal("CbNumTimesTalkedTo1","LOCALS",2)
Wait(1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBSTLKPb")~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @21
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @22
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @19
  IF ~~ THEN DO ~SetGlobal("CbNumTimesTalkedTo1","LOCALS",2)
Wait(1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBSTLKPc")~ EXIT
END

IF ~~ THEN BEGIN 22
  SAY @23
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @19
  IF ~~ THEN DO ~SetGlobal("CbNumTimesTalkedTo1","LOCALS",2)
Wait(1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBSTLKPd")~ EXIT
END

IF ~Global("CbNumTimesTalkedTo1","LOCALS",2)~ THEN BEGIN 24
  SAY @24
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @25
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @26
  IF ~~ THEN DO ~EscapeAreaDestroy(10)~ EXIT
END
