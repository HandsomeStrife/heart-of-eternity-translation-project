IfN_Flag_GoTo(380,1,@1);
 SetFlag(380,2);
 BlackScreenStart('You have won!');
 DeleteItemChr('warior','DwarfHammerM');
 SetCharacterPosition('TM_DW_Guard',1137.9761,1120.3622,172.2041);
 SetCharacterRotation('TM_DW_Guard',0,0,90);
 SetCharacterPosition('TM_DW_Guard2',1136.9834,1126.7377,172.2041);
 SetCharacterRotation('TM_DW_Guard2',0,0,90);
 SetCharacterPosition('TM_DW_Tamoj',1204.7400,1104.3124,175.1286);
 SetCharacterRotation('TM_DW_Tamoj',0,0,120);
 SetCharacterPosition('warior',1206.2037,1103.6229,174.9816);
 SetCharacterRotation('warior',0,0,300);
 AIS_GoTo(@2);
@1:
  RespawnCharacter('TM_DW_Helm');
  SetCharacterLifeK('TM_DW_Helm',1);
@2:
NOP();
