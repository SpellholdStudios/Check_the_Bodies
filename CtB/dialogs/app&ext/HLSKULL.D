ADD_TRANS_TRIGGER HLSKULL 14
~False()~

EXTEND_BOTTOM HLSKULL 14
  IF ~~ THEN DO ~SetGlobal("UsedCrypt0331","GLOBAL",2)
TakePartyItem("miscaw")
TakePartyItem("miscay")
CreateVisualEffect("SPRAISED",[1684.466])
Wait(4)
CreateCreature("HLKANG",[1684.466],2)
DestroySelf()~ EXIT
END