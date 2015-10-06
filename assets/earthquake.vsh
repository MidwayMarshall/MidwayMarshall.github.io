attribute vec4 a_color;
attribute vec3 a_position;
attribute vec2 a_texCoord0;

uniform mat4 u_projTrans;
uniform vec3 u_distort;
uniform vec3 u_distort2;

varying vec4 v_color;
varying vec2 v_texCoord0;

void main() {
	v_color = a_color + vec4(u_distort, 0.0);
	v_texCoord0 = a_texCoord0;
	gl_Position = u_projTrans *vec4(a_position + u_distort2,1.0);
}