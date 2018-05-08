BEGIN ~CBCO8SHT~

IF ~Global("Cb_CompanyOfEight_Attacked","GLOBAL",1)
Global("Cb_CompanyOfEightEnemy","LOCALS",1)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~Global("Cb_CompanyOfEight_Incidental","GLOBAL",1)
Global("Cb_CompanyOfEightAssists","LOCALS",1)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~ActionOverride("CBARKSLV",ChangeEnemyAlly("CBARKSLV",ENEMY))
ActionOverride("CBHREDWN",ChangeEnemyAlly("CBHREDWN",ENEMY))
ActionOverride("CBLSLNDA",ChangeEnemyAlly("CBLSLNDA",ENEMY))
ActionOverride("CBMANARB",ChangeEnemyAlly("CBMANARB",ENEMY))
ActionOverride("CBSTTFLW",ChangeEnemyAlly("CBSTTFLW",ENEMY))
ActionOverride("CBMONDRP",ChangeEnemyAlly("CBMONDRP",ENEMY))
ActionOverride("CBTARDTH",ChangeEnemyAlly("CBTARDTH",ENEMY))
Shout(208)
Shout(209)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~ActionOverride("CBARKSLV",ChangeEnemyAlly("CBARKSLV",ENEMY))
ActionOverride("CBHREDWN",ChangeEnemyAlly("CBHREDWN",ENEMY))
ActionOverride("CBLSLNDA",ChangeEnemyAlly("CBLSLNDA",ENEMY))
ActionOverride("CBMANARB",ChangeEnemyAlly("CBMANARB",ENEMY))
ActionOverride("CBSTTFLW",ChangeEnemyAlly("CBSTTFLW",ENEMY))
ActionOverride("CBMONDRP",ChangeEnemyAlly("CBMONDRP",ENEMY))
ActionOverride("CBTARDTH",ChangeEnemyAlly("CBTARDTH",ENEMY))
Shout(208)
Shout(209)
Enemy()~ EXIT
END
