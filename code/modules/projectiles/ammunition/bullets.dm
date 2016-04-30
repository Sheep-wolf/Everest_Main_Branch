/obj/item/ammo_casing/a357
	desc = "A .357 bullet casing."
	caliber = "357"
	projectile_type = "/obj/item/projectile/bullet"

/obj/item/ammo_casing/a50
	desc = "A .50AE bullet casing."
	caliber = ".50"
	projectile_type = "/obj/item/projectile/bullet"

/obj/item/ammo_casing/a418
	desc = "A .418 bullet casing."
	caliber = "357"
	projectile_type = "/obj/item/projectile/bullet/suffocationbullet"


/obj/item/ammo_casing/a75
	desc = "A .75 bullet casing."
	caliber = "75"
	projectile_type = "/obj/item/projectile/bullet/gyro"


/obj/item/ammo_casing/a666
	desc = "A .666 bullet casing."
	caliber = "357"
	projectile_type = "/obj/item/projectile/bullet/cyanideround"


/obj/item/ammo_casing/c38
	desc = "A .38 bullet casing."
	caliber = "38"
	projectile_type = "/obj/item/projectile/bullet/midbullet2"

/obj/item/ammo_casing/c38r
	desc = "A .38 rubber bullet casing."
	caliber = "38"
	projectile_type = "/obj/item/projectile/bullet/weakbullet/rubber"

/obj/item/ammo_casing/c9mm
	desc = "A 9mm bullet casing."
	caliber = "9mm"
	projectile_type = "/obj/item/projectile/bullet/midbullet2"

/obj/item/ammo_casing/c9mm/rubber
	desc = "A 9mm rubber bullet casing."
	projectile_type = "/obj/item/projectile/bullet/weakbullet/rubber"

/* do this later
/obj/item/ammo_casing/c9mmsilver
	desc = "A silver 9mm bullet casing."
	caliber = "9mm"
	projectile_type = "/obj/item/projectile/bullet/midbullet2"
*/

/obj/item/ammo_casing/c45
	desc = "A .45 bullet casing."
	caliber = ".45"
	projectile_type = "/obj/item/projectile/bullet/midbullet"

/obj/item/ammo_casing/c45r
	desc = "A .45 rubber bullet casing."
	caliber = ".45"
	projectile_type = "/obj/item/projectile/bullet/weakbullet/rubber"

/obj/item/ammo_casing/c45s
	desc = "A .45 LTL round casing."
	caliber = ".45"
	projectile_type = "/obj/item/projectile/bullet/weakbullet/rubber"

/obj/item/ammo_casing/c45s/flash
	desc = "A .45 FLSH round casing."
	caliber = ".45"
	projectile_type = "/obj/item/projectile/bullet/weakbullet/flash"

/obj/item/ammo_casing/c45s/lethal
	desc = "A .45 LTHL round casing."
	caliber = ".45"
	projectile_type = "/obj/item/projectile/bullet/midbullet2"

/obj/item/ammo_casing/a12mm
	desc = "A 12mm bullet casing."
	caliber = "12mm"
	projectile_type = "/obj/item/projectile/bullet/midbullet2"


/obj/item/ammo_casing/shotgun
	name = "shotgun shell"
	desc = "A 12 gauge shell."
	icon_state = "gshell-live"
	var/spent_state = "gshell"
	caliber = "shotgun"
	projectile_type = "/obj/item/projectile/bullet"
	matter = list("metal" = 12500)

/obj/item/ammo_casing/shotgun/incendiary
	name = "shotgun shell"
	desc = "A 12 gauge shell."
	icon_state = "ishell-live"
	spent_state = "ishell"
	projectile_type = "/obj/item/projectile/bullet/incendiary/shell"


/obj/item/ammo_casing/shotgun/blank
	name = "shotgun shell"
	desc = "A blank shell."
	icon_state = "blshell-live"
	spent_state = "blshell"
	projectile_type = ""
	matter = list("metal" = 250)


/obj/item/ammo_casing/shotgun/beanbag
	name = "beanbag shell"
	desc = "A weak beanbag shell."
	icon_state = "bshell-live"
	spent_state = "bshell"
	projectile_type = "/obj/item/projectile/bullet/weakbullet/beanbag"
	matter = list("metal" = 500)


/obj/item/ammo_casing/shotgun/stunshell
	name = "stun shell"
	desc = "A stunning shell."
	icon_state = "stunshell-live"
	spent_state = "stunshell"
	projectile_type = "/obj/item/projectile/bullet/stunshot"
	matter = list("metal" = 2500)


/obj/item/ammo_casing/shotgun/dart
	name = "shotgun darts"
	desc = "A dart for use in shotguns."
	icon_state = "dart"
	spent_state = "dart" //I'm not sure if this has a sprite (can't find one in ammo.dmi) but this will stop it from turning into a red shell magically.
	projectile_type = "/obj/item/projectile/energy/dart"
	matter = list("metal" = 12500)

/obj/item/ammo_casing/a762
	desc = "A 7.62 bullet casing."
	caliber = "a762"
	projectile_type = "/obj/item/projectile/bullet/a762"

/obj/item/ammo_casing/rocket
	name = "rocket shell"
	desc = "A high explosive designed to be fired from a launcher."
	icon_state = "rocketshell"
	projectile_type = "/obj/item/missile"
	caliber = "rocket"

/obj/item/ammo_casing/chameleon
	name = "chameleon bullets"
	desc = "A set of bullets for the Chameleon Gun."
	projectile_type = "/obj/item/projectile/bullet/chameleon"
	caliber = ".45"

/obj/item/ammo_casing/a22
	desc = "A .22 bullet casing."
	projectile_type = "/obj/item/projectile/bullet/smallbullet"
	caliber = ".22"

/obj/item/ammo_casing/a10
	desc = "A 10mm bullet casing."
	projectile_type = "/obj/item/projectile/bullet/heavybullet"
	caliber = "10mm"

/obj/item/ammo_casing/a10/rubber
	desc = "A 10mm rubber bullet casing."
	projectile_type = "/obj/item/projectile/bullet/weakbullet/rubber"

/obj/item/ammo_casing/alight
	name = "power cell"
	desc = "A power cell."
	projectile_type = "/obj/item/projectile/beam/green"
	caliber = "light"
	icon_state = "cell_case_empty"

/obj/item/ammo_casing/flare
	name = "flare"
	desc = "A flare, for firing from a flare gun."
	projectile_type = "/obj/item/projectile/bullet/flare"
	caliber = "flare"
	icon_state = "flareammo"

/obj/item/ammo_casing/odd
	name = "silver ball casing"
	desc = "A silver ball in a casing."
	projectile_type = "/obj/item/projectile/bullet/vamp"
	caliber = "odd"
	icon_state = "45drum"

/obj/item/ammo_casing/ball
	name = "ball casing"
	desc = "A plain metal ball in a casing."
	projectile_type = "/obj/item/projectile/bullet/ball"
	caliber = "odd"
	icon_state = "45drum"

/obj/item/ammo_casing/alight1
	name = "power cell"
	desc = "A power cell."
	projectile_type = "/obj/item/projectile/beam/minigun"
	caliber = "redlight"
	icon_state = "cell_case_empty_red"

// .44 bullet types.

/obj/item/ammo_casing/custom
	name = ".44 casing"
	desc = "A standard .44 bullet casing."
	caliber = ".44"
	projectile_type = "/obj/item/projectile/bullet/custom/standard"

/obj/item/ammo_casing/custom/vamp
	name = "treated .44 casing"
	desc = "A .44 bullet casing treated in holy water."
	projectile_type = "/obj/item/projectile/bullet/custom/vamp"

/obj/item/ammo_casing/custom/stun
	name = "stun .44 casing"
	desc = "A .44 bullet casing with a stun device on it."
	projectile_type = "/obj/item/projectile/bullet/custom/stun"

/obj/item/ammo_casing/custom/incendiary
	name = "dragon .44 casing"
	desc = "A incendiary .44 bullet casing."
	projectile_type = "/obj/item/projectile/bullet/custom/incendiary"

/obj/item/ammo_casing/custom/freeze
	name = "Mr. Whippy .44 casing"
	desc = "A .44 bullet casing designed to freeze the target."
	projectile_type = "/obj/item/projectile/bullet/custom/freeze"

/obj/item/ammo_casing/custom/highimpact
	name = "HI .44 casing"
	desc = "A .44 bullet designed for impact."
	projectile_type = "/obj/item/projectile/bullet/custom/highimpact"

/obj/item/ammo_casing/custom/emp
	name = "EMP .44 casing"
	desc = "A .44 casing with an EMP device on it."
	projectile_type = "/obj/item/projectile/bullet/custom/emp"

/obj/item/ammo_casing/custom/rad
	name = "radioactive .44 casing"
	desc = "A .44 casing tipped with uranium, highly radioactive."
	projectile_type = "/obj/item/projectile/bullet/custom/rad"

/obj/item/ammo_casing/custom/energy
	name = "energy .44 casing"
	desc = "A .44 casing that bursts on contact into a series of harmful light refractions."
	projectile_type = "/obj/item/projectile/bullet/custom/energy"

/obj/item/ammo_casing/custom/explosive
	name = "HE .44 casing"
	desc = "A .44 bullet with an explosive tip."
	projectile_type = "/obj/item/projectile/bullet/custom/explosive"

/obj/item/ammo_casing/custom/insane
	name = "tainted .44 casing"
	desc = "A .44 bullet dipped in a mind damaging toxin."
	projectile_type = "/obj/item/projectile/bullet/custom/insane"

/obj/item/ammo_casing/custom/sleepy
	name = "sleep .44 casing"
	desc = "A .44 bullet casing with a sleep toxin coating the bullet."
	projectile_type = "/obj/item/projectile/bullet/custom/sleepy"

/obj/item/ammo_casing/custom/weaken
	name = "crippling .44 casing"
	desc = "A .44 bullet casing with a muscle stopper."
	projectile_type = "/obj/item/projectile/bullet/custom/weaken"


/obj/item/ammo_casing/nail
	name = "nail"
	desc = "A nail, what did you expect? It has a pressure cap on the head."
	icon_state = "nail"
	caliber = "nail"
	projectile_type = "/obj/item/projectile/bullet/nail"

/obj/item/ammo_casing/a792
	desc = "A 7.92mm bullet casing."
	caliber = "7.92mm"
	projectile_type = /obj/item/projectile/bullet/rifle/a792

/obj/item/ammo_casing/alight2
	name = "blue cell"
	desc = "A blue power cell."
	caliber = "bluelight"
	projectile_type = "/obj/item/projectile/energy/bolt/clara/smg"
	icon_state = "cell_case_empty_blue"

/obj/item/ammo_casing/energyshell
	icon_state = "gshell"
	desc = "A shell designed to store energy."
	name = "energy shell"
	caliber = "eshotgun"
	projectile_type = /obj/item/projectile/bullet/pellet/laser

/obj/item/ammo_casing/pow
	name = "Powtrax casing"
	desc = "A plain, average Powtrax casing."
	icon_state = "slshell"
	caliber = "pow"
	projectile_type = /obj/item/projectile/bullet/pow

/obj/item/ammo_casing/pow/heavy
	desc = "A heavy round for the Powtrax."
	icon_state = "bshell"
	projectile_type = /obj/item/projectile/bullet/pow/carlos

/obj/item/ammo_casing/pow/incendiary
	desc = "A incendiary round for the Powtrax."

/obj/item/ammo_casing/a556
	desc = "A 5.56mm bullet casing."
	caliber = "a556"
	projectile_type = /obj/item/projectile/bullet/rifle/a556

/obj/item/ammo_casing/a556/vamp
	desc = "A 5.56mm bullet casing, made from silver."
	projectile_type = /obj/item/projectile/bullet/rifle/a556/vamp

