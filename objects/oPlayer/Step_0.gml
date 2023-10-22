/// @description movement
// Get Player Input
var key_left = keyboard_check(vk_left);
var key_right= keyboard_check(vk_right);
var key_jump = keyboard_check_pressed(vk_space);

// Calculate Movement
var move =  key_right - key_left;

hsp = move * walksp;
vsp = vsp + grv;

// check if we are on floor and space is pressed, if not jump
if (place_meeting(x,y+1,oWall)) && (key_jump) {
	vsp = -7
}
// Horizontal Collision
if (place_meeting(x+hsp,y,oWall)) {
	while (!place_meeting(x+sign(hsp),y,oWall)) {
	
	x = x + sign(hsp);
	}
	hsp= 0;
	
}
x = x + hsp

// Vertical Collision
if (place_meeting(x,y+vsp,oWall)) {
	while (!place_meeting(x,y+sign(vsp),oWall)) {
	
	y = y + sign(vsp);
	}
		vsp= 0;
	
}
y = y + vsp;

// Animation

// if there's no collision and one pixel below us (in the air and not touching floor)
if (!place_meeting(x,y+1,oWall)) {
sprite_index = sPlayerR;
image_speed=0;

// if in air show frame 2 (jumping frame) else show frame 1 (landing frame) 
	if (sign(vsp) > 0) image_index =1; else image_index=0;
	

} else {

image_speed=1;

// if on floor and not moving set to original sprite
if (hsp==0) {
sprite_index = sPlayer;


	}

// if running, show running sprite
else {
	sprite_index = sPlayerR; 
	
	}

}

// this flips the sprite if the player is horizontally moving -1 aka the negative way which is what sign gives youj.
if (hsp != 0) image_xscale= sign(hsp);
