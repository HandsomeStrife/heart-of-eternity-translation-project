IfN_Flag_GoTo(90,1,@2);
 IfN_DistToMC_GoTo(2,@3);
  StartCurrDialog('BC_OLD_Mag2');
@3:
 IfN_Point_MoveRun('MC');
@2:
IfN_Flag_GoTo(93,4,@4);
 IfN_DistToMC_GoTo(3,@5);
  StartCurrDialog('BC_OLD_Mag2');
@5:
 IfN_Point_MoveRun('MC');
@4:
 IfN_Flag_GoTo(93,5,@6);
 IfN_Flag_GoTo(920,0,@6);
 IfN_Point_MoveRun('MC');
 IfN_DistToMC_GoTo(2,@6);
 SetFlag(920,1);
 StartCurrDialog('BC_OLD_Mag2');
@6:
NOP(1);
