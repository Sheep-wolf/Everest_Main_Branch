

//Clarineta 9
//Playing to the tune of death.
/obj/item/weapon/gun/energy/clarineta
	name = "clarineta 9"
	desc = "Playing to the tune of death."
	icon_state = "secguncomp_energy"
	w_class = 2
	item_state = "secguncomp_energy"
	matter = list("metal" = 2000)
	origin_tech = "combat=3;magnets=2;syndicate=5"
	slot_flags = SLOT_BELT
	projectile_type = /obj/item/projectile/energy/bolt/clara
	cell_type = /obj/item/weapon/cell/high
	charge_cost = 500

	isHandgun()
		return 1

/obj/item/weapon/gun/energy/clarineta/silenced
	name = "undertone 6"
	desc = "The sound of silence."
	silenced = 1
	w_class = 3
	item_state = "silenced_energy"
	icon_state = "silenced_energy"
	fire_sound = null

/obj/item/weapon/gun/energy/clarineta/heavy
	w_class = 3
	name = "MN5 compact"
	desc = "A little bit of Monica in my life..."
	item_state = "energysawnoff"
	icon_state = "energysawnoff"
	projectile_type = /obj/item/projectile/energy/bolt/clara/heavy
	charge_cost = 1000
	matter = list("metal" = 4000)
	origin_tech = "combat=5;magnets=2;syndicate=5"

/obj/item/weapon/gun/energy/clarineta/fire
	name = "Matchbox 20"
	desc = "Burn it all down!"
	item_state = "fire_energy"
	icon_state = "fire_energy"
	projectile_type = /obj/item/projectile/energy/bolt/clara/fire

//Fallout themed pistol, would inflict rad damage and light them on fire.
