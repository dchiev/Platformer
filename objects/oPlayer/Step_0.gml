/// @description movement
// You can write your code in this editor
var key_left = keyboard_check(vk_left);
var key_right= keyboard_check(vk_right);
var key_jump = keyboard_check_pressed(vk_space);

var move =  key_right - key_left;

hsp = move * walksp;

x = x + hsp
