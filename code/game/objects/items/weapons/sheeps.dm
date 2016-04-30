
/*
/obj/item/weapon/towel
	name = "towel"
	desc = "A small towel, for drying yourself."
	icon = 'icons/obj/items.dmi'
	icon_state = "towel"
	flags = FPRINT | TABLEPASS| CONDUCT
	slot_flags = SLOT_BELT
	force = 3
	throwforce = 3
	w_class = 2.0
	origin_tech = "materials=1"
	attack_verb = "whipped"

/obj/item/weapon/towel/attack_self(mob/user as mob)
	user << "\blue You dry yourself off."


*/

/obj/item/weapon/silverhammer
	name = "silver hammer"
	desc = "A small silver hammer. Perhaps used to test reflexes?"
	icon = 'icons/obj/weapons.dmi'
	icon_state = "silverhammer"
	flags = FPRINT | TABLEPASS| CONDUCT
	slot_flags = SLOT_BELT
	force = 10
	throwforce = 5
	w_class = 3
	attack_verb = list("bang-banged", "beaten", "bludgeoned", "tapped", "reflexively tested")

/obj/item/weapon/springknife
	name = "spring-knife"
	desc = "A small concealable knife with a trigger spring mechanism."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "springknife"
	item_color = "springknife"
	flags = FPRINT | TABLEPASS| CONDUCT
	slot_flags = SLOT_BELT
	force = 5
	throwforce = 5
	w_class = 2.0
	attack_verb = list("poked", "tapped", "prodded")
var/active = 0

/obj/item/weapon/springknife/attack_self(mob/user as mob)
	if (active == 0)
		user << "\red You flick out the blade on the [src]."
		icon_state = "[item_color]_open"
		active = 1
		force = 17
		throwforce = 10
		sharp = 1
		edge = 1
		attack_verb = list("slashed", "stabbed", "sliced", "diced", "cut")

	else
		user << "\red You put the blade away on the [src]!"
		icon_state = "[item_color]"
		active = 0
		force = 5
		throwforce = 5
		sharp = 0
		edge = 0
		attack_verb = list("poked", "tapped", "prodded")

/obj/item/weapon/springknife/switchblade
	name = "switchblade"
	desc = "A fancy looking switchblade."
	icon_state = "switchblade"
	item_color = "switchblade"