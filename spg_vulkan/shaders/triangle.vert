#version 450
#extension GL_ARB_separate_shader_objects : enable
layout (binding = 0) uniform UniformBufferObject 
{
    mat4 model;
    mat4 view;
    mat4 proj;
    float tessAlpha;
    float tessLevel;
    float tessLevelInner;
    float tessLevelOuter;
} ubo; 

layout (location = 0) in vec3 inPosition;
layout (location = 1) in vec3 inNormal;
layout (location = 2) in vec2 inUV;

layout (location = 0) out vec3 outNormal;
layout (location = 1) out vec2 outUV;
void main() {
    gl_Position = vec4(inPosition, 1.0);
    outNormal = inNormal;
	outUV = inUV;    
}