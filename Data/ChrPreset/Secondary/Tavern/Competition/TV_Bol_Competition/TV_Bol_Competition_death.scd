IfN_Flag_GoTo(360,7,@1);
 BlackScreenStart('You deserve to be called a warrior, marksman!');
 SetFlag(360,8);
 SetCharacterPosition('warior',550.9484,2550.2554,46.5129);
 SetCharacterPosition('TV_IM_Rubaka',553.8754,2550.9761,46.5129);
 SetCharacterPosition('TV_IM_Archer',552.4833,2551.0073,46.5129);
 SetCharacterPosition('TV_OLD_Sorcher',552.4996,2549.8198,46.5129);
 AIS_GoTo(@2);
@1:
  RespawnCharacter('TV_Bol_Competition');
  SetCharacterLifeK('TV_Bol_Competition',1);
@2:
NOP();
