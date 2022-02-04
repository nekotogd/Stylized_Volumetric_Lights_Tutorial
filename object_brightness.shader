shader_type spatial;
render_mode unshaded, cull_disabled;

uniform vec4 color : hint_color = vec4(1.0);
uniform float look_size = 3.0;
uniform float look_blend = 2.0;

varying vec3 model_position_view_space;
void vertex(){
	model_position_view_space = MODELVIEW_MATRIX[3].xyz;
}

void fragment(){
	float attenuation = distance(vec2(0.0), model_position_view_space.xy);
	attenuation = smoothstep(look_size, look_size + look_blend, attenuation);
	
	ALBEDO = mix(color.rgb, vec3(0.0), attenuation);
}
