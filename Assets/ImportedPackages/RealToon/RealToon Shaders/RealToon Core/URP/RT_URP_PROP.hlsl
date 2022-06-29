//RealToon URP - RT_URP_PROP
//MJQStudioWorks

#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

//===============================================================================
//CBUF
//===============================================================================

CBUFFER_START(UnityPerMaterial)

	//== Others
		uniform float4 _MainTex_ST;

		uniform half4 _MainColor;
		uniform half _MaiColPo;
		uniform half _MVCOL;
		uniform half _MCIALO;
		uniform half _TexturePatternStyle;
		uniform half4 _HighlightColor;
		uniform half _HighlightColorPower;
	//==


	//== N_F_O_ON
		uniform float4 _OutlineWidthControl_ST;
		uniform half _OutlineWidth;
		uniform int _OutlineExtrudeMethod;
		uniform half3 _OutlineOffset;
		uniform half _OutlineZPostionInCamera;
		uniform half4 _OutlineColor;
		uniform half _MixMainTexToOutline;
		uniform half _NoisyOutlineIntensity;
		uniform half _DynamicNoisyOutline;
		uniform half _LightAffectOutlineColor;
		uniform half _OutlineWidthAffectedByViewDistance;
		uniform half _FarDistanceMaxWidth;
		uniform half _VertexColorBlueAffectOutlineWitdh;
	//==


	//==  N_F_O_SSOL
		uniform float _DepthThreshold;
	//==


	//== N_F_MC_ON
		uniform half _MCapIntensity;

		uniform float4 _MCap_ST;

		uniform half _SPECMODE;
		uniform half _SPECIN;

		uniform float4 _MCapMask_ST;
	//==


	//== Transparency
		uniform float4 _MaskTransparency_ST;
		uniform half _Opacity;
		uniform half _TransparentThreshold;
	//==


	//== N_F_CO_ON
		uniform half _Cutout;
		uniform half _AlphaBaseCutout;
		uniform half _UseSecondaryCutout;
		
		uniform half _Glow_Edge_Width;
		uniform half4 _Glow_Color;

		uniform float4 _SecondaryCutout_ST;
	//==


	//== N_F_NM_ON
		uniform float4 _NormalMap_ST;

		uniform half _NormalMapIntensity;
	//==


	//== N_F_CA_ON
		uniform half _Saturation;
	//== 


	//== N_F_SL_ON
		uniform half _SelfLitIntensity;
		uniform half4 _SelfLitColor;
		uniform half _SelfLitPower;
		uniform half _TEXMCOLINT;
		uniform half _SelfLitHighContrast;

		uniform float4 _MaskSelfLit_ST;
	//==


	//== N_F_GLO_ON
		uniform half _GlossIntensity;
		uniform half _Glossiness;
		uniform half _GlossSoftness;
		uniform half4 _GlossColor;
		uniform half _GlossColorPower;

		uniform float4 _MaskGloss_ST;
	//==


	//== N_F_GLO_ON -> N_F_GLOT_ON
		uniform float4 _GlossTexture_ST;

		uniform half _GlossTextureSoftness;
		uniform half _PSGLOTEX;
		uniform half _GlossTextureRotate;
		uniform half _GlossTextureFollowObjectRotation;
		uniform half _GlossTextureFollowLight;
	//==


	//== Others
		uniform half4 _OverallShadowColor;
		uniform half _OverallShadowColorPower;

		uniform half _SelfShadowShadowTAtViewDirection;

		uniform half _ShadowHardness;
		uniform half _SelfShadowRealtimeShadowIntensity;
	//==


	//== N_F_SS_ON
		uniform half _SelfShadowThreshold;
		uniform half _VertexColorGreenControlSelfShadowThreshold;
		uniform half _SelfShadowHardness;
		uniform half _LigIgnoYNorDir;
		uniform half _SelfShadowAffectedByLightShadowStrength;
	//==


	//== N_F_SS_ON -> Transparency
		uniform half _SelfShadowIntensity;
		uniform half4 _SelfShadowColor;
		uniform half _SelfShadowColorPower;
	//==


	//== Others
		uniform half4 _SelfShadowRealTimeShadowColor;
		uniform half _SelfShadowRealTimeShadowColorPower;
	//==


	//== N_F_SON_ON
		uniform half _SmoothObjectNormal;
		uniform half _VertexColorRedControlSmoothObjectNormal;
		uniform float4 _XYZPosition;
		uniform half _ShowNormal;
	//==


	//== N_F_SCT_ON
		uniform float4 _ShadowColorTexture_ST;

		uniform half _ShadowColorTexturePower;
	//==


	//== N_F_ST_ON
		uniform half _ShadowTIntensity;

		uniform float4 _ShadowT_ST;

		uniform half _ShadowTLightThreshold;
		uniform half _ShadowTShadowThreshold;
		uniform half4 _ShadowTColor;
		uniform half _ShadowTColorPower;
		uniform half _ShadowTHardness;
		uniform half _STIL;
		uniform half _ShowInAmbientLightShadowIntensity;
		uniform half _ShowInAmbientLightShadowThreshold;
		uniform half _LightFalloffAffectShadowT;
	//==


	//==  N_F_PT_ON
		uniform float4 _PTexture_ST;
		uniform half4 _PTCol;
		uniform half _PTexturePower;
	//==


	//==  N_F_RELGI_ON
		uniform half _GIFlatShade;
		uniform half _GIShadeThreshold;
		uniform half _EnvironmentalLightingIntensity;
	//==
		

	//== Others
		uniform half _LightAffectShadow;
		uniform half _LightIntensity;
		uniform half _DirectionalLightIntensity;
		uniform half _PointSpotlightIntensity;
		uniform half _LightFalloffSoftness;
	//==


	//== N_F_CLD_ON
		uniform half _CustomLightDirectionIntensity;
		uniform half4 _CustomLightDirection;
		uniform half _CustomLightDirectionFollowObjectRotation;
	//==


	//== N_F_R_ON
		uniform half _ReflectionIntensity;
		uniform half _ReflectionRoughtness;
		uniform half _RefMetallic;

		uniform float4 _MaskReflection_ST;
	//==


	//== N_F_FR_ON
		float4 _FReflection_ST;
	//==


	//== N_F_RL_ON
		uniform half _RimLigInt;
		uniform half _RimLightUnfill;
		uniform half _RimLightSoftness;
		uniform half _LightAffectRimLightColor;
		uniform half4 _RimLightColor;
		uniform half _RimLightColorPower;
		uniform half _RimLightInLight;
	//==


	//== Others
		uniform half4 _SSAOColor;

		uniform half _ReduSha;
		uniform sampler3D _DitherMaskLOD;

		float _SkinMatrixIndex;
		float _ComputeMeshIndex;
	//==

CBUFFER_END

//===============================================================================
//DOTS Instancing
//===============================================================================
#ifdef UNITY_DOTS_INSTANCING_ENABLED
UNITY_DOTS_INSTANCING_START(MaterialPropertyMetadata)

UNITY_DOTS_INSTANCED_PROP(float4, _MainColor)
UNITY_DOTS_INSTANCED_PROP(float, _MaiColPo)
UNITY_DOTS_INSTANCED_PROP(float, _MVCOL)
UNITY_DOTS_INSTANCED_PROP(float, _MCIALO)
UNITY_DOTS_INSTANCED_PROP(float, _TexturePatternStyle)
UNITY_DOTS_INSTANCED_PROP(float4, _HighlightColor)
UNITY_DOTS_INSTANCED_PROP(float, _HighlightColorPower)

UNITY_DOTS_INSTANCED_PROP(float, _OutlineWidth)
UNITY_DOTS_INSTANCED_PROP(int, _OutlineExtrudeMethod)
UNITY_DOTS_INSTANCED_PROP(float3, _OutlineOffset)
UNITY_DOTS_INSTANCED_PROP(float, _OutlineZPostionInCamera)
UNITY_DOTS_INSTANCED_PROP(float4, _OutlineColor)
UNITY_DOTS_INSTANCED_PROP(float, _MixMainTexToOutline)
UNITY_DOTS_INSTANCED_PROP(float, _NoisyOutlineIntensity)
UNITY_DOTS_INSTANCED_PROP(float, _DynamicNoisyOutline)
UNITY_DOTS_INSTANCED_PROP(float, _LightAffectOutlineColor)
UNITY_DOTS_INSTANCED_PROP(float, _OutlineWidthAffectedByViewDistance)
UNITY_DOTS_INSTANCED_PROP(float, _FarDistanceMaxWidth)
UNITY_DOTS_INSTANCED_PROP(float, _VertexColorBlueAffectOutlineWitdh)

UNITY_DOTS_INSTANCED_PROP(float, _DepthThreshold)

UNITY_DOTS_INSTANCED_PROP(float, _MCapIntensity);
UNITY_DOTS_INSTANCED_PROP(float, _SPECMODE)
UNITY_DOTS_INSTANCED_PROP(float, _SPECIN)

UNITY_DOTS_INSTANCED_PROP(float, _Opacity)
UNITY_DOTS_INSTANCED_PROP(float, _TransparentThreshold)

UNITY_DOTS_INSTANCED_PROP(float, _Cutout)
UNITY_DOTS_INSTANCED_PROP(float, _AlphaBaseCutout)
UNITY_DOTS_INSTANCED_PROP(float, _UseSecondaryCutout)

UNITY_DOTS_INSTANCED_PROP(float4, _Glow_Color)
UNITY_DOTS_INSTANCED_PROP(float, _Glow_Edge_Width)

UNITY_DOTS_INSTANCED_PROP(float, _NormalMapIntensity)

UNITY_DOTS_INSTANCED_PROP(float, _Saturation)

UNITY_DOTS_INSTANCED_PROP(float, _SelfLitIntensity)
UNITY_DOTS_INSTANCED_PROP(float4, _SelfLitColor)
UNITY_DOTS_INSTANCED_PROP(float, _SelfLitPower)
UNITY_DOTS_INSTANCED_PROP(float, _TEXMCOLINT)
UNITY_DOTS_INSTANCED_PROP(float, _SelfLitHighContrast)

UNITY_DOTS_INSTANCED_PROP(float, _GlossIntensity)
UNITY_DOTS_INSTANCED_PROP(float, _Glossiness)
UNITY_DOTS_INSTANCED_PROP(float, _GlossSoftness)
UNITY_DOTS_INSTANCED_PROP(float4, _GlossColor)
UNITY_DOTS_INSTANCED_PROP(float, _GlossColorPower)

UNITY_DOTS_INSTANCED_PROP(float, _GlossTextureSoftness)
UNITY_DOTS_INSTANCED_PROP(float, _PSGLOTEX)
UNITY_DOTS_INSTANCED_PROP(float, _GlossTextureRotate)
UNITY_DOTS_INSTANCED_PROP(float, _GlossTextureFollowObjectRotation)
UNITY_DOTS_INSTANCED_PROP(float, _GlossTextureFollowLight)

UNITY_DOTS_INSTANCED_PROP(float4, _OverallShadowColor)
UNITY_DOTS_INSTANCED_PROP(float, _OverallShadowColorPower)
UNITY_DOTS_INSTANCED_PROP(float, _SelfShadowShadowTAtViewDirection)
UNITY_DOTS_INSTANCED_PROP(float, _ShadowHardness)
UNITY_DOTS_INSTANCED_PROP(float, _SelfShadowRealtimeShadowIntensity)

UNITY_DOTS_INSTANCED_PROP(float, _SelfShadowThreshold)
UNITY_DOTS_INSTANCED_PROP(float, _VertexColorGreenControlSelfShadowThreshold)
UNITY_DOTS_INSTANCED_PROP(float, _SelfShadowHardness)
UNITY_DOTS_INSTANCED_PROP(float, _LigIgnoYNorDir)
UNITY_DOTS_INSTANCED_PROP(float, _SelfShadowAffectedByLightShadowStrength)

UNITY_DOTS_INSTANCED_PROP(float, _SelfShadowIntensity)
UNITY_DOTS_INSTANCED_PROP(float4, _SelfShadowColor)
UNITY_DOTS_INSTANCED_PROP(float, _SelfShadowColorPower)

UNITY_DOTS_INSTANCED_PROP(float4, _SelfShadowRealTimeShadowColor)
UNITY_DOTS_INSTANCED_PROP(float, _SelfShadowRealTimeShadowColorPower)

UNITY_DOTS_INSTANCED_PROP(float, _SmoothObjectNormal)
UNITY_DOTS_INSTANCED_PROP(float, _VertexColorRedControlSmoothObjectNormal)
UNITY_DOTS_INSTANCED_PROP(float4, _XYZPosition)
UNITY_DOTS_INSTANCED_PROP(float, _ShowNormal)

UNITY_DOTS_INSTANCED_PROP(float, _ShadowColorTexturePower)

UNITY_DOTS_INSTANCED_PROP(float, _ShadowTIntensity)
UNITY_DOTS_INSTANCED_PROP(float, _ShadowTLightThreshold)
UNITY_DOTS_INSTANCED_PROP(float, _ShadowTShadowThreshold)
UNITY_DOTS_INSTANCED_PROP(float4, _ShadowTColor)
UNITY_DOTS_INSTANCED_PROP(float, _ShadowTColorPower)
UNITY_DOTS_INSTANCED_PROP(float, _ShadowTHardness)
UNITY_DOTS_INSTANCED_PROP(float, _STIL)
UNITY_DOTS_INSTANCED_PROP(float, _ShowInAmbientLightShadowIntensity)
UNITY_DOTS_INSTANCED_PROP(float, _ShowInAmbientLightShadowThreshold)
UNITY_DOTS_INSTANCED_PROP(float, _LightFalloffAffectShadowT)

UNITY_DOTS_INSTANCED_PROP(float4, _PTCol)
UNITY_DOTS_INSTANCED_PROP(float, _PTexturePower)

UNITY_DOTS_INSTANCED_PROP(float, _GIFlatShade)
UNITY_DOTS_INSTANCED_PROP(float, _GIShadeThreshold)
UNITY_DOTS_INSTANCED_PROP(float, _EnvironmentalLightingIntensity)

UNITY_DOTS_INSTANCED_PROP(float, _LightAffectShadow)
UNITY_DOTS_INSTANCED_PROP(float, _LightIntensity)
UNITY_DOTS_INSTANCED_PROP(float, _DirectionalLightIntensity)
UNITY_DOTS_INSTANCED_PROP(float, _PointSpotlightIntensity)
UNITY_DOTS_INSTANCED_PROP(float, _LightFalloffSoftness)

UNITY_DOTS_INSTANCED_PROP(float, _CustomLightDirectionIntensity)
UNITY_DOTS_INSTANCED_PROP(float4, _CustomLightDirection)
UNITY_DOTS_INSTANCED_PROP(float, _CustomLightDirectionFollowObjectRotation)

UNITY_DOTS_INSTANCED_PROP(float, _ReflectionIntensity)
UNITY_DOTS_INSTANCED_PROP(float, _ReflectionRoughtness)
UNITY_DOTS_INSTANCED_PROP(float, _RefMetallic)

UNITY_DOTS_INSTANCED_PROP(float, _RimLigInt)
UNITY_DOTS_INSTANCED_PROP(float, _RimLightUnfill)
UNITY_DOTS_INSTANCED_PROP(float, _RimLightSoftness)
UNITY_DOTS_INSTANCED_PROP(float, _LightAffectRimLightColor)
UNITY_DOTS_INSTANCED_PROP(float4, _RimLightColor)
UNITY_DOTS_INSTANCED_PROP(float, _RimLightColorPower)
UNITY_DOTS_INSTANCED_PROP(float, _RimLightInLight)

UNITY_DOTS_INSTANCED_PROP(float, _ReduceShadowSpotDirectionalLight)

UNITY_DOTS_INSTANCED_PROP(float4, _SSAOColor)

UNITY_DOTS_INSTANCED_PROP(float, _SkinMatrixIndex)
UNITY_DOTS_INSTANCED_PROP(float, _ComputeMeshIndex)

UNITY_DOTS_INSTANCING_END(MaterialPropertyMetadata)


#define _MainColor										UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float4, Metadata__MainColor)
#define _MaiColPo										UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__MaiColPo)
#define _MVCOL											UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__MVCOL)
#define _MCIALO											UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__MCIALO)
#define _TexturePatternStyle							UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__TexturePatternStyle)
#define _HighlightColor									UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float4, Metadata__HighlightColor)
#define _HighlightColorPower							UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__HighlightColorPower)

#define _OutlineWidth									UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__OutlineWidth)
#define _OutlineExtrudeMethod							UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(int, Metadata__OutlineExtrudeMethod)
#define _OutlineOffset									UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float3, Metadata__OutlineOffset)
#define _OutlineZPostionInCamera						UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__OutlineZPostionInCamera)
#define _OutlineColor									UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float4, Metadata__OutlineColor)
#define _MixMainTexToOutline							UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__MixMainTexToOutline)
#define _NoisyOutlineIntensity							UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__NoisyOutlineIntensity)
#define _DynamicNoisyOutline							UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__DynamicNoisyOutline)
#define _LightAffectOutlineColor						UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__LightAffectOutlineColor)
#define _OutlineWidthAffectedByViewDistance				UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__OutlineWidthAffectedByViewDistance)
#define _FarDistanceMaxWidth							UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__FarDistanceMaxWidth)
#define _VertexColorBlueAffectOutlineWitdh				UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__VertexColorBlueAffectOutlineWitdh)

#define _DepthThreshold									UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__DepthThreshold)

#define _MCapIntensity									UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__MCapIntensity)
#define _SPECMODE										UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__SPECMODE)
#define _SPECIN											UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__SPECIN)

#define _Opacity										UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__Opacity)
#define _TransparentThreshold							UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__TransparentThreshold)

#define _Cutout											UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__Cutout)
#define _AlphaBaseCutout								UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__AlphaBaseCutout)
#define _UseSecondaryCutout								UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__UseSecondaryCutout)

#define _Glow_Color										UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float4, Metadata__Glow_Color)
#define _Glow_Edge_Width								UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__Glow_Edge_Width)

#define _NormalMapIntensity								UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__NormalMapIntensity)

#define _Saturation										UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__Saturation)

#define _SelfLitIntensity								UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__SelfLitIntensity)
#define _SelfLitColor									UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float4, Metadata__SelfLitColor)
#define _SelfLitPower									UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__SelfLitPower)
#define _TEXMCOLINT										UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__TEXMCOLINT)
#define _SelfLitHighContrast							UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__SelfLitHighContrast)

#define _GlossIntensity									UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__GlossIntensity)
#define _Glossiness										UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__Glossiness)
#define _GlossSoftness									UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__GlossSoftness)
#define _GlossColor										UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float4, Metadata__GlossColor)
#define _GlossColorPower								UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__GlossColorPower)

#define _GlossTextureSoftness							UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__GlossTextureSoftness)
#define _PSGLOTEX										UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__PSGLOTEX)
#define _GlossTextureRotate								UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__GlossTextureRotate)
#define _GlossTextureFollowObjectRotation				UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__GlossTextureFollowObjectRotation)
#define _GlossTextureFollowLight						UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__GlossTextureFollowLight)

#define _OverallShadowColor								UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float4, Metadata__OverallShadowColor)
#define _OverallShadowColorPower						UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__OverallShadowColorPower)
#define _SelfShadowShadowTAtViewDirection				UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__SelfShadowShadowTAtViewDirection)
#define _ShadowHardness									UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__ShadowHardness)
#define _SelfShadowRealtimeShadowIntensity				UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__SelfShadowRealtimeShadowIntensity)

#define _SelfShadowThreshold							UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__SelfShadowThreshold)
#define _VertexColorGreenControlSelfShadowThreshold		UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__VertexColorGreenControlSelfShadowThreshold)
#define _SelfShadowHardness								UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__SelfShadowHardness)
#define _LigIgnoYNorDir									UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__LigIgnoYNorDir)
#define _SelfShadowAffectedByLightShadowStrength        UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__SelfShadowAffectedByLightShadowStrength)

#define _SelfShadowIntensity							UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__SelfShadowIntensity)
#define _SelfShadowColor								UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float4, Metadata__SelfShadowColor)
#define _SelfShadowColorPower							UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__SelfShadowColorPower)

#define _SelfShadowRealTimeShadowColor					UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float4, Metadata__SelfShadowRealTimeShadowColor)
#define _SelfShadowRealTimeShadowColorPower             UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__SelfShadowRealTimeShadowColorPower)

#define _SmoothObjectNormal								UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__SmoothObjectNormal)
#define _VertexColorRedControlSmoothObjectNormal        UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__VertexColorRedControlSmoothObjectNormal)
#define _XYZPosition									UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float4, Metadata__XYZPosition)
#define _ShowNormal										UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__ShowNormal)

#define _ShadowColorTexturePower						UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__ShadowColorTexturePower)

#define _ShadowTIntensity								UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__ShadowTIntensity)
#define _ShadowTLightThreshold							UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__ShadowTLightThreshold)
#define _ShadowTShadowThreshold							UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__ShadowTShadowThreshold)
#define _ShadowTColor									UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float4, Metadata__ShadowTColor)
#define _ShadowTColorPower								UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__ShadowTColorPower)
#define _ShadowTHardness								UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__ShadowTHardness)
#define _STIL											UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__STIL)
#define _ShowInAmbientLightShadowIntensity              UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__ShowInAmbientLightShadowIntensity)
#define _ShowInAmbientLightShadowThreshold              UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__ShowInAmbientLightShadowThreshold)
#define _LightFalloffAffectShadowT						UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__LightFalloffAffectShadowT)

#define _PTCol											UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float4, Metadata__PTCol)
#define _PTexturePower									UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__PTexturePower)

#define _GIFlatShade									UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__GIFlatShade)
#define _GIShadeThreshold								UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__GIShadeThreshold)
#define _EnvironmentalLightingIntensity					UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__EnvironmentalLightingIntensity)

#define _LightAffectShadow								UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__LightAffectShadow)
#define _LightIntensity									UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__LightIntensity)
#define _DirectionalLightIntensity						UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__DirectionalLightIntensity)
#define _PointSpotlightIntensity						UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__PointSpotlightIntensity)
#define _LightFalloffSoftness							UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__LightFalloffSoftness)

#define _CustomLightDirectionIntensity					UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__CustomLightDirectionIntensity)
#define _CustomLightDirection							UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float4, Metadata__CustomLightDirection)
#define _CustomLightDirectionFollowObjectRotation       UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__CustomLightDirectionFollowObjectRotation)

#define _ReflectionIntensity							UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__ReflectionIntensity)
#define _ReflectionRoughtness							UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__ReflectionRoughtness)
#define _RefMetallic									UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__RefMetallic)

#define _RimLigInt										UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__RimLigInt)
#define _RimLightUnfill									UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__RimLightUnfill)
#define _RimLightSoftness								UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__RimLightSoftness)
#define _LightAffectRimLightColor						UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__LightAffectRimLightColor)
#define _RimLightColor									UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float4, Metadata__RimLightColor)
#define _RimLightColorPower								UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__RimLightColorPower)
#define _RimLightInLight								UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__RimLightInLight)

#define _ReduceShadowSpotDirectionalLight				UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float, Metadata__ReduceShadowSpotDirectionalLight)

#define _SSAOColor                                      UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(float4, Metadata__SSAOColor)

//=========
#define UNITY_ACCESS_HYBRID_INSTANCED_PROP(var, type) UNITY_ACCESS_DOTS_INSTANCED_PROP_FROM_MACRO(type, Metadata_##var) //
#else
#define UNITY_ACCESS_HYBRID_INSTANCED_PROP(var, type) var //
//=========

#endif

//===============================================================================
//Non CBUF
//===============================================================================

TEXTURE2D(_MainTex);
SAMPLER(sampler_MainTex);

TEXTURE2D(_MaskTransparency);
SAMPLER(sampler_MaskTransparency);

TEXTURE2D(_OutlineWidthControl);
SAMPLER(sampler_OutlineWidthControl);

#if N_F_MC_ON
	TEXTURE2D(_MCap);
	SAMPLER(sampler_MCap);

	TEXTURE2D(_MCapMask);
	SAMPLER(sampler_MCapMask);
#endif

#if N_F_CO_ON
	TEXTURE2D(_SecondaryCutout);
	SAMPLER(sampler_SecondaryCutout);
#endif

#if N_F_NM_ON
	TEXTURE2D(_NormalMap);
	SAMPLER(sampler_NormalMap);
#endif

#if N_F_SL_ON
	TEXTURE2D(_MaskSelfLit);
	SAMPLER(sampler_MaskSelfLit);
#endif

#if N_F_GLO_ON
	TEXTURE2D(_MaskGloss);
	SAMPLER(sampler_MaskGloss);
#endif

#if N_F_GLO_ON
	#if N_F_GLOT_ON
		TEXTURE2D(_GlossTexture);
		SAMPLER(sampler_GlossTexture);
	#endif
#endif

#if N_F_SCT_ON
	TEXTURE2D(_ShadowColorTexture);
	SAMPLER(sampler_ShadowColorTexture);
#endif

#if N_F_ST_ON
	TEXTURE2D(_ShadowT);
	SAMPLER(sampler_ShadowT);
#endif

#if N_F_PT_ON
	TEXTURE2D(_PTexture);
	SAMPLER(sampler_PTexture);
#endif

#if N_F_R_ON
	TEXTURE2D(_MaskReflection);
	SAMPLER(sampler_MaskReflection);
#endif

#if N_F_R_ON
	#if N_F_FR_ON
		TEXTURE2D(_FReflection);
		SAMPLER(sampler_FReflection);
	#endif
#endif