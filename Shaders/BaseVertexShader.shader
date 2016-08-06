#version 330 core

layout(location = 0) in vec3 VertexPosition_ModelSpace;
layout(location = 1) in vec3 VertexColor;
uniform mat4 MVP;

out vec3 FragmentColor;

void main()
{
	gl_Position = MVP * vec4(VertexPosition_ModelSpace, 1.0f);
	FragmentColor = VertexColor;
}