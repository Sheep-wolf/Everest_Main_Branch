
//Endurance, armour.

/mob/living/carbon/human/proc/psikevlar()
	set category = "Psionics"
	set name = "Kevlar"
	set desc = "Protect yourself with a layer of armour! Warning: Not real."


	if (psionic_user != 1)
		src << "\red You must be a psionic user to do that!"
		return

	if (endurance <= 2)
		src << "\red You don't have the ability to do this!"
		return

	if (wear_suit)
		src << "\red You feel too confined with all this clothing on!"
		return

	if(stat || paralysis || stunned || weakened || restrained() || buckled)
		src << "\red You cannot use psionics in your current state!"
		return

	var/obj/item/clothing/suit/armor/vest/psikev/O = new(src)
	src << "\blue A layer of protection forms around you!"
	equip_to_slot(O, slot_wear_suit)
	O.canremove = 0

	if (endurance == 2)
		spawn(600)
			del(O)
			src << "\red Your psionic kevlar dissappears!"
			update_inv_wear_suit()

	if (endurance == 3)
		spawn(900)
			del(O)
			src << "\red Your psionic kevlar dissappears!"
			update_inv_wear_suit()
	return



	//Healing could spawn an item in the players hand, then they can attack people with it to heal them. It would dissappear if dropped or thrown.

	//Add a check for if the user is wearing a specific type of glove, for amping psionics.


	//Charm (Pheremones?)

	//Instability could cause you to be charmed by your target, instead of the intended effect of you charming them.


	//Psionic Tongue
	//Lets you speak any language.
/mob/living/carbon/human/proc/psitongue()
	set category = "Psionics"
	set name = "Psionic Tongue"
	set desc = "Your psionics could give you a way past language barriers, of all sorts."


	if (psionic_user != 1)
		src << "\red You must be a psionic user to do that!"
		return

	if (charisma <= 1)
		src << "\red You don't have the ability to do this!"
		return

	if(stat || paralysis || stunned || weakened || restrained() || buckled)
		src << "\red You cannot use psionics in your current state!"
		return

	src.add_language("Skrellian")
	src << "\blue Your mouth is filled with a sweet yet metallic taste!"

	if (charisma == 1)
		spawn(300)
			src << "\red The sweet-metal taste leaves your mouth!"
			src.remove_language("Skrellian")

	if (charisma == 2)
		spawn(600)
			src << "\red The sweet-metal taste leaves your mouth!"
			src.remove_language("Skrellian")

	if (charisma == 3)
		spawn(900)
			src << "\red The sweet-metal taste leaves your mouth!"
			src.remove_language("Skrellian")
	return



//Psionic Shield
//Acts like a temporary riot shield.

/mob/living/carbon/human/proc/psishield()
	set category = "Psionics"
	set name = "Shield"
	set desc = "Create a protective and heavy shield out of nothing! Worth its weight in nothing!"
	var/left_or_right = 0


	if (psionic_user != 1)
		src << "\red You must be a psionic user to do that!"
		return

	if (endurance <= 1)
		src << "\red You don't have the ability to do this!"
		return

	if (r_hand)
		if (l_hand)
			src << "\red Your hands are occupied!"
			return
		left_or_right = 1

	if(stat || paralysis || stunned || weakened || restrained() || buckled)
		src << "\red You cannot use psionics in your current state!"
		return

	var/obj/item/weapon/shield/riot/psishield/O = new(src)
	src << "\blue A shield of energy forms on your back!"
	if (left_or_right == 0)
		equip_to_slot(O, slot_r_hand)
	else
		equip_to_slot(O, slot_l_hand)

	if (endurance == 1)
		spawn(300)
			del(O)
			src << "\red Your shield dissapates!"
			update_inv_l_hand()
			update_inv_r_hand()

	if (endurance == 2)
		spawn(600)
			del(O)
			src << "\red Your shield dissapates!"
			update_inv_l_hand()
			update_inv_r_hand()

	if (endurance == 3)
		spawn(900)
			del(O)
			src << "\red Your shield dissapates!"
			update_inv_l_hand()
			update_inv_r_hand()
	return

	// Charisma tree

	// Psionic Tongue, Charm, Dominate.

	// Strength? Intelligence Tree?

	// Flash, Mind Battery, ???

	// Agility Tree

	// Psionic Charge, Phase-walk?, Teleport.

	//Stasis (stuns a target).

	// Material Synthesis
	// Chemical Synthesis