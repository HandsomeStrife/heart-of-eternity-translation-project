IfN_Flag_GoTo(90,1,@2);
 IfN_DistToMC_GoTo(3,@3);
  StartCurrDialog('DC_LV_Kain');
@3:
 IfN_Point_MoveRun('MC');
@2:
IfN_Flag_GoTo(70,8,@4);
SetFlag(70,1);
BlackScreenStart('The seals are broken, and Galahard is freed!');
SetCharacterPosition('warior',1651.3342,2436.6924,169.8073);
SetCharacterPosition('DC_LV_Kain',1652.9449,2430.3325,169.8213);
DeleteItemChr('warior','KoresHammer');
JQuestRecordComplete(20,2);
JQuestComplete(20);
@4:
NOP(1);
