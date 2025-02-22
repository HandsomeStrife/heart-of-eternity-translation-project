IfN_Flag_GoTo(80,2,@1);
 AddFlag(81,-1);
 AIS_GoTo(@2);
@1:
  RespawnCharacter('KL_Charodey');
  SetCharacterLifeK('KL_Charodey',1);
@2:
NOP();
