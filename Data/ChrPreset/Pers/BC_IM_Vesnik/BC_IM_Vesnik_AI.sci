AIS_EnableInvProc(1);
AIS_ExecIfInvisible(1);
IfN_Flag_GoTo(73,2,@1);
 IfChrVisibleGoTo(@1);
 AIS_SetChrPosRotZ('BC_IM_Vesnik',1320.1230,2085.3142,12.3020,0);
 SetFlag(73,3);
@1:
NOP(1);
