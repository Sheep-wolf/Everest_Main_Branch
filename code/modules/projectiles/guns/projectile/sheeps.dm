
/*Weapon Manufacturers
-Swinteer
-Blam Co.
-Anna's private manufactory
*/

//Cell Revolvers
/obj/item/weapon/gun/projectile/cellrevolver/verb/wield()
	set name = "Wield"
	set category = "Object"
	set src in usr

	toggle_wield(usr)

/obj/item/weapon/gun/projectile/cellrevolver
	name = "Led 70"
	desc = "The seventy-th version of the Led model light gun."
	icon = 'icons/obj/guns2.dmi'
	icon_state = "cellrevolver"
	item_state = "gun"
	max_shells = 6
	w_class = 4
	ammo_type = "/obj/item/ammo_casing/alight"
	caliber = "light"
	load_method = 0
	fire_delay_unwielded = 10
	fire_delay_wielded = 6

	can_wield()
		return 1

	isHandgun()
		return 0

/obj/item/weapon/gun/projectile/cellrevolver/compact
	name = "Compact Ted MK3"
	desc = "A compact and deadly cell based light gun."
	icon_state = "detectivelight"
	w_class = 3

	can_wield()
		return 0

	isHandgun()
		return 1

/obj/item/weapon/gun/projectile/cellrevolver/shotgun
	name = "BFS 1985"
	desc = "A classic, seen it? Uses specialised shells."
	icon_state = "energyshotgun"
	load_method = 0
	ammo_type = /obj/item/ammo_casing/energyshell
	caliber = "eshotgun"

	Fire(atom/target as mob|obj|turf|area, mob/living/user as mob|obj, params, reflex = 0)
		if(!wielded)
			user << "<span class='warning'>You need to use two hands to fire this.</span>"
			return 0
		..()

//Anna's main weaponry
/obj/item/weapon/gun/projectile/laserminigun
	name = "Igrane minigun"
	desc = "A minigun designed to fire beams. It uses red cells."
	icon = 'icons/obj/guns2.dmi'
	icon_state = "minigun_laser"
	max_shells = 40
	w_class = 5
	ammo_type = "/obj/item/ammo_casing/alight1"
	caliber = "redlight"
	load_method = 2
	recoil = 0
	fire_delay = 3
	fire_sound = 'sound/weapons/Laser.ogg'
	ejectshell = 0

	can_wield()
		return 1

	isHandgun()
		return 0

	Fire(atom/target as mob|obj|turf|area, mob/living/user as mob|obj, params, reflex = 0)
		if(!wielded)
			user << "<span class='warning'>You need to use two hands to fire this.</span>"
			return 0
		..()

	New()
		..()
		empty_mag = new /obj/item/ammo_magazine/alight2/empty(src)
		update_icon()
		return

/obj/item/weapon/gun/projectile/laserminigun/afterattack(atom/target as mob|obj|turf|area, mob/living/user as mob|obj, flag)
	..()
	if(!loaded.len && empty_mag)
		empty_mag.loc = get_turf(src.loc)
		empty_mag = null
	return

/obj/item/weapon/gun/projectile/laserminigun/verb/wield()
	set name = "Wield"
	set category = "Object"
	set src in usr

	toggle_wield(usr)

/obj/item/weapon/gun/projectile/laserminigun/rifle
	name = "clacker rifle MK1"
	desc = "A standard cell based beam rifle. It uses red cells."
	icon_state = "clonegun"
	max_shells = 10
	w_class = 3
	fire_delay = 6

	action_button_name = "Wield the rifle"

	New()
		..()
		empty_mag = new /obj/item/ammo_magazine/alight3/empty(src)
		update_icon()
		return


//Derringer/Anti-Vamp
/obj/item/weapon/gun/projectile/drei
	name = "drei schuss"
	desc = "A triple barrelled derringer, it is relatively compact. Uses .45 rounds."
	icon = 'icons/obj/guns2.dmi'
	icon_state = "drei"
	load_method = 0
	caliber = ".45"
	ammo_type = "/obj/item/ammo_casing/c45"
	max_shells = 3
	w_class = 2

	isHandgun()
		return 1

/obj/item/weapon/gun/projectile/drei/vamp
	name = "ball schuss"
	desc = "A derringer, modified to fire balls."
	caliber = "odd"
	ammo_type = "/obj/item/ammo_casing/odd"
	ejectshell = 0

/obj/item/weapon/gun/projectile/drei/vamp/special
	name = "Forgotten"


/obj/item/weapon/gun/projectile/ball
	name = "ball pistol"
	desc = "A single shot pistol that fires small metal balls."
	icon = 'icons/obj/guns2.dmi'
	icon_state = "ballgun"
	load_method = 0
	caliber = "odd"
	ammo_type = "obj/item/ammo_casing/ball"
	max_shells = 1
	w_class = 2
	ejectshell = 0

	isHandgun()
		return 1

// Pair of pistols
/obj/item/weapon/gun/projectile/love
	name = "Love"
	desc = "Though Hugs and Kisses are different, they both come from Love."
	icon = 'icons/obj/guns2.dmi'
	icon_state = "love"
	load_method = 0
	caliber = ".45"
	ammo_type = "/obj/item/ammo_casing/c45"
	max_shells = 5
	w_class = 3

	isHandgun()
		return 1

/obj/item/weapon/gun/projectile/love/hugs
	name = "Hugs"
	desc = "The first half of the end of a love note."
	icon_state = "hugs"

/obj/item/weapon/gun/projectile/love/kisses
	name = "Kisses"
	desc = "The second half of the end of a love note."
	icon_state = "kisses"

/obj/item/weapon/gun/projectile/flaregun
	name = "flare gun"
	desc = "A gun that fires flares. A note on the side informs you that it is not a suitable tool for suicide, Brian."
	icon = 'icons/obj/guns2.dmi'
	icon_state = "flaregun"
	load_method = 0
	caliber = "flare"
	slot_flags = SLOT_BELT
	ammo_type = "/obj/item/ammo_casing/flare"
	max_shells = 1
	w_class = 2

	isHandgun()
		return 1

/obj/item/weapon/gun/projectile/blam10
	name = "Bullcharge 10mm"
	desc = "A 'Bullcharge' model 10mm pistol, it'll put the blam back in your work! Uses 10mm rounds."
	icon = 'icons/obj/guns2.dmi'
	icon_state = "blam9_2"
	load_method = 2
	caliber = "10mm"
	ammo_type = "/obj/item/ammo_casing/a10"
	max_shells = 8
	w_class = 3

	isHandgun()
		return 1

	New()
		..()
		empty_mag = new /obj/item/ammo_magazine/a10mmsmall/empty(src)
		update_icon()
		return

/obj/item/weapon/gun/projectile/blam10/afterattack(atom/target as mob|obj|turf|area, mob/living/user as mob|obj, flag)
	..()
	if(!loaded.len && empty_mag)
		empty_mag.loc = get_turf(src.loc)
		empty_mag = null
	return

//Powertrax Model revolvers (should have a variety of different ammo types.
/obj/item/weapon/gun/projectile/pow
	name = "Powtrax L"
	desc = "A Powtrax model pistol, this one can hold A single round."
	icon_state = "powtrax1"
	caliber = "pow"
	ammo_type = /obj/item/ammo_casing/pow
	max_shells = 1
	w_class = 2

	isHandgun()
		return 1

/obj/item/weapon/gun/projectile/pow/medium
	name = "Powtrax XL"
	desc = "A Powtrax model pistol, this one can hold four rounds."
	icon_state = "powtrax"
	w_class = 3
	max_shells = 4

/obj/item/weapon/gun/projectile/pow/large
	name = "Powtrax XXL"
	desc = "A Powtrax model pistol, this one can hold eight rounds."
	icon_state = "powtrax2"
	w_class = 3
	max_shells = 8


//STG 44
/obj/item/weapon/gun/projectile/automatic/stg44
	name = "StG 44"
	desc = "A re-make of a very early machine gun. Uses 7.92mm ammo."
	icon_state = "stg44"
	item_state = "stg44"
	w_class = 3
	force = 10
	slot_flags = SLOT_BACK
	max_shells = 30
	caliber = "7.92mm"
	origin_tech = "combat=8;materials=6"
	slot_flags = SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a792
	fire_sound = 'sound/weapons/Gunshot_smg.ogg'
	load_method = 2

	can_wield()
		return 1

	isHandgun()
		return 0

	Fire(atom/target as mob|obj|turf|area, mob/living/user as mob|obj, params, reflex = 0)
		if(!wielded)
			user << "<span class='warning'>You need to use two hands to fire this.</span>"
			return 0
		..()

	New()
		..()
		empty_mag = new /obj/item/ammo_magazine/m792/empty(src)
		update_icon()
		return

/obj/item/weapon/gun/projectile/automatic/stg44/afterattack(atom/target as mob|obj|turf|area, mob/living/user as mob|obj, flag)
	..()
	if(!loaded.len && empty_mag)
		empty_mag.loc = get_turf(src.loc)
		empty_mag = null
	return

/obj/item/weapon/gun/projectile/automatic/stg44/verb/wield()
	set name = "Wield"
	set category = "Object"
	set src in usr

	toggle_wield(usr)


//More of Anna's Weapons
/obj/item/weapon/gun/projectile/automatic/mini_uzi/clone
	name = "SX-60 SMG"
	desc = "A energy based submachine gun. Uses blue cells."
	icon_state = "clonegun_2"
	caliber = "bluelight"
	max_shells = 20
	load_method = 2
	ammo_type = /obj/item/ammo_casing/alight2
	fire_delay_unwielded = 8
	fire_delay_wielded = 0

	can_wield()
		return 1

	New()
		..()
		empty_mag = new /obj/item/ammo_magazine/alightsmg/empty(src)
		update_icon()
		return

/obj/item/weapon/gun/projectile/automatic/mini_uzi/clone/afterattack(atom/target as mob|obj|turf|area, mob/living/user as mob|obj, flag)
	..()
	if(!loaded.len && empty_mag)
		empty_mag.loc = get_turf(src.loc)
		empty_mag = null
	return

/obj/item/weapon/gun/projectile/automatic/mini_uzi/clone/verb/wield()
	set name = "Wield"
	set category = "Object"
	set src in usr

	toggle_wield(usr)

//Rifles
/obj/item/weapon/gun/projectile/rifle
	name = "Don't Use This"
	desc = "Oh you little fuck bucket..."
	icon_state = "22rifle_scoped"
	item_state = "dshotgun"

	Fire(atom/target as mob|obj|turf|area, mob/living/user as mob|obj, params, reflex = 0)
		if(!wielded)
			user << "<span class='warning'>You need to use two hands to fire this.</span>"
			return 0
		..()

	can_wield()
		return 1

	isHandgun()
		return 0

/obj/item/weapon/gun/projectile/rifle/verb/wield()
	set name = "Wield"
	set category = "Object"
	set src in usr

	toggle_wield(usr)

/obj/item/weapon/gun/projectile/rifle/twentytwo
	name = "scoped .22 rifle"
	desc = "A 'Plinker' model rifle, from Swinteer Weaponry. Uses .22 rounds."
	icon = 'icons/obj/guns2.dmi'
	icon_state = "22rifle_scoped"
	item_state = "dshotgun"
	w_class = 4
	force = 10
	caliber = ".22"
	origin_tech = "combat=6;materials=3"
	ammo_type = "/obj/item/ammo_casing/a22"
	fire_sound = 'sound/weapons/Gunshot.ogg'
	slot_flags = SLOT_BACK
	load_method = 2
	silenced = 1
	accuracy = -150
	fire_delay_wielded = 15
	fire_delay_unwielded = 100
	zoomdevicename = "sniper scope"
	New()
		..()
		empty_mag = new /obj/item/ammo_magazine/c22/empty(src)
		update_icon()
		return

/obj/item/weapon/gun/projectile/rifle/twentytwo/afterattack(atom/target as mob|obj|turf|area, mob/living/user as mob|obj, flag)
	..()
	if(!loaded.len && empty_mag)
		empty_mag.loc = get_turf(src.loc)
		empty_mag = null
	return

/obj/item/weapon/gun/projectile/rifle/twentytwo/verb/scope()
	set category = "Object"
	set name = "Use Scope"
	set popup_menu = 1

	zoom()

/obj/item/weapon/gun/projectile/rifle/twentytwo/ready_to_fire()
	if(!zoom)
		return 0
	if(world.time >= last_fired + fire_delay)
		last_fired = world.time
		return 1
	else
		return 0

/obj/item/weapon/gun/projectile/rifle/mis556
	name = "sentaline rifle"
	desc = "An early model sentaline rifle, made by Swinteer Weaponry. Uses armor piercing 5.56mm rounds."
	icon = 'icons/obj/guns2.dmi'
	icon_state = "556rifle"
	item_state = "dshotgun"
	w_class = 4
	force = 10
	caliber = "a556"
	origin_tech = "combat=6;materials=3"
	ammo_type = "/obj/item/ammo_casing/a556"
	fire_sound = 'sound/weapons/Gunshot.ogg'
	slot_flags = SLOT_BACK
	load_method = 2
	New()
		..()
		empty_mag = new /obj/item/ammo_magazine/a556/empty(src)
		update_icon()
		return

/obj/item/weapon/gun/projectile/rifle/mis556/afterattack(atom/target as mob|obj|turf|area, mob/living/user as mob|obj, flag)
	..()
	if(!loaded.len && empty_mag)
		empty_mag.loc = get_turf(src.loc)
		empty_mag = null
	return


/obj/item/weapon/gun/projectile/rifle/putsky
	name = "putsky rifle"
	desc = "A simple, single shot hunting rifle, made by Swinteer Weaponry. Uses 5.56mm rounds."
	icon = 'icons/obj/guns2.dmi'
	load_method = 0
	icon_state = "556rifle-e"
	item_state = "dshotgun"
	caliber = "a556"
	ammo_type = "/obj/item/ammo_casing/a556"
	max_shells = 1
	w_class = 4
	slot_flags = SLOT_BACK

//name a gun Xzy
//make the damn squid race.