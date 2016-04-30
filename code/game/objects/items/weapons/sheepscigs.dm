
//Lighters
/obj/item/weapon/lighter/zippo/gold
	name = "golden zippo"
	desc = "A showy lighter with a blue flame."
	icon_state = "zippogold"
	item_state = "zippogold"
	icon_on = "zippogoldon"
	icon_off = "zippogold"


//Cigarettes
/obj/item/clothing/mask/cigarette/piper
	New()
		..()
		reagents.add_reagent("hyperzine", 2)

/obj/item/clothing/mask/cigarette/puffs
	New()
		..()
		reagents.add_reagent("dexalin", 5)

/obj/item/clothing/mask/cigarette/fortyfives
	New()
		..()
		reagents.add_reagent("tramadol", 5)

/obj/item/clothing/mask/cigarette/firelights
	New()
		..()
		reagents.add_reagent("capsaicin", 5)

/obj/item/clothing/mask/cigarette/sleeptights
	New()
		..()
		reagents.add_reagent("stoxin", 5)

/obj/item/clothing/mask/cigarette/gravestones
	New()
		..()
		reagents.add_reagent("ethylredoxrazine", 10)



//Packets
/obj/item/weapon/storage/box/cigs
	name = "cigarette packet"
	desc = "A plain, unmarked cigarette packet."
	icon = 'icons/obj/cigarettes.dmi'
	icon_state = "cigpacket"
	item_state = "cigpacket"
	w_class = 1
	throwforce = 2
	flags = TABLEPASS
	slot_flags = SLOT_BELT|SLOT_EARS
	storage_slots = 6
	can_hold = list("/obj/item/clothing/mask/cigarette",
					"/obj/item/weapon/lighter",
					"/obj/item/weapon/reagent_containers/pill")


/obj/item/weapon/storage/box/cigs/pipers
	name = "Piper's PMU packet"
	desc = "A packet of Piper's Pick Me Ups, perfect for a particularly problematic present."
	icon_state = "PMUpacket"

	New()
		..()
		new /obj/item/clothing/mask/cigarette/piper(src)
		new /obj/item/clothing/mask/cigarette/piper(src)
		new /obj/item/clothing/mask/cigarette/piper(src)
		new /obj/item/clothing/mask/cigarette/piper(src)
		new /obj/item/clothing/mask/cigarette/piper(src)
		new /obj/item/clothing/mask/cigarette/piper(src)

/obj/item/weapon/storage/box/cigs/puffs
	name = "Clear Puffs packet"
	desc = "A packet of Clear Puffs, like sucking a cloud in through a straw."
	icon_state = "Puffspacket"

	New()
		..()
		new /obj/item/clothing/mask/cigarette/puffs(src)
		new /obj/item/clothing/mask/cigarette/puffs(src)
		new /obj/item/clothing/mask/cigarette/puffs(src)
		new /obj/item/clothing/mask/cigarette/puffs(src)
		new /obj/item/clothing/mask/cigarette/puffs(src)
		new /obj/item/clothing/mask/cigarette/puffs(src)

/obj/item/weapon/storage/box/cigs/fortyfives
	name = "Fortyfives Packet"
	desc = "A packet of Fortyfives, these'll ease the pain of a long hard day in Sec."
	icon_state = "FFpacket"

	New()
		..()
		new /obj/item/clothing/mask/cigarette/fortyfives(src)
		new /obj/item/clothing/mask/cigarette/fortyfives(src)
		new /obj/item/clothing/mask/cigarette/fortyfives(src)
		new /obj/item/clothing/mask/cigarette/fortyfives(src)
		new /obj/item/clothing/mask/cigarette/fortyfives(src)
		new /obj/item/clothing/mask/cigarette/fortyfives(src)

/obj/item/weapon/storage/box/cigs/firelights
	name = "Fire Lights packet"
	desc = "A packet of Fire Lights, like a campfire in your mouth!"
	icon_state = "FLpacket"

	New()
		..()
		new /obj/item/clothing/mask/cigarette/firelights(src)
		new /obj/item/clothing/mask/cigarette/firelights(src)
		new /obj/item/clothing/mask/cigarette/firelights(src)
		new /obj/item/clothing/mask/cigarette/firelights(src)
		new /obj/item/clothing/mask/cigarette/firelights(src)
		new /obj/item/clothing/mask/cigarette/firelights(src)

/obj/item/weapon/storage/box/cigs/sleeptights
	name = "Sleeptights packet"
	desc = "A packet of Sleeptights, one puff away from a peaceful nights sleep!"
	icon_state = "Sleeppacket"

	New()
		..()
		new /obj/item/clothing/mask/cigarette/sleeptights(src)
		new /obj/item/clothing/mask/cigarette/sleeptights(src)
		new /obj/item/clothing/mask/cigarette/sleeptights(src)
		new /obj/item/clothing/mask/cigarette/sleeptights(src)
		new /obj/item/clothing/mask/cigarette/sleeptights(src)
		new /obj/item/clothing/mask/cigarette/sleeptights(src)

/obj/item/weapon/storage/box/cigs/gravestones
	name = "Gravestones packet"
	desc = "A packet of Gravestones, famous for bringing you back from the dead."
	icon_state = "Gravepacket"

	New()
		..()
		new /obj/item/clothing/mask/cigarette/gravestones(src)
		new /obj/item/clothing/mask/cigarette/gravestones(src)
		new /obj/item/clothing/mask/cigarette/gravestones(src)
		new /obj/item/clothing/mask/cigarette/gravestones(src)
		new /obj/item/clothing/mask/cigarette/gravestones(src)
		new /obj/item/clothing/mask/cigarette/gravestones(src)