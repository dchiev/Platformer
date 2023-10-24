/// @description happens before the step or before any frame 
// You can write your code in this editor


x = oPlayer.x;
y = oPlayer.y+5;

// points the sprite where the mouse is at
image_angle = point_direction(x,y,mouse_x,mouse_y)

firingdelay = firingdelay -1;
if (mouse_check_button(mb_left)) && (firingdelay < 0) {
	firingdelay=5;
	with (instance_create_layer(x,y,"Bullet",oBullet)) {
		speed = 25;
		
		//makes bullet fire the same direction of the gun
		direction= other.image_angle;
		image_angle = direction;
	}
}


