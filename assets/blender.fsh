varying vec4 v_color;
varying vec2 v_texCoord0;

uniform sampler2D u_texture;
uniform sampler2D u_texture1;

void main() {
	vec4 sourceColor = texture2D(u_texture, v_texCoord0);
	vec4 colorFilter = texture2D(u_texture1, v_texCoord0);
	sourceColor.r = sourceColor.r * colorFilter.r;
	sourceColor.g = sourceColor.g * colorFilter.g;
	sourceColor.b = sourceColor.b * colorFilter.b;
	//sourceColor.a = sourceColor.a * colorFilter.a;
	gl_FragColor = sourceColor;
}