#version 120

uniform sampler2D gcolor;

varying vec2 texcoord;

void main() {
	vec3 color = texture2D(gcolor, texcoord).rgb;
	color = vec3(dot(color, vec3(0.0333f)));


/* DRAWBUFFERS:0 */
	// gl_FragData[0] = vec4(1, 0, 0, 1.0); //gcolor
	gl_FragData[0] = vec4(color, 1.0); //gcolor
}