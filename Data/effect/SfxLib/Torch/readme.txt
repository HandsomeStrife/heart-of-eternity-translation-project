CreateTorchSFXObj('C_',{
 AddParticlSystem  "data\effect\Candle\CandlePS.scr"
 AddGlowEffect     "M_CGlow" 0.2 0.03 128 128 128//matName,size,offsZ,R,G,B
 AddLight          5.0 0.2 255 255 128 0.1 0.1 0.03 //Range,offsZ,R,G,B,A1,A2,A3
 AddLightColorEffect  220 220 60 0.03 0.1 //minR,minG,minB,speed,delta
 
 //A = Attenuation
 AutoCalcOffset    True

});