//This is for the items that are spawned when a psionic is activated, but that doesn't boost your psionic powers.

/obj/item/clothing/suit/armor/vest/psikev
	name = "Psionic Kevlar"
	desc = "A layer of solid energy."
	icon_state = "psikev"
	item_state = "armor"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|HANDS|FEET|HEAD|LEGS|ARMS
	armor = list(melee = 100, bullet = 100, laser = 100, energy = 100, bomb = 100, bio = 100, rad = 100)

/obj/item/weapon/shield/riot/psishield
	name = "psionic shield"
	desc = "A shield made of focused energy."
	icon_state = "psishield"
	item_state = "psishield"


/obj/item/weapon/shield/riot/psishield/dropped(mob/user as mob)
	user << "\red The shield dissapates!"
	del(src)
	return