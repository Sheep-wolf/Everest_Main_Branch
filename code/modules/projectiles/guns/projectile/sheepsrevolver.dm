
//Revolvers
/obj/item/weapon/gun/projectile/fourtyfours
	name = ".44 Ramwolf"
	desc = "A 'Ramwolf' model .44 revolver. Manufactured by Blam Co."
	icon = 'icons/obj/guns2.dmi'
	load_method = 0
	icon_state = "44revolver2"
	caliber = ".44"
	ammo_type = "/obj/item/ammo_casing/custom"
	max_shells = 7
	w_class = 3

	isHandgun()
		return 1

/obj/item/weapon/gun/projectile/fourtyfours/snub
	desc = "A snub nosed 'Ramwolf' model .44 revolver. Manufactured by Blam Co."
	icon_state = "44revolver"
	w_class = 2
	max_shells = 6

/obj/item/weapon/gun/projectile/fourtyfours/vamp
	name = "Forgiven"
	ammo_type = "/obj/item/ammo_casing/custom/vamp"

/obj/item/weapon/gun/projectile/fourtyfours/eightshot
	name = "Eighth Order"
	desc = "And The Mother did say, let none live."
	max_shells = 8
	icon_state = "detective3"
	ammo_type = "/obj/item/ammo_casing/custom/vamp"

/obj/item/weapon/gun/projectile/customthirtyeight
	name = "revolver"
	desc = "A customised .38 revolver, made of miss-match parts. Seems it's double action only."
	icon_state = "brick"
	gun_skin = "brick"
	caliber = "38"
	max_shells = 6
	ammo_type = "/obj/item/ammo_casing/c38"
	double_action = 1
	origin_tech = "combat=2;materials=2;engineering=3"

	isHandgun()
		return 1