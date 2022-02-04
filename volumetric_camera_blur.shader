shader_type canvas_item;

uniform float blur_amount = 30.0;

void fragment(){
	vec3 screen_color = texture(SCREEN_TEXTURE, SCREEN_UV, blur_amount).rgb;
	COLOR.rgb = screen_color;
}
