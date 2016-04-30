

/obj/item/weapon/license

	name = "fire-arm license"
	desc = "This grants the holder permission to purchase and own firearms."
	icon = 'icons/obj/card.dmi'
	icon_state = "license_invalid"
	item_color = "license"
	w_class = 2
	slot_flags = SLOT_BELT

	var/stored_name = null

/obj/item/weapon/license/attack_self(mob/user as mob)
	if(!stored_name)
		user << "Waving around a license before swiping an ID would be pretty pointless."
		return
	if(isliving(user))
		user.visible_message("\red [user] displays their firearms license.\nIt reads: [stored_name], Firearms approved.","\red You display your firearms license.\nIt reads: [stored_name], Firearms approved.")

/obj/item/weapon/license/attackby(var/obj/item/O as obj, var/mob/user as mob)

	if(istype(O, /obj/item/weapon/card/id) || istype(O, /obj/item/device/pda))

		var/obj/item/weapon/card/id/id_card = null

		if(istype(O, /obj/item/weapon/card/id))
			id_card = O
		else
			var/obj/item/device/pda/pda = O
			id_card = pda.id


		user << "You imprint your ID details onto the license."
		stored_name = id_card.registered_name
		name = "gun license ([stored_name])"
		desc = "This small card marks [stored_name] as legally approved to carry and own firearms."
		icon_state = "license"
		return
	..()

/obj/item/weapon/license/attack(mob/living/carbon/human/M, mob/living/user)
	if(isliving(user))
		user.visible_message("\red [user] invades [M]'s personal space, thrusting [src] into their face insistently.","\red You invade [M]'s personal space, thrusting [src] into their face insistently.")