shader_type canvas_item;
render_mode unshaded;

global uniform vec4 day_night_color : source_color;
global uniform vec4 torch_color : source_color;

uniform int dy;
uniform int light_distance;
uniform sampler2D LIGHT_TEX;

void fragment() {
	int cutoff = 320;
	if (dy <= 0 || light_distance >= cutoff) {
		COLOR = texture(TEXTURE, UV) * day_night_color;
	} else {
		float u = float(light_distance) / float(cutoff) / float(2);
		vec4 lighting = texture(LIGHT_TEX, vec2(0.5 + u, .5));
		COLOR = lighting * texture(TEXTURE, UV);
	}
}