/// @description Insert description here
// You can write your code in this editor
if keyboard_check(ord("W")) = false and keyboard_check(ord("A")) = false and keyboard_check(ord("S")) = false and keyboard_check(ord("D")) = false{
	if sprite_index = spr_phyWalkFwd{
		sprite_index = spr_phyIdle;
	}
	if sprite_index = spr_phyWalkBack{
		sprite_index = spr_phyIdleBack
	}
}

if keyboard_check(ord("W"))= false and keyboard_check(ord("S")) = false{
	phy_speed_y = 0;	
}

if keyboard_check(ord("A"))= false and keyboard_check(ord("D")) = false{
	phy_speed_x = 0;	
}

if keyboard_check(ord("A")){
	phy_speed_x = -1.5;
	
	if sprite_index = spr_phyIdleBack{
		sprite_index =  spr_phyWalkBack
	}
	
	if sprite_index = spr_phyIdle{
		sprite_index =  spr_phyWalkFwd
	}
	
	if image_xscale = -1{
	}
	else{
		image_xscale = -1
	}
}

if keyboard_check(ord("D")){
	phy_speed_x = 1.5
	
	if sprite_index = spr_phyIdleBack{
		sprite_index =  spr_phyWalkBack
	}
	
	if sprite_index = spr_phyIdle{
		sprite_index =  spr_phyWalkFwd
	}
	
	if image_xscale = 1{
	}
	else{
		image_xscale = 1
	}
}

if keyboard_check(ord("W")){
	phy_speed_y = -1.5
	sprite_index = spr_phyWalkBack;
}

if keyboard_check(ord("S")){
	phy_speed_y = 1.5
	sprite_index = spr_phyWalkFwd;
}




