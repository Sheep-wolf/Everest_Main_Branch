

/obj/item/clothing/mask/gas/custom
	name = "gasmask"
	desc = "A gasmask with two filters on the side."
	icon_state = "gas_alter"
	item_state = "gas_alter"
	item_color = "gas_alter"

/obj/item/clothing/mask/gas/custom/attackby(var/obj/item/O as obj, var/mob/user as mob)

	if (istype(O, /obj/item/weapon/spraypaint/red))
		icon_state = "[item_color]_red1"
		item_state = "[item_color]_red1"
		return

	else if (istype(O, /obj/item/weapon/spraypaint/green))
		icon_state = "[item_color]_green"
		item_state = "[item_color]_green"
		return

	else if (istype(O, /obj/item/weapon/spraypaint/blue))
		icon_state = "[item_color]_blue"
		item_state = "[item_color]_blue"
		return

	else if (istype(O, /obj/item/weapon/spraypaint/yellow))
		icon_state = "[item_color]_yellow"
		item_state = "[item_color]_yellow"
		return

	else if (istype(O, /obj/item/weapon/spraypaint/rainbow))
		icon_state = "[item_color]_rainbow"
		item_state = "[item_color]_rainbow"
		return

	else
		return
	return


/obj/item/clothing/mask/gas/custom/red
	name = "gasmask"
	desc = "A gasmask with two filters on the side."
	icon_state = "gas_alter_red1"
	item_state = "gas_alter_red1"
	item_color = "gas_alter"

/obj/item/clothing/mask/gas/custom/green
	name = "gasmask"
	desc = "A gasmask with two filters on the side."
	icon_state = "gas_alter_green"
	item_state = "gas_alter_green"
	item_color = "gas_alter"

/obj/item/clothing/mask/gas/custom/blue
	name = "gasmask"
	desc = "A gasmask with two filters on the side."
	icon_state = "gas_alter_blue"
	item_state = "gas_alter_blue"
	item_color = "gas_alter"

/obj/item/clothing/mask/gas/custom/yellow
	name = "gasmask"
	desc = "A gasmask with two filters on the side."
	icon_state = "gas_alter_yellow"
	item_state = "gas_alter_yellow"
	item_color = "gas_alter"

/obj/item/clothing/mask/gas/pilotlight
	name = "modified gasmask"
	desc = "A heavily modified gasmask, it seems quite well made."
	icon_state = "gas_alter_black"
	item_state = "gas_alter_black"
	item_color = "gas_alter"



/////////////////////////////////////////////////Masks//////////////////////////////////////////////////////////////////////////////////////
/obj/item/clothing/mask/gas/oddmasks
	name = "blank mask"
	desc = "A plain, unpainted mask."

/obj/item/clothing/mask/gas/oddmasks/comedy
	name = "Ruination"
	desc = "A mask with a sadistic looking green smiley face on it."
	icon_state = "comedy"
	item_state = "comedy"

/obj/item/clothing/mask/gas/oddmasks/tragedy
	name = "Regret"
	desc = "A mask with a frowning blood red face on it."
	icon_state = "tragedy"
	item_state = "tragedy"

/obj/item/clothing/mask/gas/oddmasks/turmoil
	name = "Turmoil"
	desc = "A mask that seems to be made of two different masks fused together."
	icon_state = "turmoil"
	item_state = "turmoil"

