            //   Name           Reg   Size
            //   -------------- ----- ----
            //   LightVector1   c0       7
            //   WorldViewProj2 c7       4
            //   TextTransform1 c11      4
            //   TextTransform2 c15      4
            //
            
                vs_2_0
                def c19, 1, 0, 0.5, 0
                dcl_position v0
                dcl_normal v1
                dcl_texcoord v2
                dcl_texcoord2 v3
                dcl_texcoord3 v4
                mad r0, v2.xyxx, c19.xxyy, c19.yyxx
                dp4 oT0.x, r0, c11
                dp4 oT0.y, r0, c12
                dp4 oT0.z, r0, c13
                dp4 oT0.w, r0, c14
                dp4 oT1.x, r0, c15
                dp4 oT1.y, r0, c16
                dp4 oT1.z, r0, c17
                mov r2.xyz, v1
                dp3 r1.x, v3, r2
                dp3 r1.y, v4, r2
                dp3 r1.z, v1, v1
                dp4 oT1.w, r0, c18
                mad oD0.xyz, r1, c19.z, c19.z
                dp3 r1.x, v3, c0
                dp3 r1.y, v4, c0
                dp3 r1.z, v1, c0
                dp3 r0.x, v3, c1
                dp3 r0.y, v4, c1
                dp3 r0.z, v1, c1
                mad oD1.xyz, r1, c19.z, c19.z
                mad oT2.xyz, r0, c19.z, c19.z
                dp3 r1.x, v3, c2
                dp3 r1.y, v4, c2
                dp3 r1.z, v1, c2
                dp3 r0.x, v3, c3
                dp3 r0.y, v4, c3
                dp3 r0.z, v1, c3
                mad oT3.xyz, r1, c19.z, c19.z
                mad oT4.xyz, r0, c19.z, c19.z
                dp4 oPos.x, v0, c7
                dp4 oPos.y, v0, c8
                dp4 oPos.z, v0, c9
                dp3 r0.x, v3, c4
                dp3 r0.y, v4, c4
                dp3 r0.z, v1, c4
                dp4 oPos.w, v0, c10
                mad oT5.xyz, r0, c19.z, c19.z
                dp3 r1.x, v3, c5
                dp3 r1.y, v4, c5
                dp3 r1.z, v1, c5
                dp3 r0.x, v3, c6
                dp3 r0.y, v4, c6
                dp3 r0.z, v1, c6
                mad oT6.xyz, r1, c19.z, c19.z
                mad oT7.xyz, r0, c19.z, c19.z
                mov oD0.w, c19.x
                mov oD1.w, c19.x
                mov oT2.w, c19.x
                mov oT3.w, c19.x
                mov oT4.w, c19.x
                mov oT5.w, c19.x
                mov oT6.w, c19.x
                mov oT7.w, c19.x
            
            // approximately 54 instruction slots used
