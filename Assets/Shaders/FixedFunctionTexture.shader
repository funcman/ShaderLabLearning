Shader "ShaderLabLearning/FixedFunctionTexture" {

    Properties{
        _MainTex("Base (RGB)", 2D) = "white" {}
        _Color("Color", Color) = (1, 1, 1, 1)
    }

    SubShader {
        Pass {
            Material {
                Diffuse[_Color]
            }
            Lighting On
            SetTexture[_MainTex] {
                Combine texture * primary, texture * constant
            }
        }
    }
}
