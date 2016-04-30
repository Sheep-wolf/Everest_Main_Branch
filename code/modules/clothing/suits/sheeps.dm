

//Platemail/Mandolorian Gear
/obj/item/clothing/suit/armor/platemail
	name = "green platemail"
	desc = "A suit made from some kind of light weight yet durable iron."
	icon_state = "platemail_green"
	item_state = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor = list(melee = 80, bullet = 60, laser = 60, energy = 50, bomb = 50, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/platemail/orange
	name = "orange platemail"
	icon_state = "platemail_orange"

/obj/item/clothing/suit/armor/platemail/red
	name = "red platemail"
	icon_state = "platemail_red"

/obj/item/clothing/suit/armor/platemail/blue
	name = "blue platemail"
	icon_state = "platemail_blue"

/obj/item/clothing/suit/armor/platemail/leader
	name = "black platemail"
	icon_state = "platemail_black"
	armor = list(melee = 80, bullet = 80, laser = 60, energy = 60, bomb = 50, bio = 0, rad = 0)


//A coat with places for armour to be added, I know, but it's fun to code!

/obj/item/clothing/suit/storage/plaincoat
	name = "plain coat"
	desc = "A plain coat. You could probably add some armour plates to it, if you wanted."
	icon_state = "ajacket"
	item_state = "ajacket"
	item_color = "ajacket"
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS

var/armoured = 0

/obj/item/clothing/suit/storage/plaincoat/attackby(var/obj/item/O as obj, var/mob/user as mob)

	if (istype(O, /obj/item/weapon/armourplate/civ))
		if (armoured < 0)
			user << "\red [src] is already armoured."
			return
		else
			armoured = 1
			desc = "A coat with some civilian grade armour."
			icon_state = "[item_color]_1"
			item_state = "[item_color]_1"
			user << "\red You add the plating to the [O] and secure it."
			name = "armoured coat"
			armor = list(melee = 20, bullet = 20, laser = 10, energy = 10, bomb = 0, bio = 0, rad = 0)
			del(O)
			return

	else if (istype(O, /obj/item/weapon/armourplate/sec))
		if (armoured < 0)
			user << "\red [src] is already armoured."
			return
		else
			armoured = 2
			desc = "A coat with some police grade armour."
			icon_state = "[item_color]_2"
			item_state = "[item_color]_2"
			user << "\red You add the plating to the [O] and secure it."
			name = "armoured coat"
			armor = list(melee = 50, bullet = 30, laser = 40, energy = 10, bomb = 20, bio = 0, rad = 0)
			del(O)
			return

	else if (istype(O, /obj/item/weapon/armourplate/military))
		if (armoured < 0)
			user << "\red [src] is already armoured."
			return
		else
			armoured = 3
			desc = "A coat with some military grade armour."
			icon_state = "[item_color]_3"
			item_state = "[item_color]_3"
			user << "\red You add the plating to the [O] and secure it."
			name = "armoured coat"
			armor = list(melee = 60, bullet = 60, laser = 40, energy = 40, bomb = 30, bio = 0, rad = 0)
			del(O)
			return

	else if (istype(O, /obj/item/weapon/screwdriver))
		if (armoured != 0)
			user << "\red The armour plates from the [src] fall to pieces as you take them off!"
			name = "plain coat"
			desc = "A plain coat. You could probably add some armour plates to it, if you wanted."
			icon_state = "[item_color]"
			armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0)
			armoured = 0
			return
		else
			user << "\red The [src] has no armour!"
			return

	return

/obj/item/weapon/armourplate
	name = "armour plating"
	desc = "Wrong thing, try again?"
	icon = 'icons/obj/sheepmisc.dmi'
	icon_state = "armourbox_civ"

/obj/item/weapon/armourplate/civ
	name = "armour box"
	desc = "Some class 3 armour plating, in a neat little box! One time use."

/obj/item/weapon/armourplate/sec
	name = "armour box"
	desc = "Some class 2 armour plating, useful for security! One time use."
	icon_state = "armourbox_sec"

/obj/item/weapon/armourplate/military
	desc = "Some class 1 armour plating, in camo green! One time use."
	icon_state = "armourbox_military"