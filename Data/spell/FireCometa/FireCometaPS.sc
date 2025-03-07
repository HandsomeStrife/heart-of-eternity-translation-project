CreateMaterial('M_FCFire','smoke.tga',{
 BlendEnable       True
 SRCBlend          "One"
 DSTBlend          "One"
 ColorArgOne         id = 0 "Texture"
 ColorOp             id = 0 "Modulate"
 ColorArgTwo         id = 0 "Diffuse"
 AlphaArgOne         id = 0 "Texture"
 AlphaOp             id = 0 "Modulate"
 AlphaArgTwo         id = 0 "Diffuse"
 TextureCIndex       id = 0 0
 TCIFunction         id = 0 "passthru"
 LightEnable       False
 DoubleSize        True
 CollisionDisable  False
 zWriteEnable	False
});
CreateParticlSystem('PS_FCFire',{
 ParticlProcType	"Flue"
 SpawnType		"Sphere"
 Radius			0.3
 SpawnSpeed             80.0000
 SizeMin                0.7000
 SizeMax                1.1000
 TimeLive               2.00
 MaxNumParticl          200
 Immortal               True
 SetPSColor		id = 0	time = 0.0000  0 0 0 255
 SetPSColor		id = 1	time = 0.1000  255 60 60 255
 SetPSColor		id = 2	time = 0.9000  255 64 0 255
 SetPSColor		id = 3	time = 1.0000  0 0 0 255
 ForceVector            id = 0  0.0000 0.0000 1.0000
 ForceStrength          id = 0  1.00000
 AngleZXY               id = 0  0.000  360.000
 AngleXY                id = 0  -16.000  16.000
 InItSelf               id = 0 True
 Position               73.3923 73.4948 3.1311
 Rotation               0 0 0
 SizeMinSec             0.0000
 MassMin                0.0000
 SetMaterial		"M_FCFire"
 SpeedRotate            150
 SpiralRotate           False
 SpawnRandomRot         True
});
