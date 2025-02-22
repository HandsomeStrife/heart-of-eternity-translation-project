            // Parameters:
            //
            //   float4 Ambient1[8];
            //   float4 Atten1[8];
            //   float4 Diffuse1[8];
            //   float4 LightVector1[8];
            //   float4x4 TextTransform1;
            //   float4x4 WorldViewProj2;
            //
            //
            // Registers:
            //
            //   Name           Reg   Size
            //   -------------- ----- ----
            //   Diffuse1       c0       8
            //   Ambient1       c8       8
            //   Atten1         c16      8
            //   LightVector1   c24      8
            //   WorldViewProj2 c32      4
            //   TextTransform1 c36      4
            //
            
                vs_2_0
                def c40, 1, 0, 0, 1.00100005
                def c41, 0.00100000005, 0, 0, 0
                defi i0, 8, 0, 0, 0
                dcl_position v0
                dcl_normal v1
                dcl_texcoord v2
                mad r0.xyz, v2.xyxw, c40.xxyw, c40.yyxw
                dp3 oT1.w, r0, c39
                dp3 oT1.x, r0, c36
                dp3 oT1.y, r0, c37
                dp3 oT1.z, r0, c38
                nrm r0.xyz, v1
                mov r1, c40.y
                mov r0.w, c40.y
                rep i0
                  mova a0.w, r0.w
                  mad r2.xyz, v0, -c24[a0.w].w, c24[a0.w]
                  dp3 r4.x, r2, r2
                  rsq r2.w, r4.x
                  rcp r3.w, r2.w
                  sge r2.w, -r3.w, r3.w
                  add r4.w, -r2.z, c40.x
                  mad r2.w, r2.w, r4.w, r2.z
                  nrm r3.xyz, r2.xyww
                  dp3 r2.x, r0, r3
                  mad r2.w, r3.w, c16[a0.w].y, c16[a0.w].x
                  max r3.w, r2.x, c40.y
                  mad r2.w, r4.x, c16[a0.w].z, r2.w
                  min r4.w, r3.w, c40.x
                  rcp r3.w, r2.w
                  mov r2, c0[a0.w]
                  mad r2, r2, r4.w, c8[a0.w]
                  mul r2, r3.w, r2
                  max r2, r2, c40.y
                  min r2, r2, c40.x
                  add r1, r1, r2
                  add r0.w, r0.w, c40.x
                endrep
                mov oD0, r1
                dp4 r0.w, v0, c35
                dp4 r0.z, v0, c34
                rcp r1.w, r0.w
                mul r1.w, r0.z, r1.w
                max r1.w, r1.w, c40.y
                dp4 oPos.x, v0, c32
                min r1.w, r1.w, c40.x
                dp4 oPos.y, v0, c33
                add r1.w, -r1.w, c40.w
                mov oPos.zw, r0
                rcp r0.w, r1.w
                mul oD1, r0.w, c41.x
                mad oT0, v2.xyxx, c40.xxyy, c40.yyxy
            
            // approximately 50 instruction slots used
