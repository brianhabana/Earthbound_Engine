/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(!instance_exists(a)&&self.txtmsg_ok){
	event_perform(ev_other,choose(ev_user1,ev_user1,ev_user1,ev_user1,ev_user2,ev_user3,ev_user4,ev_user4))
	_turn += 1
	txtmsg_ok = false
	global.txtready = false
}