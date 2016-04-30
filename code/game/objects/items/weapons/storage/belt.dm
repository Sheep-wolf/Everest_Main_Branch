/obj/item/weapon/storage/belt
	name = "belt"
	desc = "Can hold various things."
	icon = 'icons/obj/clothing/belts.dmi'
	icon_state = "utilitybelt"
	item_state = "utility"
	flags = FPRINT | TABLEPASS
	slot_flags = SLOT_BELT
	attack_verb = list("whipped", "lashed", "disciplined")

/obj/item/weapon/storage/belt/utility
	name = "tool-belt" //Carn: utility belt is nicer, but it bamboozles the text parsing.
	desc = "Can hold various tools."
	icon_state = "utilitybelt"
	item_state = "utility"
	can_hold = list(
		"/obj/item/weapon/crowbar",
		"/obj/item/weapon/screwdriver",
		"/obj/item/weapon/weldingtool",
		"/obj/item/weapon/wirecutters",
		"/obj/item/weapon/wrench",
		"/obj/item/device/multitool",
		"/obj/item/device/flashlight",
		"/obj/item/weapon/cable_coil",
		"/obj/item/device/t_scanner",
		"/obj/item/device/analyzer",
		"/obj/item/taperoll/engineering")


/obj/item/weapon/storage/belt/utility/full/New()
	..()
	new /obj/item/weapon/screwdriver(src)
	new /obj/item/weapon/wrench(src)
	new /obj/item/weapon/weldingtool(src)
	new /obj/item/weapon/crowbar(src)
	new /obj/item/weapon/wirecutters(src)
	new /obj/item/weapon/cable_coil(src,30,pick("red","yellow","orange"))


/obj/item/weapon/storage/belt/utility/atmostech/New()
	..()
	new /obj/item/weapon/screwdriver(src)
	new /obj/item/weapon/wrench(src)
	new /obj/item/weapon/weldingtool(src)
	new /obj/item/weapon/crowbar(src)
	new /obj/item/weapon/wirecutters(src)
	new /obj/item/device/t_scanner(src)



/obj/item/weapon/storage/belt/medical
	name = "medical belt"
	desc = "Can hold various medical equipment."
	icon_state = "medicalbelt"
	item_state = "medical"
	can_hold = list(
		"/obj/item/device/healthanalyzer",
		"/obj/item/weapon/dnainjector",
		"/obj/item/weapon/reagent_containers/dropper",
		"/obj/item/weapon/reagent_containers/glass/beaker",
		"/obj/item/weapon/reagent_containers/glass/bottle",
		"/obj/item/weapon/reagent_containers/pill",
		"/obj/item/weapon/reagent_containers/syringe",
		"/obj/item/weapon/reagent_containers/glass/dispenser",
		"/obj/item/weapon/lighter/zippo",
		"/obj/item/weapon/storage/fancy/cigarettes",
		"/obj/item/weapon/storage/pill_bottle",
		"/obj/item/stack/medical",
		"/obj/item/device/flashlight/pen",
		"/obj/item/clothing/mask/surgical",
		"/obj/item/clothing/gloves/latex",
	        "/obj/item/weapon/reagent_containers/hypospray"
	)


/obj/item/weapon/storage/belt/security
	name = "security belt"
	desc = "Can hold security gear like handcuffs and flashes."
	icon_state = "securitybelt"
	item_state = "security"//Could likely use a better one.
	storage_slots = 7
	max_w_class = 3
	max_combined_w_class = 21
	can_hold = list(
		"/obj/item/weapon/grenade/flashbang",
		"/obj/item/weapon/reagent_containers/spray/pepper",
		"/obj/item/weapon/handcuffs",
		"/obj/item/device/flash",
		"/obj/item/clothing/glasses",
		"/obj/item/ammo_casing/shotgun",
		"/obj/item/ammo_magazine",
		"/obj/item/weapon/reagent_containers/food/snacks/donut/normal",
		"/obj/item/weapon/reagent_containers/food/snacks/donut/jelly",
		"/obj/item/weapon/melee/baton",
		"/obj/item/weapon/gun/energy/taser",
		"/obj/item/weapon/lighter/zippo",
		"/obj/item/weapon/cigpacket",
		"/obj/item/clothing/glasses/hud/security",
		"/obj/item/device/flashlight",
		"/obj/item/device/pda",
		"/obj/item/device/radio/headset",
		"/obj/item/weapon/melee",
		"/obj/item/taperoll/police",
		"/obj/item/weapon/gun/energy/taser",
		"/obj/item/weapon/grenade/chem_grenade",
		"/obj/item/weapon/grenade/empgrenade"
		)

/obj/item/weapon/storage/belt/soulstone
	name = "soul stone belt"
	desc = "Designed for ease of access to the shards during a fight, as to not let a single enemy spirit slip away"
	icon_state = "soulstonebelt"
	item_state = "soulstonebelt"
	storage_slots = 6
	can_hold = list(
		"/obj/item/device/soulstone"
		)

/obj/item/weapon/storage/belt/soulstone/full/New()
	..()
	new /obj/item/device/soulstone(src)
	new /obj/item/device/soulstone(src)
	new /obj/item/device/soulstone(src)
	new /obj/item/device/soulstone(src)
	new /obj/item/device/soulstone(src)
	new /obj/item/device/soulstone(src)


/obj/item/weapon/storage/belt/champion
	name = "championship belt"
	desc = "Proves to the world that you are the strongest!"
	icon_state = "championbelt"
	item_state = "champion"
	storage_slots = 1
	can_hold = list(
		"/obj/item/clothing/mask/luchador"
		)

/obj/item/weapon/storage/belt/security/tactical
	name = "combat belt"
	desc = "Can hold security gear like handcuffs and flashes, with more pouches for more storage."
	icon_state = "swatbelt"
	item_state = "swatbelt"
	storage_slots = 9
	max_w_class = 3
	max_combined_w_class = 21
	can_hold = list(
		"/obj/item/weapon/grenade/flashbang",
		"/obj/item/weapon/reagent_containers/spray/pepper",
		"/obj/item/weapon/handcuffs",
		"/obj/item/device/flash",
		"/obj/item/clothing/glasses",
		"/obj/item/ammo_casing/shotgun",
		"/obj/item/ammo_magazine",
		"/obj/item/weapon/reagent_containers/food/snacks/donut/normal",
		"/obj/item/weapon/reagent_containers/food/snacks/donut/jelly",
		"/obj/item/weapon/melee/baton",
		"/obj/item/weapon/gun/energy/taser",
		"/obj/item/weapon/lighter/zippo",
		"/obj/item/weapon/cigpacket",
		"/obj/item/clothing/glasses/hud/security",
		"/obj/item/device/flashlight",
		"/obj/item/device/pda",
		"/obj/item/device/radio/headset",
		"/obj/item/weapon/melee"
		)

/obj/item/weapon/storage/belt/military
	name = "military belt"
	desc = "A syndicate belt designed to be used by boarding parties. Its style is modeled after the hardsuits they wear."
	icon_state = "militarybelt"
	item_state = "militarybelt"
	storage_slots = 7
	max_w_class = 3
	max_combined_w_class = 21
	can_hold = list(
		"/obj/item/weapon/grenade",
		"/obj/item/weapon/handcuffs",
		"/obj/item/device/flash",
		"/obj/item/clothing/glasses",
		"/obj/item/ammo_casing/shotgun",
		"/obj/item/ammo_magazine",
		"/obj/item/weapon/melee/baton",
		"/obj/item/device/flashlight",
		"/obj/item/device/pda",
		"/obj/item/device/radio/headset",
		"/obj/item/weapon/melee/energy/sword",
		"/obj/item/weapon/shield/energy",
		"/obj/item/weapon/pinpointer",
		)

/obj/item/weapon/storage/belt/janitor
	name = "janibelt"
	desc = "A belt used to hold most janitorial supplies."
	icon_state = "janibelt"
	item_state = "janibelt"
	storage_slots = 6
	max_w_class = 4 // Set to this so the light replacer can fit.
	can_hold = list(
		"/obj/item/weapon/grenade/chem_grenade/cleaner",
		"/obj/item/device/lightreplacer",
		"/obj/item/device/flashlight",
		"/obj/item/weapon/reagent_containers/spray",
		"/obj/item/weapon/soap",
		"/obj/item/weapon/storage/bag/trash"
		)

/obj/item/weapon/storage/belt/ammo
	name = "ammo belt"
	desc = "A storage place for ammo."
	icon_state = "utilitybelt"
	item_state = "utility"
	storage_slots = 9
	max_w_class = 3
	max_combined_w_class = 21
	can_hold = list(
		"/obj/item/weapon/grenade",
		"/obj/item/ammo_casing/shotgun",
		"/obj/item/ammo_magazine",
		"/obj/item/weapon/lighter",
		"/obj/item/weapon/handcuffs",
		"/obj/item/ammo_casing/custom"
		)

/obj/item/weapon/storage/belt/ammo/full/New()
	..()
	new /obj/item/ammo_casing/custom(src)
	new /obj/item/ammo_casing/custom(src)
	new /obj/item/ammo_casing/custom(src)
	new /obj/item/ammo_casing/custom(src)
	new /obj/item/ammo_casing/custom(src)
	new /obj/item/ammo_casing/custom(src)
	new /obj/item/ammo_casing/custom(src)
	new /obj/item/ammo_casing/custom(src)
	new /obj/item/ammo_casing/custom(src)

/obj/item/weapon/storage/belt/ammo/tex
	name = "Tex's belt"
	desc = "Tex's personal ammo belt."
	New()
		..()
		new /obj/item/ammo_casing/custom/highimpact(src)
		new /obj/item/ammo_casing/custom/highimpact(src)
		new /obj/item/ammo_casing/custom/incendiary(src)
		new /obj/item/ammo_casing/custom/incendiary(src)
		new /obj/item/ammo_casing/custom/emp(src)
		new /obj/item/ammo_casing/custom/emp(src)
		new /obj/item/ammo_casing/custom/highimpact(src)
		new /obj/item/ammo_casing/custom/highimpact(src)
		new /obj/item/ammo_casing/custom/explosive(src)

/obj/item/weapon/storage/belt/medical/surgery
	name = "surgical belt"
	desc = "Can hold various surgical equipment."
	icon_state = "surgerybelt"
	item_state = "surgical"
	can_hold = list(
		"/obj/item/device/healthanalyzer",
		"/obj/item/weapon/dnainjector",
		"/obj/item/weapon/reagent_containers/dropper",
		"/obj/item/weapon/reagent_containers/glass/beaker",
		"/obj/item/weapon/reagent_containers/glass/bottle",
		"/obj/item/weapon/reagent_containers/pill",
		"/obj/item/weapon/reagent_containers/syringe",
		"/obj/item/weapon/lighter",
		"/obj/item/weapon/storage/fancy/cigarettes",
		"/obj/item/weapon/storage/pill_bottle",
		"/obj/item/stack/medical",
		"/obj/item/device/flashlight/pen",
		"/obj/item/clothing/mask/surgical",
		"/obj/item/clothing/gloves/latex",
		"/obj/item/weapon/reagent_containers/hypospray",
		"/obj/item/weapon/bonesetter",
		"/obj/item/weapon/cautery",
		"/obj/item/weapon/circular_saw",
		"/obj/item/weapon/hemostat",
		"/obj/item/weapon/retractor",
		"/obj/item/weapon/scalpel",
		"/obj/item/weapon/surgicaldrill",
		"/obj/item/weapon/bonegel",
		"/obj/item/weapon/FixOVein"
		)

	New()
		..()
		new /obj/item/weapon/bonesetter(src)
		new /obj/item/weapon/cautery(src)
		new /obj/item/weapon/circular_saw(src)
		new /obj/item/weapon/hemostat(src)
		new /obj/item/weapon/retractor(src)
		new /obj/item/weapon/scalpel(src)
		new /obj/item/weapon/surgicaldrill(src)
		new /obj/item/weapon/bonegel(src)
		new /obj/item/weapon/FixOVein(src)
		new /obj/item/stack/medical/advanced/bruise_pack(src)
		new /obj/item/device/healthanalyzer(src)

/obj/item/weapon/storage/belt/stormtrooper
	name = "clonetrooper belt"
	desc = "A white belt designed to hold a gear."
	icon_state = "clonebelt"
	item_state = "clonebelt"
	storage_slots = 9
	max_w_class = 3
	max_combined_w_class = 21

	can_hold = list(
		"/obj/item/weapon/grenade",
		"/obj/item/ammo_casing/shotgun",
		"/obj/item/ammo_magazine",
		"/obj/item/weapon/lighter",
		"/obj/item/weapon/handcuffs",
		"/obj/item/ammo_casing/custom",
		"/obj/item/weapon/melee",
		"/obj/item/weapon/hatchet",
		"/obj/item/device/flashlight",
		"/obj/item/weapon/gun/projectile",
		"/obj/item/weapon/gun/energy",
		"/obj/item/device/healthanalyzer",
		"/obj/item/weapon/storage/fancy/cigarettes",
		"/obj/item/clothing/gloves",
		"/obj/item/weapon/cell",
		"/obj/item/weapon/storage/pill_bottle",
		"/obj/item/stack/medical",
		"/obj/item/weapon/reagent_containers/glass/bottle",
		"/obj/item/weapon/reagent_containers/syringe",
		"/obj/item/weapon/wirecutters",
		"/obj/item/weapon/crowbar",
		"/obj/item/weapon/weldingtool",
		"/obj/item/weapon/wrench",
		"/obj/item/weapon/screwdriver",
		"/obj/item/device/multitool"
		)

/obj/item/weapon/storage/belt/stormtrooper/shotgunner
	name = "Shotgunner"
	desc = "A clonetrooper belt with shotgunner supplies."

	New()
		..()
		new /obj/item/weapon/gun/projectile/cellrevolver/compact(src)
		new /obj/item/weapon/shield/energy(src)
		new /obj/item/ammo_casing/energyshell(src)
		new /obj/item/ammo_casing/energyshell(src)
		new /obj/item/ammo_casing/energyshell(src)
		new /obj/item/ammo_casing/energyshell(src)
		new /obj/item/weapon/implanter/adrenalin(src)

/obj/item/weapon/storage/belt/stormtrooper/sniper
	name = "Sniper"
	desc = "A clonetrooper belt with sniper supplies."

	New()
		..()
		new /obj/item/weapon/gun/projectile/cellrevolver/compact(src)
		new /obj/item/ammo_magazine/slight6(src)
		new /obj/item/ammo_magazine/slight6(src)
		new /obj/item/device/binoculars(src)
		new /obj/item/clothing/glasses/night(src)
		new /obj/item/weapon/hatchet(src)

/obj/item/weapon/storage/belt/stormtrooper/spy
	name = "Spy"
	desc = "A clonetrooper belt with espionage supplies."

	New()
		..()
		new /obj/item/weapon/cloaking_device(src)
		new /obj/item/weapon/lighter/zippo(src)
		new /obj/item/weapon/gun/energy/clarineta/silenced(src)
		new /obj/item/weapon/storage/fancy/cigarettes(src)
		new /obj/item/weapon/handcuffs/ziptie(src)


/obj/item/weapon/storage/belt/stormtrooper/support
	name = "Support"
	desc = "A clonetrooper belt with support supplies."

	New()
		..()
		new /obj/item/ammo_magazine/slight6(src)
		new /obj/item/ammo_magazine/slight6(src)
		new /obj/item/ammo_magazine/slight6(src)
		new /obj/item/ammo_magazine/alight3(src)
		new /obj/item/ammo_magazine/alight3(src)
		new /obj/item/ammo_magazine/alightsmg(src)
		new /obj/item/ammo_magazine/alightsmg(src)
		new /obj/item/ammo_magazine/alight2(src)
		new /obj/item/ammo_magazine/alight2(src)

/obj/item/weapon/storage/belt/stormtrooper/command
	name = "Command"
	desc = "A clonetrooper belt with command supplies."

	New()
		..()
		new /obj/item/device/radio(src)
		new /obj/item/device/taperecorder(src)
		new /obj/item/device/binoculars(src)
		new /obj/item/weapon/pen(src)
		new /obj/item/weapon/gun/projectile/cellrevolver/compact(src)
		new /obj/item/device/flashlight/pen(src)

/obj/item/weapon/storage/belt/stormtrooper/demo
	name = "Demolitions"
	desc = "A clonetrooper belt with explosives...uh oh..."

	New()
		..()
		new /obj/item/weapon/plastique(src)
		new /obj/item/weapon/plastique(src)
		new /obj/item/weapon/grenade/chem_grenade/metalfoam(src)
		new /obj/item/weapon/grenade/chem_grenade/incendiary(src)
		new /obj/item/weapon/grenade(src)
		new /obj/item/weapon/grenade(src)
		new /obj/item/weapon/grenade/flashbang(src)
		new /obj/item/weapon/grenade/flashbang(src)

/obj/item/weapon/storage/belt/stormtrooper/engineer
	name = "Engineering"
	desc = "A clonetrooper belt with engineering supplies."

	New()
		..()
		new /obj/item/weapon/screwdriver(src)
		new /obj/item/weapon/wrench(src)
		new /obj/item/weapon/weldingtool(src)
		new /obj/item/weapon/crowbar(src)
		new /obj/item/weapon/wirecutters(src)
		new /obj/item/weapon/grenade/empgrenade(src)

/obj/item/weapon/storage/belt/stormtrooper/medical
	name = "Field Medical"
	desc = "A clonetrooper belt with medical supplies."

	New()
		..()
		new /obj/item/stack/medical/advanced/bruise_pack(src)
		new /obj/item/stack/medical/advanced/bruise_pack(src)
		new /obj/item/stack/medical/advanced/ointment(src)
		new /obj/item/stack/medical/advanced/ointment(src)
		new /obj/item/stack/medical/splint(src)
		new /obj/item/weapon/storage/pill_bottle/tramadol(src)
		new /obj/item/device/healthanalyzer(src)

/obj/item/weapon/storage/belt/stormtrooper/ion
	name = "Anti-Vehicle"
	desc = "A clonetrooper belt with supplies for dealing with mechs and other vehicles."

	New()
		..()
		new /obj/item/weapon/grenade/empgrenade(src)
		new /obj/item/weapon/grenade/empgrenade(src)
		new /obj/item/weapon/grenade/empgrenade(src)


/obj/item/weapon/storage/belt/stormtrooper/heavy
	name = "Heavy-Weapons"
	desc = "A clonetrooper belt with supplies for heavy-weapons users."

	New()
		..()
		new /obj/item/weapon/reagent_containers/food/drinks/bottle/orangejuice(src)
		new /obj/item/weapon/reagent_containers/food/snacks/cookie(src)
		new /obj/item/ammo_magazine/alight2(src)

//To Do
//Expand these out a bit, and add one for the vampire hunters too.

/obj/item/weapon/storage/belt/gardening
	name = "gardening belt"
	desc = "A belt to hold those tools while you make a lovely floral bouquet!"
	icon_state = "swatbelt"
	item_state = "swatbelt"

	can_hold = list(
		"/obj/item/weapon/hatchet",
		"/obj/item/weapon/reagent_containers/glass/fertilizer",
		"/obj/item/weedkiller",
		"/obj/item/weapon/minihoe",
		"/obj/item/weapon/plantspray/pests",
		"/obj/item/device/analyzer/plant_analyzer",
		"/obj/item/weapon/wirecutters/clippers"
		)
