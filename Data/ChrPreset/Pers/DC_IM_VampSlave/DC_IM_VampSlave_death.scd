IfN_Flag_GoTo(201,2,@1);
IfN_Flag_GoTo(201,4,@1);
 AIS_GoTo(@2);
@1:
  RespawnCharacter('DC_IM_VampSlave');
  SetCharacterLifeK('DC_IM_VampSlave',1);
@2:
NOP();
