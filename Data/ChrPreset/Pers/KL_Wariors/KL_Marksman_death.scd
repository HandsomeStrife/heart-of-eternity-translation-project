IfN_Flag_GoTo(80,2,@1);
 AddFlag(81,-1);
 AIS_GoTo(@2);
@1:
  RespawnCharacter('KL_Marksman');
  SetCharacterLifeK('KL_Marksman',1);
@2:
NOP();
