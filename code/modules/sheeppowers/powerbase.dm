

//This is the area where the base of abilities will be set up.
//It will work like the skills system, you spend points to get abilities down a tree, for powers.
//You also get a set max stability. Your stability is lowered when you use powers, and recharges after a while when you don't.
//If you use powers when your stability is low, you will do some form of damage to yourself. The damage will be greater if you're at or below 0 stability.

//A few defines to start
/mob/living/carbon/human
	var/psionic_user = 0 //This is a simple check to see if this body can use our wicked powers.
	var/charisma = 0
	var/endurance = 0
	var/powers_set = 0
	var/stability = 150
	var/max_stability = 150
	var/stability_check = 0
	var/power_assigning = 0


/mob/living/carbon/human/proc/psiattatch(obj/item/weapon/W) //We need to name this another proc and call it in the original attackby proc.
	var/psi_ask = ""
	if(istype(W, /obj/item/weapon/psiamp))
		if (psionic_user != 0)
			return
		psi_ask = input(src,"Would you like to accept the psionic amplifier?") in list("Yes", "No")
		switch(psi_ask)
			if ("Yes") //The person accepted
				src.psionic_user = 1 //So we attatch, and they become a psionic!
				src << "\red You feel a horrible pain as the psionic amplifier burrows into your back and attatches itself to your bones!" //Owie
				src.say("*scream")
				src.Weaken(3)
				del(W) //We're done here, let's skedaddle!

			else //If it's not a yes, it's a no.
				src << "\blue The device refuses to connect with your body after a quick scan!"
				return //We don't delete ourself, but we don't continue.

		while (powers_set != 1)
			if (power_assigning != 1)
				power_assignment()

	return


/mob/living/carbon/human/proc/power_assignment()
	power_assigning = 1
	var/power_points = 0
	var/max_power_points = 5
	var/psi_ask = ""
	endurance = 0
	charisma = 0
	src << "\blue You have spent [power_points]/[max_power_points] points."
	src << "\blue The Endurance tree contains: Psionic Shield at tier one, Psionic Kevlar at tier two."
	psi_ask = input(src,"How many points would you like to spend on the Endurance tree?") in list("One", "Two", "Three", "None")
	switch(psi_ask)
		if ("One")
			power_points = (power_points+1)
			if (power_points >= max_power_points)
				src << "\red You have spent too many points!"
				power_assigning = 0
				return
			else
				endurance = 1

		if ("Two")
			power_points = (power_points+2)
			if (power_points >= max_power_points)
				src << "\red You have spent too many points!"
				power_assigning = 0
				return
			else
				endurance = 2

		if ("Three")
			power_points = (power_points+3)
			if (power_points >= max_power_points)
				src << "\red You have spent too many points!"
				power_assigning = 0
				return
			else
				endurance = 3

	src << "\blue You have spent [power_points]/[max_power_points] points."
	src << "\blue The Charisma tree contains: Psionic Tongue at tier one."
	psi_ask = input(src,"How many points would you like to spend on the Charisma tree?") in list("One", "Two", "Three", "None")
	switch(psi_ask)
		if ("One")
			power_points = (power_points+1)
			if (power_points >= max_power_points)
				src << "\red You have spent too many points!"
				power_assigning = 0
				return
			else
				charisma = 1

		if ("Two")
			power_points = (power_points+2)
			if (power_points >= max_power_points)
				src << "\red You have spent too many points!"
				power_assigning = 0
				return
			else
				charisma = 2

		if ("Three")
			power_points = (power_points+3)
			if (power_points >= max_power_points)
				src << "\red You have spent too many points!"
				power_assigning = 0
				return
			else
				charisma = 3


//Add the powers they get from spending skills.
	if (endurance >= 0)
		src.verbs += /mob/living/carbon/human/proc/psishield

	if (endurance >= 1)
		src.verbs += /mob/living/carbon/human/proc/psikevlar

	if (charisma >= 0)
		src.verbs += /mob/living/carbon/human/proc/psitongue

	//Put the variables to say everything is fine in here, then return.
	powers_set = 1
	power_assigning = 0

	return


/mob/living/carbon/human/proc/psi_stability()
	stability_check = 1
	while (stability != max_stability)
		spawn(1)
		stability = (stability + 1)
	stability_check = 0
	return