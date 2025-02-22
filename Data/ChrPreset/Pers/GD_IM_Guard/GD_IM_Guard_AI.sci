IfN_Flag_GoTo(151,1,@1);
 IfN_DistToMC_GoTo(1,@2);
  StartCurrDialog('GD_IM_Guard');
  AIS_GoTo(@1);
@2:
 IfN_Point_Move('MC');
@1:
NOP();
