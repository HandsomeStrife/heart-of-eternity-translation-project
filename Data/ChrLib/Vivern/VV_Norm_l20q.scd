IfN_Flag_GoTo(960,1,@1);
AIS_AddQunatityItem(9601);
IfN_QunatityItem(9601,1,@1);
SetFlag(960,11);
JQuestRecordComplete(960,1);
JVisibleRecord(960,2);
@1:
IfN_Flag_GoTo(976,3,@2);
AIS_AddQunatityItem(9763);
SetFlag(976,13);
JQuestRecordComplete(976,5);
JVisibleRecord(976,6);
@2:
IfN_Flag_GoTo(999,1,@3);
AIS_AddQunatityItem(9991);
IfN_QunatityItem(9991,5,@3);
SetFlag(999,11);
JQuestRecordComplete(999,1);
JVisibleRecord(999,2);
@3:
NOP(0);
