IfN_Flag_GoTo(62,1,@2);
 IfN_DistToMC_GoTo(3,@1);
  StartCurrDialog('EC_ESk_SpaceFr');
  AIS_GoTo(@2);
@1:
 IfN_Point_Move('MC');
@2:
NOP();
