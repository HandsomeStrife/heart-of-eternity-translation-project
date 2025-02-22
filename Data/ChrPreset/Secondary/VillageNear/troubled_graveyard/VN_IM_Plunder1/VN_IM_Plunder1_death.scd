IfN_Flag_GoTo(320,1,@1);
 SetFlag(320,7);
 SetCharacterPosition('warior',1232.6458,2119.6765,9.1135);
 BlackScreenStart('To the elder's house...');
 AIS_GoTo(@2);
@1:
  RespawnCharacter('VN_IM_Plunder1');
  SetCharacterLifeK('VN_IM_Plunder1',1);
@2:
NOP();
