

//Energy based M1 Garand type rifle, with a scope.

//Vamp Hunter gun first
/obj/item/weapon/gun/projectile/vamphunter
	name = "Xzy"
	desc = "A 5.56mm rifle with a wooden stock and grip."
	icon_state = "vamp-2"
	max_shells = 9
	w_class = 4
	ammo_type = "/obj/item/ammo_casing/a556/vamp"
	caliber = "a556"
	load_method = 0
	fire_delay_unwielded = 10
	fire_delay_wielded = 6

	can_wield()
		return 1

	isHandgun()
		return 0

/obj/item/weapon/gun/projectile/vamphunter/normal
	ammo_type = "/obj/item/ammo_casing/a556"

/obj/item/weapon/gun/projectile/vamphunter/verb/wield()
	set name = "Wield"
	set category = "Object"
	set src in usr

	toggle_wield(usr)


/obj/item/weapon/gun/projectile/rifle/m1garandenergy
	name = "Zwatzker 5"
	desc = "An energy based remake of an M1 Garand, the stock and frame is a polished blue wood, odd."
	icon_state = "m1garand-energy"
	max_shells = 8
	w_class = 4
	ammo_type = "/obj/item/ammo_casing/alight2"
	caliber = "bluelight"
	load_method = 0

	can_wield()
		return 1

	isHandgun()
		return 0

/*
/obj/item/weapon/gun/projectile/rifle/leveraction
	name = "lever-action"
	desc = "A .44 caliber lever-action."
	icon_state = "leveraction"
	item_state = "shotgun"
	max_shells = 6
	w_class = 4.0
	force = 10
	flags =  FPRINT | TABLEPASS | CONDUCT
	slot_flags = SLOT_BACK
	caliber = ".44"
	origin_tech = "combat=3;materials=2"
	ammo_type = "/obj/item/ammo_casing/custom"
	var/recentpump = 0 // to prevent spammage
	var/pumped = 0
	var/obj/item/ammo_casing/current_shell = null

	load_into_chamber()
		if(in_chamber)
			return 1
		return 0

	can_wield()
		return 1

	//Big bit of code

	Fire(atom/target as mob|obj|turf|area, mob/living/user as mob|obj, params, reflex = 0)
		if(!wielded)
			user << "<span class='warning'>You need to use two hands to fire this.</span>"
			return 0
		if(current_shell)
			current_shell.icon_state = current_shell.spent_state
			current_shell.desc += " This one is spent."
		..()

	attack_self(mob/living/user as mob)
		if(recentpump)	return
		leverpump(user)
		recentpump = 1
		spawn(10)
			recentpump = 0
		return

	proc/leverpump(mob/M as mob)
		playsound(M, 'sound/weapons/shotgunpump.ogg', 60, 1)
		pumped = 0
		if(current_shell)//We have a shell in the chamber
			current_shell.loc = get_turf(src)//Eject casing
			current_shell = null
			if(in_chamber)
				in_chamber = null
		if(!loaded.len)	return 0
		var/obj/item/ammo_casing/AC = loaded[1] //load next casing.
		loaded -= AC //Remove casing from loaded list.
		current_shell = AC
		if(AC.BB)
			in_chamber = AC.BB //Load projectile into chamber.
		update_icon()	//I.E. fix the desc
		return 1

*/