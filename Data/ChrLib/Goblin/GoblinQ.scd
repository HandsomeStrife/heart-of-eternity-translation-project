IfN_Flag_GoTo(960,5,@2);
AIS_AddQunatityItem(9605);
IfN_QunatityItem(9605,10,@1);
SetFlag(960,15);
JQuestRecordComplete(960,9);
JVisibleRecord(960,10);
AIS_GoTo(@2);
@1:
AddHotKeyHelpByID(317,46);
@2:
IfN_Flag_GoTo(985,3,@3);
AIS_AddQunatityItem(9853);
SetFlag(985,13);
JQuestRecordComplete(985,5);
JVisibleRecord(985,6);
@3:
IfN_Flag_GoTo(991,4,@4);
AIS_AddQunatityItem(9914);
SetFlag(991,14);
JQuestRecordComplete(991,7);
JVisibleRecord(991,8);
@4:
NOP(0);
