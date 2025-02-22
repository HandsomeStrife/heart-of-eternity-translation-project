 AddFlag(911,1);
IfN_Flag_GoTo(911,3,@1);
 SetFlag(910,2);
 JQuestRecordComplete(910,1);
 AddItemChrSlot('warior','Quest\MQ1\MQ1.scr','Bag');
 JVisibleRecord(910,2);
@1:
NOP(0);
