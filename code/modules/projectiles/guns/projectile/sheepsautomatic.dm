

/obj/item/weapon/gun/projectile/automatic/mini_smg
	name = "Compact SMG"
	desc = "A Nnif Mark 7 compact machine pistol. Capable of being hidden in a pocket."
	icon_state = "cmp"
	w_class = 2
	max_shells = 8
	caliber = "9mm"
	load_method = 2
	origin_tech = "combat=5;materials=2;syndicate=8"
	ammo_type = "/obj/item/ammo_casing/c9mm/rubber"

	New()
		..()
		empty_mag = new /obj/item/ammo_magazine/mc9mm/empty(src)
		update_icon()
		return

	afterattack(atom/target as mob|obj|turf|area, mob/living/user as mob|obj, flag)
		..()
		if(!loaded.len && empty_mag)
			empty_mag.loc = get_turf(src.loc)
			empty_mag = null
			update_icon()
		return

	isHandgun()
		return 1