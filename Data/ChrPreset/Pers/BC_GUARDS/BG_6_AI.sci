IfN_Flag_GoTo(52,2,@1);
 IfN_TimeRange_GoTo(23,6,@1); 
  AIS_VisibleChr(0);
  AIS_GoTo(@2);
@1:
AIS_VisibleChr(1);
@2:
NOP(0);
