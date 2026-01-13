#pragma once

#ifdef __METAL_VERSION__
#include <metal_stdlib>
using namespace metal;
#endif

#include <simd/simd.h>

#ifdef __METAL_VERSION__
    typedef simd_float2 vec2;
    typedef simd_float2 vec2;
    typedef simd_float3 vec3;
    typedef simd_float4 vec4;

    struct ShaderVertexIn {
        float2 position [[attribute(0)]];
        float2 texCoord [[attribute(1)]];
    };
#else
    typedef simd_float2 float2;
    typedef simd_float3 float3;
    typedef simd_float4 float4;
    typedef simd_float3x3 float3x3;
    typedef simd_float4x4 float4x4;

    struct ShaderVertexIn {
        float2 position;
        float2 texCoord;
    };
#endif