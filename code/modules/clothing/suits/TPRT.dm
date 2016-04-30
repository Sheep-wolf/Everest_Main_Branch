

/obj/item/clothing/suit/storage/tprt
	name = "TPRT jacket"
	desc = "A jacket with the letters TPRT on the left arm, must stand for Thanos Police Response Team."
	icon_state = "TPRT_jacket"
	item_state = "TPRT_jacket"
	item_color = "TPRT_jacket"
	allowed = list(/obj/item/weapon/tank/emergency_oxygen, /obj/item/device/flashlight,/obj/item/weapon/gun/energy,/obj/item/weapon/gun/projectile,/obj/item/ammo_magazine,/obj/item/ammo_casing,
	/obj/item/weapon/melee/baton,
	/obj/item/weapon/handcuffs,/obj/item/device/detective_scanner,/obj/item/device/taperecorder)
	var/jacket_buttons = 0

	verb/toggle()
		set name = "Toggle Jacket Buttons"
		set category = "Object"
		set src in usr

		if(!usr.canmove || usr.stat || usr.restrained())
			return 0

//		switch(icon_state)
		if(jacket_buttons == 1)
			icon_state = "[item_color]"
			usr << "You button up the jacket."
			jacket_buttons = 0

		else if(jacket_buttons == 0)
			src.icon_state = "[item_color]_open"
			usr << "You unbutton the jacket."
			jacket_buttons = 1

		else
			usr << "You attempt to button-up the velcro on your [src], before promptly realising how retarded you are."
			return
		usr.update_inv_wear_suit()	//so our overlays update

/obj/item/clothing/suit/storage/tprt/suit
	name = "cheap jacket"
	desc = "A cheap looking suit jacket. This one is black."
	icon_state = "TPRT_jacket_1"
	item_state = "TPRT_jacket_1"
	item_color = "TPRT_jacket_1"

/obj/item/clothing/suit/storage/tprt/suit/blue
	desc = "A cheap looking suit jacket. This one is blue."
	icon_state = "TPRT_jacket_2"
	item_state = "TPRT_jacket_2"
	item_color = "TPRT_jacket_2"

/obj/item/clothing/suit/storage/tprt/suit/brown
	desc = "A cheap looking suit jacket. This one is brown."
	icon_state = "TPRT_jacket_3"
	item_state = "TPRT_jacket_3"
	item_color = "TPRT_jacket_3"

/obj/item/clothing/suit/storage/tprt/suit/red
	desc = "A cheap looking suit jacket. This one is red."
	icon_state = "TPRT_jacket_4"
	item_state = "TPRT_jacket_4"
	item_color = "TPRT_jacket_4"

/obj/item/clothing/suit/storage/tprt/suit/green
	desc = "A cheap looking suit jacket. This one is green."
	icon_state = "TPRT_jacket_5"
	item_state = "TPRT_jacket_5"
	item_color = "TPRT_jacket_5"

/obj/item/clothing/suit/storage/tprt/suit/grey
	desc = "A cheap looking suit jacket. This one is grey."
	icon_state = "TPRT_jacket_6"
	item_state = "TPRT_jacket_6"
	item_color = "TPRT_jacket_6"

/obj/item/clothing/suit/armor/tprt
	name = "TPRT armor"
	desc = "An armored suit with the letters TPRT marked on the shoulder guards, must stand for Thanos Police Response Team."
	icon_state = "TPRT_armour"
	item_state = "TPRT_armour"
	blood_overlay_type = "armor"
	armor = list(melee = 60, bullet = 40, laser = 50, energy = 20, bomb = 35, bio = 0, rad = 0)
	body_parts_covered = LOWER_TORSO|LEGS|FEET|ARMS|HANDS

/obj/item/clothing/head/helmet/tprt
	name = "TPRT helmet"
	desc = "It seems like an old model riot helmet, the lack of scratches or damage suggest it was made more recently though."
	icon_state = "TPRT_helmet"
	item_state = "helmet"
	flags = FPRINT|TABLEPASS|HEADCOVERSEYES
	armor = list(melee = 60, bullet = 40, laser = 50, energy = 20, bomb = 35, bio = 0, rad = 0)
	flags_inv = HIDEEARS
	siemens_coefficient = 0.7