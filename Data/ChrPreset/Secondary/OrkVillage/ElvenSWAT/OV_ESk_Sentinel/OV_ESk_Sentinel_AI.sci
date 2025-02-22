IfN_Flag_GoTo(450,0,@1);
 IfN_DistToMC_GoTo(3,@2);
  StartCurrDialog('OV_ESk_Sentinel');
  AIS_GoTo(@1);
@2:
 IfN_DistToMC_GoTo(40,@1);
  IfN_Point_MoveRun('MC');
@1:
