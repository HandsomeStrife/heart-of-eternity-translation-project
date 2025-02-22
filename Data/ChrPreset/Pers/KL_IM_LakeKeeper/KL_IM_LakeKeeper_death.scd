IfN_Flag_GoTo(80,2,@1);
 SetFlag(90,1);
 DeleteItemChr('KL_IM_LakeKeeper','KingSword');
 AddItemChrSlot('warior','Quest\KingSword\KingSword.scr','Bag');
 AddHotKeyHelp('Ты получил Меч Королей: I',23);
 JQuestRecordComplete(34,1);
 JQuestRecordComplete(34,2);
 JQuestRecordComplete(34,3);
 JQuestRecordComplete(34,4);
 JVisibleRecord(34,5);
 AIS_GoTo(@2);
@1:
  RespawnCharacter('KL_IM_LakeKeeper');
  SetCharacterLifeK('KL_IM_LakeKeeper',1);
@2:
NOP();
