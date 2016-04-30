

//Powtrax projectiles
/obj/item/projectile/bullet/pow
	damage = 50

/obj/item/projectile/bullet/pow/carlos
	damage = 30
	agony = 60
	weaken = 5

/obj/item/projectile/bullet/pow/griff
	damage = 15

	on_hit(var/atom/target, var/blocked = 0)
		var/mob/living/carbon/M = target
		if(istype(target, /mob/living/carbon/))
			M.adjust_fire_stacks(1)
			M.IgniteMob()
		else
			return 1

/obj/item/projectile/bullet/pow/frisbee
	damage = 5

	on_hit(var/atom/target, var/blocked = 0)
		empulse(target, 1, 1)
		return 1

/obj/item/projectile/bullet/pow/milo
	damage = 5

	on_hit(var/atom/target, var/blocked = 0)
		if(istype(target, /mob/living))
			var/mob/living/carbon/human/M = target
			M.hallucination += 20


/obj/item/projectile/bullet/rifle/a792
	damage = 40
	weaken = 2

/obj/item/projectile/bullet/rifle/a556
	damage = 40

/obj/item/projectile/bullet/rifle/a556/vamp
	damage = 30

	on_hit(var/atom/target, var/blocked = 0)
		var/mob/M = target
		if(M.mind.vampire)
			M.Weaken(15)
			M.show_message("\red Your muscles weaken and you flop to the floor, that bullet must have been silver!")
		else
			return 1