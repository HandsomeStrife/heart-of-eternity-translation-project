IfN_Flag_GoTo(92,2,@1);
 JQuestRecordComplete(35,6);
 JVisibleRecord(35,7);
 AddSkillPointsToMC(500);
 AddExpMC(2500);
 SetFlag(92,3);
 SetFlag(93,1);
 AIS_GoTo(@2);
@1:
  RespawnCharacter('BC_OLD_Inkviz');
  SetCharacterLifeK('BC_OLD_Inkviz',1);
@2:
NOP();
