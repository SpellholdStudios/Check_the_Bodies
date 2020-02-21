EXTEND_TOP WSMITH01 0 1 2 3 4 5 6 58
  IF ~GlobalGT("CbMalteseArtifact","GLOBAL",4)
      !GlobalGT("CbCromwellDestroysCrown","AR0334",0)~ THEN REPLY @3 GOTO CB_62

  IF ~GlobalGT("CbMalteseArtifact","GLOBAL",4)
      PartyHasItem("CBMALR6a")
      Global("SPRITE_IS_DEADCBMALR1","GLOBAL",1)~ THEN REPLY @5 GOTO CB_74
END

ADD_TRANS_TRIGGER WSMITH01 13
~!PartyHasItem("CBBDSCLE")
!PartyHasItem("CBEMHILT")
!PartyHasItem("CBSSHILT")
!PartyHasItem("CBDRSTF1")
!PartyHasItem("CBDRSwod")
!PartyHasItem("CBRNGax1")
!PartyHasItem("CBRNGmtl")
!PartyHasItem("CBNRTHM1")
!PartyHasItem("CBNRTHM2")~ DO 0

ADD_STATE_TRIGGER WSMITH01 58                     /*was ADD_TRANS_TRIGGER*/
~!Global("CbCromwellForgesCrown","AR0334",1)
!Global("CbCromwellForgesMoonblade","AR0334",1)
!Global("CbCromwellForgesMoonblade","AR0334",3)
!Global("CbCromwellForgesSpellsung","AR0334",3)~

EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("CBBDSCLE")~ THEN GOTO CB_59
  IF ~PartyHasItem("CBEMHILT")
!PartyHasItem("CBEMMETL")~ THEN GOTO CB_75
  IF ~!PartyHasItem("CBBDSCLE")
PartyHasItem("CBEMHILT")
PartyHasItem("CBEMMETL")~ THEN GOTO CB_80
  IF ~!PartyHasItem("CBBDSCLE")
!PartyHasItem("CBEMHILT")
PartyHasItem("CBSSHILT")~ THEN GOTO CB_94
  IF ~!PartyHasItem("CBBDSCLE")
!PartyHasItem("CBEMHILT")
!PartyHasItem("CBSSHILT")
OR(2)
PartyHasItem("CBDRSTF1")
PartyHasItem("CBDRSwod")~ THEN GOTO CB_102
  IF ~!PartyHasItem("CBBDSCLE")
!PartyHasItem("CBEMHILT")
!PartyHasItem("CBSSHILT")
!PartyHasItem("CBDRSTF1")
!PartyHasItem("CBDRSwod")
OR(2)
PartyHasItem("CBRNGax1")
PartyHasItem("CBRNGmtl")~ THEN GOTO CB_109
  IF ~!PartyHasItem("CBBDSCLE")
!PartyHasItem("CBEMHILT")
!PartyHasItem("CBSSHILT")
!PartyHasItem("CBDRSTF1")
!PartyHasItem("CBDRSwod")
!PartyHasItem("CBRNGax1")
!PartyHasItem("CBRNGmtl")
OR(2)
PartyHasItem("CBNRTHM1")
PartyHasItem("CBNRTHM2")~ THEN GOTO CB_116
END


APPEND WSMITH01
IF ~~ THEN BEGIN CB_59
  SAY @38
  IF ~~ THEN GOTO CB_60
END

IF ~~ THEN BEGIN CB_60
  SAY @99
  IF ~~ THEN REPLY @40 DO ~SetGlobal("ForgeItem","GLOBAL",10)~ GOTO CB_61
  IF ~~ THEN REPLY @41 GOTO 19
END

IF ~~ THEN BEGIN CB_61
  SAY @100
  IF ~PartyGoldGT(7999)~ THEN REPLY @89 DO ~TakePartyGold(8000)
DestroyGold(8000)~ GOTO 56
  IF ~PartyGoldLT(8000)~ THEN REPLY @90 DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 19
  IF ~~ THEN REPLY @91 DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO 12
END

IF ~~ THEN BEGIN CB_62
  SAY @101
  IF ~~ THEN GOTO CB_63
END

IF ~~ THEN BEGIN CB_63
  SAY @102
  IF ~~ THEN REPLY @103 GOTO CB_64
END

IF ~~ THEN BEGIN CB_64
  SAY @104
  IF ~~ THEN REPLY @105 GOTO CB_65
END

IF ~~ THEN BEGIN CB_65
  SAY @106
  IF ~~ THEN REPLY @107 GOTO CB_66
  IF ~PartyHasItem("MISC42")
PartyHasItem("SCRL6M")
PartyHasItem("POTN34")
OR(4)
PartyHasItem("AMUL17")
PartyHasItem("CHALCY3")
PartyHasItem("IPSION")
PartyHasItem("RING14")~ THEN REPLY @108 GOTO CB_68
END

IF ~~ THEN BEGIN CB_66
  SAY @109
  IF ~~ THEN REPLY @110 GOTO CB_67
END

IF ~~ THEN BEGIN CB_67
  SAY @111
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CB_68
  SAY @112
  IF ~~ THEN REPLY @113 GOTO CB_71
  IF ~~ THEN REPLY @114 GOTO CB_69
END

IF ~~ THEN BEGIN CB_69
  SAY @115
  IF ~~ THEN GOTO CB_70
END

IF ~~ THEN BEGIN CB_70
  SAY @116
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CB_71
  SAY @117
  IF ~~ THEN DO ~SetGlobal("CbCromwellForgesCrown","AR0334",1)
StartCutSceneMode()
StartCutScene("CROMWELL")~ EXIT
END

IF ~Global("CbCromwellForgesCrown","AR0334",1)
PartyHasItem("CBMALDUP")~ THEN BEGIN CB_72
  SAY @118
  IF ~~ THEN REPLY @119 DO ~SetGlobal("CbCromwellForgesCrown","AR0334",2)
AddJournalEntry(@179,QUEST)
EraseJournalEntry(@180)
EraseJournalEntry(@181)
EraseJournalEntry(@182)
EraseJournalEntry(@183)
EraseJournalEntry(@184)
EraseJournalEntry(@185)
EraseJournalEntry(@186)~ EXIT
END

IF ~Global("CbCromwellForgesCrown","AR0334",1)
!PartyHasItem("CBMALDUP")~ THEN BEGIN CB_73
  SAY @120
  IF ~~ THEN REPLY @121 DO ~SetGlobal("CbCromwellForgesCrown","AR0334",0)
AddJournalEntry(@187,QUEST)~ EXIT
END

IF ~~ THEN BEGIN CB_74
  SAY @122
  IF ~~ THEN DO ~TakePartyItem("CBMALR6a")
AddJournalEntry(@188,QUEST_DONE)
EraseJournalEntry(@189)
EraseJournalEntry(@179)
EraseJournalEntry(@180)
EraseJournalEntry(@181)
EraseJournalEntry(@182)
EraseJournalEntry(@183)
EraseJournalEntry(@184)
EraseJournalEntry(@185)
EraseJournalEntry(@186)
SetGlobal("CbCromwellDestroysCrown","AR0334",1)~ EXIT
END

IF ~~ THEN BEGIN CB_75
  SAY @123
  IF ~~ THEN GOTO CB_76
END

IF ~~ THEN BEGIN CB_76
  SAY @124
  IF ~~ THEN REPLY @125 GOTO CB_77
END

IF ~~ THEN BEGIN CB_77
  SAY @126
  IF ~~ THEN REPLY @127 GOTO CB_78
END

IF ~~ THEN BEGIN CB_78
  SAY @128
  IF ~~ THEN GOTO CB_79
END

IF ~~ THEN BEGIN CB_79
  SAY @129
  IF ~~ THEN REPLY @130 GOTO 4
END

IF ~~ THEN BEGIN CB_80
  SAY @131
  IF ~~ THEN GOTO CB_81
END

IF ~~ THEN BEGIN CB_81
  SAY @132
  IF ~~ THEN GOTO CB_82
END

IF ~~ THEN BEGIN CB_82
  SAY @133
  IF ~~ THEN GOTO CB_83
END

IF ~~ THEN BEGIN CB_83
  SAY @134
  IF ~~ THEN REPLY @61 GOTO CB_84
  IF ~~ THEN REPLY @74 GOTO 23
END

IF ~~ THEN BEGIN CB_84
  SAY @135
  IF ~PartyGoldGT(24999)~ THEN REPLY @136 DO ~TakePartyGold(25000)
DestroyGold(25000)
TakePartyItem("CBEMHILT")
TakePartyItem("CBEMMETL")
SetGlobal("CbCromwellForgesMoonblade","AR0334",1)
SetGlobalTimer("CbCromwellMoonbladeTimer","AR0334",TWO_DAYS)~ GOTO CB_85
  IF ~PartyGoldLT(25000)~ THEN REPLY @137 GOTO CB_86
  IF ~~ THEN REPLY @138 GOTO CB_87
END

IF ~~ THEN BEGIN CB_85
  SAY @139
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN CB_86
  SAY @140
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN CB_87
  SAY @141
  IF ~~ THEN EXIT
END

IF ~Global("CbCromwellForgesMoonblade","AR0334",1)
!GlobalTimerExpired("CbCromwellMoonbladeTimer","AR0334")~ THEN BEGIN CB_88
  SAY @142
  IF ~~ THEN EXIT
END

IF ~Global("CbCromwellForgesMoonblade","AR0334",1)
GlobalTimerExpired("CbCromwellMoonbladeTimer","AR0334")~ THEN BEGIN CB_89
  SAY @143
  IF ~~ THEN REPLY @144 GOTO CB_90
  IF ~~ THEN REPLY @145 GOTO CB_91
END

IF ~~ THEN BEGIN CB_90
  SAY @146
  IF ~~ THEN DO ~SetGlobal("CbCromwellForgesMoonblade","AR0334",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CROMWELL")~ EXIT
END

IF ~~ THEN BEGIN CB_91
  SAY @147
  IF ~~ THEN GOTO 4
END

IF ~Global("CbCromwellForgesMoonblade","AR0334",3)~ THEN BEGIN CB_92
  SAY @148
  IF ~~ THEN GOTO CB_93
END

IF ~~ THEN BEGIN CB_93
  SAY @149
  IF ~~ THEN DO ~SetGlobal("CbCromwellForgesMoonblade","AR0334",4)
GiveItemCreate("CBEMMOON",LastTalkedToBy(Myself),1,0,0)
AddexperienceParty(25000)~ EXIT
END

IF ~~ THEN BEGIN CB_94
  SAY @123
  IF ~~ THEN GOTO CB_95
END

IF ~~ THEN BEGIN CB_95
  SAY @124
  IF ~~ THEN REPLY @150 GOTO CB_96
END

IF ~~ THEN BEGIN CB_96
  SAY @151
  IF ~!PartyHasItem("CBEMMETL")~ THEN REPLY @127 GOTO CB_97
  IF ~PartyHasItem("CBEMMETL")~ THEN REPLY @152 GOTO CB_99
END

IF ~~ THEN BEGIN CB_97
  SAY @153
  IF ~~ THEN GOTO CB_98
END

IF ~~ THEN BEGIN CB_98
  SAY @154
  IF ~~ THEN REPLY @130 GOTO 4
END

IF ~~ THEN BEGIN CB_99
  SAY @146
  IF ~~ THEN DO ~SetGlobal("CbCromwellForgesSpellsung","AR0334",3)
TakePartyItem("CBEMMETL")
TakePartyItem("CBSSHILT")
ClearAllActions()
StartCutSceneMode()
StartCutScene("CROMWELL")~ EXIT
END

IF ~Global("CbCromwellForgesSpellsung","AR0334",3)~ THEN BEGIN CB_100
  SAY @155
  IF ~~ THEN GOTO CB_101
END

IF ~~ THEN BEGIN CB_101
  SAY @149
  IF ~~ THEN DO ~SetGlobal("CbCromwellForgesSpellsung","AR0334",4)
GiveItemCreate("CBSSSHRT",LastTalkedToBy(Myself),1,0,0)
AddexperienceParty(25000)~ EXIT
END

IF ~~ THEN BEGIN CB_102
  SAY @156
  IF ~PartyHasItem("CBDRSTF1")
!PartyHasItem("CBDRSwod")~ THEN GOTO CB_103
  IF ~!PartyHasItem("CBDRSTF1")
PartyHasItem("CBDRSwod")~ THEN GOTO CB_104
  IF ~PartyHasItem("CBDRSTF1")
PartyHasItem("CBDRSwod")~ THEN GOTO CB_105
END

IF ~~ THEN BEGIN CB_103
  SAY @157
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CB_104
  SAY @158
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CB_105
  SAY @159
  IF ~PartyGoldGT(999)~ THEN REPLY @160 GOTO CB_106
  IF ~~ THEN REPLY @161 GOTO 19
END

IF ~~ THEN BEGIN CB_106
  SAY @162
  IF ~~ THEN REPLY @163 DO ~SetGlobal("ForgeItem","GLOBAL",44)
TakePartyGold(1000)
DestroyGold(1000)~ GOTO CB_107
  IF ~~ THEN REPLY @161 GOTO 23
END

IF ~~ THEN BEGIN CB_107
  SAY @164
  IF ~~ THEN DO ~SetGlobal("CbCromwellForgesStaff","AR0334",1)
SetGlobal("ForgeItem","GLOBAL",44)
Wait(1)
StartCutSceneMode()
StartCutScene("CROMWELL")~ EXIT
END

IF ~Global("CbCromwellForgesStaff","AR0334",1)
Global("ForgeItem","GLOBAL",44)
Global("ForgeStuff","GLOBAL",0)~ THEN BEGIN CB_108
  SAY @165
  IF ~~ THEN DO ~SetGlobal("ForgeItem","GLOBAL",0)
SetGlobal("CbCromwellForgesStaff","AR0334",2)~ EXIT
END

IF ~~ THEN BEGIN CB_109
  SAY @156
  IF ~PartyHasItem("CBRNGax1")
!PartyHasItem("CBRNGmtl")~ THEN GOTO CB_110
  IF ~!PartyHasItem("CBRNGax1")
PartyHasItem("CBRNGmtl")~ THEN GOTO CB_111
  IF ~PartyHasItem("CBRNGax1")
PartyHasItem("CBRNGmtl")~ THEN GOTO CB_112
END

IF ~~ THEN BEGIN CB_110
  SAY @166
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CB_111
  SAY @167
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CB_112
  SAY @168
  IF ~PartyGoldGT(9999)~ THEN REPLY @169 GOTO CB_113
  IF ~~ THEN REPLY @161 GOTO 19
END

IF ~~ THEN BEGIN CB_113
  SAY @170
  IF ~~ THEN REPLY @163 DO ~SetGlobal("ForgeItem","GLOBAL",45)
TakePartyGold(10000)
DestroyGold(10000)~ GOTO CB_114
  IF ~~ THEN REPLY @161 GOTO 23
END

IF ~~ THEN BEGIN CB_114
  SAY @164
  IF ~~ THEN DO ~SetGlobal("CbCromwellForgesAxe","AR0334",1)
SetGlobal("ForgeItem","GLOBAL",45)
Wait(1)
StartCutSceneMode()
StartCutScene("CROMWELL")~ EXIT
END

IF ~Global("CbCromwellForgesAxe","AR0334",1)
Global("ForgeItem","GLOBAL",45)
Global("ForgeStuff","GLOBAL",0)~ THEN BEGIN CB_115
  SAY @171
  IF ~~ THEN DO ~SetGlobal("ForgeItem","GLOBAL",0)
SetGlobal("CbCromwellForgesAxe","AR0334",2)~ EXIT
END

IF ~~ THEN BEGIN CB_116
  SAY @156
  IF ~PartyHasItem("CBNRTHM1")
!PartyHasItem("CBNRTHM2")~ THEN GOTO CB_117
  IF ~!PartyHasItem("CBNRTHM1")
PartyHasItem("CBNRTHM2")~ THEN GOTO CB_118
  IF ~PartyHasItem("CBNRTHM1")
PartyHasItem("CBNRTHM2")~ THEN GOTO CB_119
END

IF ~~ THEN BEGIN CB_117
  SAY @172
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CB_118
  SAY @173
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CB_119
  SAY @174
  IF ~PartyGoldGT(19999)~ THEN REPLY @175 GOTO CB_120
  IF ~~ THEN REPLY @176 GOTO 19
END

IF ~~ THEN BEGIN CB_120
  SAY @177
  IF ~~ THEN REPLY @163 DO ~SetGlobal("ForgeItem","GLOBAL",46)
TakePartyGold(20000)
DestroyGold(20000)~ GOTO CB_121
  IF ~~ THEN REPLY @161 GOTO 23
END

IF ~~ THEN BEGIN CB_121
  SAY @164
  IF ~~ THEN DO ~SetGlobal("CbCromwellForgesHammer","AR0334",1)
SetGlobal("ForgeItem","GLOBAL",46)
Wait(1)
StartCutSceneMode()
StartCutScene("CROMWELL")~ EXIT
END

IF ~Global("CbCromwellForgesHammer","AR0334",1)
Global("ForgeItem","GLOBAL",46)
Global("ForgeStuff","GLOBAL",0)~ THEN BEGIN CB_122
  SAY @178
  IF ~~ THEN DO ~SetGlobal("ForgeItem","GLOBAL",0)
SetGlobal("CbCromwellForgesHammer","AR0334",2)~ EXIT
END
END
