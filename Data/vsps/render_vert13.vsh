            //   Diffuse1       c0       8
            //   Ambient1       c8       8
            //   Atten1         c16      8
            //   LightVector1   c24      8
            //   WorldViewProj2 c32      4
            //   TextTransform1 c36      4
            //   TextTransform2 c40      4
            //
            
                vs_2_0
                def c44, 1, 0, 0, 0
                defi i0, 8, 0, 0, 0
                dcl_position v0
                dcl_normal v1
                dcl_texcoord v2
                dcl_texcoord1 v3
                mad r0.xyz, v2.xyxw, c44.xxyw, c44.yyxw
                dp3 oT1.w, r0, c43
                dp3 oT0.x, r0, c36
                dp3 oT0.y, r0, c37
                dp3 oT0.z, r0, c38
                dp3 oT0.w, r0, c39
                dp3 oT1.x, r0, c40
                dp3 oT1.y, r0, c41
                dp3 oT1.z, r0, c42
                nrm r0.xyz, v1
                mov r1, c44.y
                mov r0.w, c44.y
                rep i0
                  mova a0.w, r0.w
                  mad r2.xyz, v0, -c24[a0.w].w, c24[a0.w]
                  dp3 r4.x, r2, r2
                  rsq r2.w, r4.x
                  rcp r3.w, r2.w
                  sge r2.w, -r3.w, r3.w
                  add r4.w, -r2.z, c44.x
                  mad r2.w, r2.w, r4.w, r2.z
                  nrm r3.xyz, r2.xyww
                  dp3 r2.x, r0, r3
                  mad r2.w, r3.w, c16[a0.w].y, c16[a0.w].x
                  max r3.w, r2.x, c44.y
                  mad r2.w, r4.x, c16[a0.w].z, r2.w
                  min r4.w, r3.w, c44.x
                  rcp r3.w, r2.w
                  mov r2, c0[a0.w]
                  mad r2, r2, r4.w, c8[a0.w]
                  mul r2, r3.w, r2
                  max r2, r2, c44.y
                  min r2, r2, c44.x
                  add r1, r1, r2
                  add r0.w, r0.w, c44.x
                endrep
                mov r0, r1
                min oD0, r0, c44.x
                dp4 oPos.x, v0, c32
                dp4 oPos.y, v0, c33
                dp4 oPos.z, v0, c34
                dp4 oPos.w, v0, c35
                mad oT2, v3.xyxx, c44.xxyy, c44.yyxy
            
            // approximately 47 instruction slots used
