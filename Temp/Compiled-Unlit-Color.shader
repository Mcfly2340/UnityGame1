// Compiled shader for PC, Mac & Linux Standalone

//////////////////////////////////////////////////////////////////////////
// 
// NOTE: This is *not* a valid shader file, the contents are provided just
// for information and for debugging purposes only.
// 
//////////////////////////////////////////////////////////////////////////
// Skipping shader variants that would not be included into build of current scene.

Shader "Unlit/Color" {
Properties {
 _Color ("Main Color", Color) = (1.000000,1.000000,1.000000,1.000000)
}
SubShader { 
 LOD 100
 Tags { "RenderType"="Opaque" }


 // Stats for Vertex shader:
 //        d3d11: 11 avg math (8..15)
 // Stats for Fragment shader:
 //        d3d11: 2 math
 Pass {
  Tags { "RenderType"="Opaque" }
  //////////////////////////////////
  //                              //
  //      Compiled programs       //
  //                              //
  //////////////////////////////////
//////////////////////////////////////////////////////
Global Keywords: <none>
Local Keywords: <none>
-- Hardware tier variant: Tier 1
-- Vertex shader for "d3d11":
// Stats: 8 math, 2 temp registers
Uses vertex data channel "Vertex"

Constant Buffer "UnityPerDraw" (176 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
}
Constant Buffer "UnityPerFrame" (368 bytes) on slot 1 {
  Matrix4x4 unity_MatrixVP at 272
}

Shader Disassembly:
//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
//
      vs_4_0
      dcl_constantbuffer CB0[4], immediateIndexed
      dcl_constantbuffer CB1[21], immediateIndexed
      dcl_input v0.xyz
      dcl_output_siv o0.xyzw, position
      dcl_temps 2
   0: mul r0.xyzw, v0.yyyy, cb0[1].xyzw
   1: mad r0.xyzw, cb0[0].xyzw, v0.xxxx, r0.xyzw
   2: mad r0.xyzw, cb0[2].xyzw, v0.zzzz, r0.xyzw
   3: add r0.xyzw, r0.xyzw, cb0[3].xyzw
   4: mul r1.xyzw, r0.yyyy, cb1[18].xyzw
   5: mad r1.xyzw, cb1[17].xyzw, r0.xxxx, r1.xyzw
   6: mad r1.xyzw, cb1[19].xyzw, r0.zzzz, r1.xyzw
   7: mad o0.xyzw, cb1[20].xyzw, r0.wwww, r1.xyzw
   8: ret 
// Approximately 0 instruction slots used


-- Hardware tier variant: Tier 1
-- Fragment shader for "d3d11":
Constant Buffer "$Globals" (48 bytes) on slot 0 {
  Vector4 _Color at 32
}

Shader Disassembly:
//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
      ps_4_0
      dcl_constantbuffer CB0[3], immediateIndexed
      dcl_output o0.xyzw
   0: mov o0.xyz, cb0[2].xyzx
   1: mov o0.w, l(1.000000)
   2: ret 
// Approximately 0 instruction slots used


//////////////////////////////////////////////////////
Global Keywords: FOG_EXP2 
Local Keywords: <none>
-- Hardware tier variant: Tier 1
-- Vertex shader for "d3d11":
// Stats: 15 math, 2 temp registers
Uses vertex data channel "Vertex"

Constant Buffer "UnityPerCamera" (144 bytes) on slot 0 {
  Vector4 _ProjectionParams at 80
}
Constant Buffer "UnityPerDraw" (176 bytes) on slot 1 {
  Matrix4x4 unity_ObjectToWorld at 0
}
Constant Buffer "UnityPerFrame" (368 bytes) on slot 2 {
  Matrix4x4 unity_MatrixVP at 272
}
Constant Buffer "UnityFog" (32 bytes) on slot 3 {
  Vector4 unity_FogParams at 16
}

Shader Disassembly:
//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 0   x           1     NONE   float   x   
//
      vs_4_0
      dcl_constantbuffer CB0[6], immediateIndexed
      dcl_constantbuffer CB1[4], immediateIndexed
      dcl_constantbuffer CB2[21], immediateIndexed
      dcl_constantbuffer CB3[2], immediateIndexed
      dcl_input v0.xyz
      dcl_output_siv o0.xyzw, position
      dcl_output o1.x
      dcl_temps 2
   0: mul r0.xyzw, v0.yyyy, cb1[1].xyzw
   1: mad r0.xyzw, cb1[0].xyzw, v0.xxxx, r0.xyzw
   2: mad r0.xyzw, cb1[2].xyzw, v0.zzzz, r0.xyzw
   3: add r0.xyzw, r0.xyzw, cb1[3].xyzw
   4: mul r1.xyzw, r0.yyyy, cb2[18].xyzw
   5: mad r1.xyzw, cb2[17].xyzw, r0.xxxx, r1.xyzw
   6: mad r1.xyzw, cb2[19].xyzw, r0.zzzz, r1.xyzw
   7: mad r0.xyzw, cb2[20].xyzw, r0.wwww, r1.xyzw
   8: mov o0.xyzw, r0.xyzw
   9: div r0.x, r0.z, cb0[5].y
  10: add r0.x, -r0.x, l(1.000000)
  11: mul r0.x, r0.x, cb0[5].z
  12: max r0.x, r0.x, l(0.000000)
  13: mul r0.x, r0.x, cb3[1].x
  14: mul r0.x, r0.x, -r0.x
  15: exp o1.x, r0.x
  16: ret 
// Approximately 0 instruction slots used


-- Hardware tier variant: Tier 1
-- Fragment shader for "d3d11":
// Stats: 2 math, 1 temp registers
Constant Buffer "$Globals" (48 bytes) on slot 0 {
  Vector4 _Color at 32
}
Constant Buffer "UnityFog" (32 bytes) on slot 1 {
  Vector4 unity_FogColor at 0
}

Shader Disassembly:
//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// TEXCOORD                 0   x           1     NONE   float   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
      ps_4_0
      dcl_constantbuffer CB0[3], immediateIndexed
      dcl_constantbuffer CB1[1], immediateIndexed
      dcl_input_ps linear v1.x
      dcl_output o0.xyzw
      dcl_temps 1
   0: mov_sat r0.x, v1.x
   1: add r0.yzw, cb0[2].xxyz, -cb1[0].xxyz
   2: mad o0.xyz, r0.xxxx, r0.yzwy, cb1[0].xyzx
   3: mov o0.w, l(1.000000)
   4: ret 
// Approximately 0 instruction slots used


 }
}
}