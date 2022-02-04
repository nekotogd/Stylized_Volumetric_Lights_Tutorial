shader_type canvas_item;
render_mode blend_add;

uniform sampler2D viewport_texture;
uniform float alpha : hint_range(0.0, 1.0) = 0.4;

void fragment(){
	vec3 volumetric_color = texture(viewport_texture, UV).rgb;
	COLOR = vec4(volumetric_color, alpha);
}
