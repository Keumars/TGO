shader_type canvas_item;
render_mode unshaded;

uniform vec4 color : source_color;
uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;

void fragment() {
	float uv_height = SCREEN_PIXEL_SIZE.y / TEXTURE_PIXEL_SIZE.y;
	float bottom_y = SCREEN_UV.y + (1.02 - UV.y) * uv_height;
	vec4 lighting = textureLod(SCREEN_TEXTURE, vec2(SCREEN_UV.x, bottom_y), 2.0);
	COLOR = texture(TEXTURE, UV) * lighting * 1.5;
	// COLOR = texture(TEXTURE, UV) * color * 1.5;
}