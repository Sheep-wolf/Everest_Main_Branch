
/datum/job/guest
	title = "Guest"
	flag = GUEST
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 10
	spawn_positions = 0
	supervisors = "the law"
	selection_color = "#dddddd"
	access = list()
	minimal_access = list()
	alt_titles = list("Visitor")


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/clothing/under/color/grey(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/device/pda(H), slot_belt)
		if(H.backbag == 1)
			H.equip_to_slot_or_del(new /obj/item/weapon/storage/box/survival(H), slot_r_hand)
		else
			H.equip_to_slot_or_del(new /obj/item/weapon/storage/box/survival(H.back), slot_in_backpack)
		return 1

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/datum/job/resident
	title = "Resident"
	flag = RESIDENT
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 15
	spawn_positions = 0
	supervisors = "the law"
	selection_color = "#dddddd"
	access = list()
	minimal_access = list()
	alt_titles = list()


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/clothing/under/darkred(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/device/pda(H), slot_belt)
		if(H.backbag == 1)
			H.equip_to_slot_or_del(new /obj/item/weapon/storage/box/survival(H), slot_r_hand)
		else
			H.equip_to_slot_or_del(new /obj/item/weapon/storage/box/survival(H.back), slot_in_backpack)
		return 1

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/datum/job/staff
	title = "Staff"
	flag = STAFF
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 15
	spawn_positions = 0
	supervisors = "the law"
	selection_color = "#dddddd"
	access = list(access_hydroponics, access_bar, access_kitchen, access_morgue, access_janitor, access_library)
	minimal_access = list(access_hydroponics, access_bar, access_kitchen, access_morgue, access_janitor, access_library)
	alt_titles = list()


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/clothing/under/color/black(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/device/pda(H), slot_belt)
		if(H.backbag == 1)
			H.equip_to_slot_or_del(new /obj/item/weapon/storage/box/survival(H), slot_r_hand)
		else
			H.equip_to_slot_or_del(new /obj/item/weapon/storage/box/survival(H.back), slot_in_backpack)
		return 1