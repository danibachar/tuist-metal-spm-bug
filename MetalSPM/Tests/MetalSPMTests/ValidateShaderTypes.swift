import Testing

@testable import MetalSPM

@Suite
struct ValidateShaders {
    @Test func validateShaderTypes() {
        _ = ShaderVertexIn()
    }
}
