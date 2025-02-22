If_Flag_GoTo(360,10,@1);
  RespawnCharacter('TV_OLD_Sorcher');
  SetCharacterLifeK('TV_OLD_Sorcher',1);
  AIS_GoTo(@2);
@1:
 BlackScreenStart('You deserve to be called a mage.');
 SetFlag(360,11);
 RespawnCharacter('TV_OLD_Sorcher');
 SetCharacterLifeK('TV_OLD_Sorcher',1);
 SetCharacterPosition('warior',550.9484,2550.2554,46.5129);
 SetCharacterPosition('TV_IM_Rubaka',553.8754,2550.9761,46.5129);
 SetCharacterPosition('TV_IM_Archer',552.4833,2551.0073,46.5129);
 SetCharacterPosition('TV_OLD_Sorcher',552.4996,2549.8198,46.5129);
 AddFriend('TV_IM_Rubaka','warior');
 AddFriend('TV_IM_Archer','warior');
 AddFriend('TV_OLD_Sorcher','warior');
@2:
NOP();
