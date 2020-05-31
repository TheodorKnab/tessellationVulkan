#version 450
#extension GL_ARB_separate_shader_objects : enable


layout (location = 0) in vec3 inNormal;
layout (location = 1) in vec2 inUV;

layout (location = 0) out vec4 FragColor;

void main()
{
	vec4 color = vec4(inUV.x,inUV.y,1,1);	
	FragColor = color;
}