IfN_Flag_GoTo(330,3,@1);
 SetFlag(330,2);
 AIS_GoTo(@2);
@1:
  RespawnCharacter('FV_IM_WitchHunter');
  SetCharacterLifeK('FV_IM_WitchHunter',1);
@2:
NOP();
