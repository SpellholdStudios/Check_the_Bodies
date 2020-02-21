BEGIN ~CBMANVER~

IF ~True()~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~ChangeEnemyAlly(Myself,ALLY)
ApplySpell(Myself,CHARM_HERO)~ EXIT
END
