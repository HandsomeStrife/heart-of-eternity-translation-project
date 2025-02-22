            //   Diffuse             c0       8
            //   Ambient             c8       8
            //   Atten               c16      8
            //   LightVector         c24      8
            //   g_mWorldView2       c32      4
            //   trans1              c36      4
            //   g_mViewToLightProj2 c40      4
            //   textNum1            c44      1
            //
            
                vs_2_0
                def c45, 0, 0, 1, 1.00999999
                def c46, 0.00999999978, 0, 0, 0
                defi i0, 8, 0, 0, 0
                dcl_position v0
                dcl_normal v1
                dcl_texcoord v2
                dp4 oT0.x, v2, c36
                dp4 oT0.y, v2, c37
                dp4 oT0.z, v2, c38
                dp4 oT0.w, v2, c39
                nrm r0.xyz, v1
                mov r2, c45.y
                mov r1, c45.y
                mov r0.w, c45.y
                rep i0
                  mova a0.w, r0.w
                  mad r3.xyz, v0, -c24[a0.w].w, c24[a0.w]
                  dp3 r5.x, r3, r3
                  rsq r3.w, r5.x
                  rcp r4.w, r3.w
                  sge r3.w, -r4.w, r4.w
                  add r5.w, -r3.z, c45.z
                  mad r3.w, r3.w, r5.w, r3.z
                  nrm r4.xyz, r3.xyww
                  dp3 r3.x, r0, r4
                  mad r3.w, r4.w, c16[a0.w].y, c16[a0.w].x
                  max r4.w, r3.x, c45.y
                  mad r3.w, r5.x, c16[a0.w].z, r3.w
                  min r8.w, r4.w, c45.z
                  rcp r7.w, r3.w
                  mov r3, c0[a0.w]
                  mad r3, r3, r8.w, c8[a0.w]
                  mul r3, r7.w, r3
                  max r3, r3, c45.y
                  min r3, r3, c45.z
                  add r5.w, -r0.w, c44.y
                  add r4, r1, r3
                  mul r3.w, r5.w, r5.w
                  sge r6.w, -r3.w, r3.w
                  mul r3, r7.w, c8[a0.w]
                  max r5, r3, c45.y
                  mul r3, r8.w, c0[a0.w]
                  min r5, r5, c45.z
                  mul r3, r7.w, r3
                  add r1, r1, r5
                  max r3, r3, c45.y
                  add r1, -r4, r1
                  min r3, r3, c45.z
                  mad r1, r6.w, r1, r4
                  add r3, -r2, r3
                  mad r2, r6.w, r3, r2
                  add r0.w, r0.w, c45.z
                endrep
                mov oT2, r2
                mov oD0, r1
                mov r0.y, c45.z
                add r0.w, -r0.y, c44.x
                mul r0.w, r0.w, r0.w
                sge r4.w, -r0.w, r0.w
                dp4 r2.x, v0, c32
                dp4 r2.y, v0, c33
                dp4 r2.z, v0, c34
                dp4 r2.w, v0, c35
                dp4 r0.w, v0, c43
                dp4 r0.z, v0, c42
                rcp r1.w, r0.w
                dp4 r0.x, v0, c40
                mul r1.w, r0.z, r1.w
                dp4 r0.y, v0, c41
                max r3.w, r1.w, c45.y
                add r1, -r2, r0
                min r3.w, r3.w, c45.z
                mad oPos, r4.w, r1, r2
                add r1.w, -r3.w, c45.w
                mov oT3, r0
                rcp r1.w, r1.w
                mul oT1.z, r1.w, c46.x
                mov oT1.xyw, r0
            
            // approximately 76 instruction slots used
