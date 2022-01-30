/// @description Insert description here
// You can write your code in this editor
shader_set(fxOutline);
var texture = sprite_get_texture(apparition,image_index);
var t_width = texture_get_texel_width(texture);
var t_height = texture_get_texel_height(texture);
shader_set_uniform_f(sh_texel_handle,t_width,t_height);
draw_self();
shader_reset();
