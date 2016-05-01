/*

	Hello and welcome to sprite_accessories: For sprite accessories, such as hair,
	facial hair, and possibly tattoos and stuff somewhere along the line. This file is
	intended to be friendly for people with little to no actual coding experience.
	The process of adding in new hairstyles has been made pain-free and easy to do.
	Enjoy! - Doohl


	Notice: This all gets automatically compiled in a list in dna2.dm, so you do not
	have to define any UI values for sprite accessories manually for hair and facial
	hair. Just add in new hair types and the game will naturally adapt.

	!!WARNING!!: changing existing hair information can be VERY hazardous to savefiles,
	to the point where you may completely corrupt a server's savefiles. Please refrain
	from doing this unless you absolutely know what you are doing, and have defined a
	conversion in savefile.dm
*/

/datum/sprite_accessory

	var/icon			// the icon file the accessory is located in
	var/icon_state		// the icon_state of the accessory
	var/preview_state	// a custom preview state for whatever reason

	var/name			// the preview name of the accessory

	// Determines if the accessory will be skipped or included in random hair generations
	var/gender = NEUTER

	// Restrict some styles to specific species
	var/list/species_allowed = list("Human")

	// Whether or not the accessory can be affected by colouration
	var/do_colouration = 1

	// Ckey of person allowed to use this, if defined.
	var/list/ckeys_allowed = null


/*
////////////////////////////
/  =--------------------=  /
/  == Hair Definitions ==  /
/  =--------------------=  /
////////////////////////////
*/

/datum/sprite_accessory/hair

	icon = 'icons/mob/Human_face.dmi'	  // default icon for all hairs

	bald
		name = "Bald"
		icon_state = "bald"
		species_allowed = list("Human","Unathi","Kocasslani")

	short
		name = "Short Hair"	  // try to capatilize the names please~
		icon_state = "hair_a" // you do not need to define _s or _l sub-states, game automatically does this for you

	shortalt
		name = "Short Hair Alt"
		icon_state = "hair_short_alt"

	halfshaved
		name = "Half Shaved"
		icon_state = "hair_halfshaved"

	halfshavedalt
		name = "Half Shaved Alt"
		icon_state = "hair_halfshaved_alt"

	cut
		name = "Cut Hair"
		icon_state = "hair_c"

	flair
		name = "Flaired Hair"
		icon_state = "hair_flair"

	long
		name = "Shoulder-length Hair"
		icon_state = "hair_b"

	longalt
		name = "Shoulder-length Hair Alt"
		icon_state = "hair_longfringe"

	/*longish
		name = "Longer Hair"
		icon_state = "hair_b2"*/

	longer
		name = "Long Hair"
		icon_state = "hair_vlong"

	longeralt
		name = "Long Hair Alt"
		icon_state = "hair_vlongfringe"

	longest
		name = "Very Long Hair"
		icon_state = "hair_longest"

	longfringe
		name = "Long Fringe"
		icon_state = "hair_longfringe"

	longestalt
		name = "Longer Fringe"
		icon_state = "hair_vlongfringe"

	halfbang
		name = "Half-banged Hair"
		icon_state = "hair_halfbang"

	halfbangalt
		name = "Half-banged Hair Alt"
		icon_state = "hair_halfbang_alt"

	ponytail1
		name = "Ponytail 1"
		icon_state = "hair_ponytail"

	ponytail2
		name = "Ponytail 2"
		icon_state = "hair_pa"

	ponytail3
		name = "Ponytail 3"
		icon_state = "hair_ponytail3"

	ponytail4
		name = "Ponytail 4"
		icon_state = "hair_ponytail4"

	ponytail5
		name = "Ponytail 5"
		icon_state = "hair_ponytail5"

	sideponytail
		name = "Side Ponytail"
		icon_state = "hair_stail"

	parted
		name = "Parted"
		icon_state = "hair_parted"

	pompadour
		name = "Pompadour"
		icon_state = "hair_pompadour"
		species_allowed = list("Human","Unathi")

	quiff
		name = "Quiff"
		icon_state = "hair_quiff"

	bedhead
		name = "Bedhead"
		icon_state = "hair_bedhead"

	bedhead2
		name = "Bedhead 2"
		icon_state = "hair_bedheadv2"

	bedhead3
		name = "Bedhead 3"
		icon_state = "hair_bedheadv3"

	beehive
		name = "Beehive"
		icon_state = "hair_beehive"
		species_allowed = list("Human","Unathi")

	bobcurl
		name = "Bobcurl"
		icon_state = "hair_bobcurl"
		species_allowed = list("Human","Unathi")

	bob
		name = "Bob"
		icon_state = "hair_bobcut"
		species_allowed = list("Human","Unathi")

	bowl
		name = "Bowl"
		icon_state = "hair_bowlcut"

	buzz
		name = "Buzzcut"
		icon_state = "hair_buzzcut"
		species_allowed = list("Human","Unathi")

	crew
		name = "Crewcut"
		icon_state = "hair_crewcut"

	combover
		name = "Combover"
		icon_state = "hair_combover"

	devillock
		name = "Devil Lock"
		icon_state = "hair_devilock"

	dreadlocks
		name = "Dreadlocks"
		icon_state = "hair_dreads"

	curls
		name = "Curls"
		icon_state = "hair_curls"

	afro
		name = "Afro"
		icon_state = "hair_afro"

	afro2
		name = "Afro 2"
		icon_state = "hair_afro2"

	afro_large
		name = "Big Afro"
		icon_state = "hair_bigafro"

	sargeant
		name = "Flat Top"
		icon_state = "hair_sargeant"

	emo
		name = "Emo"
		icon_state = "hair_emo"

	fag
		name = "Flow Hair"
		icon_state = "hair_f"

	feather
		name = "Feather"
		icon_state = "hair_feather"

	hitop
		name = "Hitop"
		icon_state = "hair_hitop"

	mohawk
		name = "Mohawk"
		icon_state = "hair_d"
		species_allowed = list("Human","Unathi")
	jensen
		name = "Adam Jensen Hair"
		icon_state = "hair_jensen"

	gelled
		name = "Gelled Back"
		icon_state = "hair_gelled"

	gentle
		name = "Gentle"
		icon_state = "hair_gentle"

	spiky
		name = "Spiky"
		icon_state = "hair_spikey"
		species_allowed = list("Human","Unathi")
	kusangi
		name = "Kusanagi Hair"
		icon_state = "hair_kusanagi"

	kagami
		name = "Pigtails"
		icon_state = "hair_kagami"

	himecut
		name = "Hime Cut"
		icon_state = "hair_himecut"

	himecut_alt
		name = "Hime Cut Alt"
		icon_state = "hair_himecut_alt"

	braid
		name = "Floorlength Braid"
		icon_state = "hair_braid"

	braid2
		name = "Long Braid"
		icon_state = "hair_hbraid"

	odango
		name = "Odango"
		icon_state = "hair_odango"

	ombre
		name = "Ombre"
		icon_state = "hair_ombre"

	updo
		name = "Updo"
		icon_state = "hair_updo"

	skinhead
		name = "Skinhead"
		icon_state = "hair_skinhead"

	balding
		name = "Balding Hair"
		icon_state = "hair_e"

	bun
		name = "Bun"
		icon_state = "hair_bun"

	bangshuman
		name = "Bangs"
		icon_state = "hair_hbangs"

	bangshumanalt
		name = "Bangs Short"
		icon_state = "hair_hbangs_alt"

	familyman
		name = "The Family Man"
		icon_state = "hair_thefamilyman"

	mahdrills
		name = "Drillruru"
		icon_state = "hair_drillruru"

	dandypomp
		name = "Dandy Pompadour"
		icon_state = "hair_dandypompadour"

	poofy
		name = "Poofy"
		icon_state = "hair_poofy"

	crono
		name = "Chrono"
		icon_state = "hair_toriyama"

	vegeta
		name = "Vegeta"
		icon_state = "hair_toriyama2"

	cia
		name = "CIA"
		icon_state = "hair_cia"

	mulder
		name = "Mulder"
		icon_state = "hair_mulder"

	scully
		name = "Scully"
		icon_state = "hair_scully"

	nitori
		name = "Nitori"
		icon_state = "hair_nitori"

	joestar
		name = "Joestar"
		icon_state = "hair_joestar"

	dad
		name = "Father"
		icon_state = "hair_father"

	reversemohawk
		name = "Reverse Mohawk"
		icon_state = "hair_reversemohawk"

	beehive2
		name = "Beehive 2"
		icon_state = "hair_beehive2"

	shortbraid
		name = "Short Braid"
		icon_state = "hair_shortbraid"

	emolong
		name = "Long Emo"
		icon_state = "hair_emolong"

	bald
		name = "Bald"
		icon_state = "bald"

	icp_screen_pink
		name = "pink IPC screen"
		icon_state = "ipc_pink"
		species_allowed = list("Machine")

	icp_screen_red
		name = "red IPC screen"
		icon_state = "ipc_red"
		species_allowed = list("Machine")

	icp_screen_green
		name = "green IPC screen"
		icon_state = "ipc_green"
		species_allowed = list("Machine")

	icp_screen_blue
		name = "blue IPC screen"
		icon_state = "ipc_blue"
		species_allowed = list("Machine")

	icp_screen_breakout
		name = "breakout IPC screen"
		icon_state = "ipc_breakout"
		species_allowed = list("Machine")

	icp_screen_eight
		name = "eight IPC screen"
		icon_state = "ipc_eight"
		species_allowed = list("Machine")

	icp_screen_goggles
		name = "goggles IPC screen"
		icon_state = "ipc_goggles"
		species_allowed = list("Machine")

	icp_screen_heart
		name = "heart IPC screen"
		icon_state = "ipc_heart"
		species_allowed = list("Machine")

	icp_screen_monoeye
		name = "monoeye IPC screen"
		icon_state = "ipc_monoeye"
		species_allowed = list("Machine")

	icp_screen_nature
		name = "nature IPC screen"
		icon_state = "ipc_nature"
		species_allowed = list("Machine")

	icp_screen_orange
		name = "orange IPC screen"
		icon_state = "ipc_orange"
		species_allowed = list("Machine")

	icp_screen_purple
		name = "purple IPC screen"
		icon_state = "ipc_purple"
		species_allowed = list("Machine")

	icp_screen_shower
		name = "shower IPC screen"
		icon_state = "ipc_shower"
		species_allowed = list("Machine")

	icp_screen_static
		name = "static IPC screen"
		icon_state = "ipc_static"
		species_allowed = list("Machine")

	icp_screen_yellow
		name = "yellow IPC screen"
		icon_state = "ipc_yellow"
		species_allowed = list("Machine")

/*
///////////////////////////////////
/  =---------------------------=  /
/  == Facial Hair Definitions ==  /
/  =---------------------------=  /
///////////////////////////////////
*/

/datum/sprite_accessory/facial_hair

	icon = 'icons/mob/Human_face.dmi'
	gender = MALE // barf (unless you're a dorf, dorfs dig chix /w beards :P)

	shaved
		name = "Shaved"
		icon_state = "bald"
		gender = NEUTER
		species_allowed = list("Human","Unathi","Tajaran","Skrell","Vox","Machine","Kocasslani")

	watson
		name = "Watson Mustache"
		icon_state = "facial_watson"

	hogan
		name = "Hulk Hogan Mustache"
		icon_state = "facial_hogan" //-Neek

	vandyke
		name = "Van Dyke Mustache"
		icon_state = "facial_vandyke"

	chaplin
		name = "Square Mustache"
		icon_state = "facial_chaplin"

	selleck
		name = "Selleck Mustache"
		icon_state = "facial_selleck"

	neckbeard
		name = "Neckbeard"
		icon_state = "facial_neckbeard"

	fullbeard
		name = "Full Beard"
		icon_state = "facial_fullbeard"

	longbeard
		name = "Long Beard"
		icon_state = "facial_longbeard"

	vlongbeard
		name = "Very Long Beard"
		icon_state = "facial_wise"

	elvis
		name = "Elvis Sideburns"
		icon_state = "facial_elvis"
		species_allowed = list("Human","Unathi")

	abe
		name = "Abraham Lincoln Beard"
		icon_state = "facial_abe"

	chinstrap
		name = "Chinstrap"
		icon_state = "facial_chin"

	hip
		name = "Hipster Beard"
		icon_state = "facial_hip"

	gt
		name = "Goatee"
		icon_state = "facial_gt"

	jensen
		name = "Adam Jensen Beard"
		icon_state = "facial_jensen"

	dwarf
		name = "Dwarf Beard"
		icon_state = "facial_dwarf"

/*
///////////////////////////////////
/  =---------------------------=  /
/  == Alien Style Definitions ==  /
/  =---------------------------=  /
///////////////////////////////////
*/

/datum/sprite_accessory/hair
	una_spines_long
		name = "Long Unathi Spines"
		icon_state = "soghun_longspines"
		species_allowed = list("Unathi")

	una_spines_short
		name = "Short Unathi Spines"
		icon_state = "soghun_shortspines"
		species_allowed = list("Unathi")

	una_frills_long
		name = "Long Unathi Frills"
		icon_state = "soghun_longfrills"
		species_allowed = list("Unathi")

	una_frills_short
		name = "Short Unathi Frills"
		icon_state = "soghun_shortfrills"
		species_allowed = list("Unathi")

	una_horns
		name = "Unathi Horns"
		icon_state = "soghun_horns"
		species_allowed = list("Unathi")

	skr_tentacle_m
		name = "Skrell Male Tentacles"
		icon_state = "skrell_hair_m"
		species_allowed = list("Skrell")
		gender = MALE

	skr_tentacle_f
		name = "Skrell Female Tentacles"
		icon_state = "skrell_hair_f"
		species_allowed = list("Skrell")
		gender = FEMALE

	skr_gold_m
		name = "Gold plated Skrell Male Tentacles"
		icon_state = "skrell_goldhair_m"
		species_allowed = list("Skrell")
		gender = MALE

	skr_gold_f
		name = "Gold chained Skrell Female Tentacles"
		icon_state = "skrell_goldhair_f"
		species_allowed = list("Skrell")
		gender = FEMALE

	skr_clothtentacle_m
		name = "Cloth draped Skrell Male Tentacles"
		icon_state = "skrell_clothhair_m"
		species_allowed = list("Skrell")
		gender = MALE

	skr_clothtentacle_f
		name = "Cloth draped Skrell Female Tentacles"
		icon_state = "skrell_clothhair_f"
		species_allowed = list("Skrell")
		gender = FEMALE

	taj_ears
		name = "Tajaran Ears"
		icon_state = "ears_plain"
		species_allowed = list("Tajaran")

	taj_ears_clean
		name = "Tajara Clean"
		icon_state = "hair_clean"
		species_allowed = list("Tajaran")

	taj_ears_bangs
		name = "Tajara Bangs"
		icon_state = "hair_bangs"
		species_allowed = list("Tajaran")

	taj_ears_braid
		name = "Tajara Braid"
		icon_state = "hair_tbraid"
		species_allowed = list("Tajaran")

	taj_ears_shaggy
		name = "Tajara Shaggy"
		icon_state = "hair_shaggy"
		species_allowed = list("Tajaran")

	taj_ears_mohawk
		name = "Tajaran Mohawk"
		icon_state = "hair_mohawk"
		species_allowed = list("Tajaran")

	taj_ears_plait
		name = "Tajara Plait"
		icon_state = "hair_plait"
		species_allowed = list("Tajaran")

	taj_ears_straight
		name = "Tajara Straight"
		icon_state = "hair_straight"
		species_allowed = list("Tajaran")

	taj_ears_long
		name = "Tajara Long"
		icon_state = "hair_long"
		species_allowed = list("Tajaran")

	taj_ears_rattail
		name = "Tajara Rat Tail"
		icon_state = "hair_rattail"
		species_allowed = list("Tajaran")

	taj_ears_spiky
		name = "Tajara Spiky"
		icon_state = "hair_tajspiky"
		species_allowed = list("Tajaran")

	taj_ears_messy
		name = "Tajara Messy"
		icon_state = "hair_messy"
		species_allowed = list("Tajaran")

	taj_ears_wife
		name = "Tajara Housewife"
		icon_state = "hair_wife"
		gender = FEMALE
		species_allowed = list("Tajaran")

	taj_ears_victory
		name = "Tajara Victory Curls"
		icon_state = "hair_victory"
		gender = FEMALE
		species_allowed = list("Tajaran")

	taj_ears_bob
		name = "Tajara Bob"
		icon_state = "hair_tbob"
		species_allowed = list("Tajaran")

	taj_ears_fingercurl
		name = "Tajara Finger Curls"
		icon_state = "hair_fingerwave"
		gender = FEMALE
		species_allowed = list("Tajaran")

	vox_quills_short
		name = "Short Vox Quills"
		icon_state = "vox_shortquills"
		species_allowed = list("Vox")

	kocasslani_m_1
		name = "Kocasslani Male 1"
		icon_state = "kocasslani_m_hair1"
		species_allowed = list("Kocasslani")

	kocasslani_m_2
		name = "Kocasslani Male 2"
		icon_state = "kocasslani_m_hair2"
		species_allowed = list("Kocasslani")

	kocasslani_f_1
		name = "Kocasslani Female 1"
		icon_state = "kocasslani_f_hair1"
		species_allowed = list("Kocasslani")

	kocasslani_f_2
		name = "Kocasslani Female 2"
		icon_state = "kocasslani_f_hair2"
		species_allowed = list("Kocasslani")

	kocasslani_f_3
		name = "Kocasslani Female 3"
		icon_state = "kocasslani_f_hair3"
		species_allowed = list("Kocasslani")

/datum/sprite_accessory/facial_hair

	taj_sideburns
		name = "Tajara Sideburns"
		icon_state = "facial_mutton"
		species_allowed = list("Tajaran")

	taj_mutton
		name = "Tajara Mutton"
		icon_state = "facial_mutton"
		species_allowed = list("Tajaran")

	taj_pencilstache
		name = "Tajara Pencilstache"
		icon_state = "facial_pencilstache"
		species_allowed = list("Tajaran")

	taj_moustache
		name = "Tajara Moustache"
		icon_state = "facial_moustache"
		species_allowed = list("Tajaran")

	taj_goatee
		name = "Tajara Goatee"
		icon_state = "facial_goatee"
		species_allowed = list("Tajaran")

	taj_smallstache
		name = "Tajara Smallsatche"
		icon_state = "facial_smallstache"
		species_allowed = list("Tajaran")


/*
////////////////////////////
/  =--------------------=  /
/  == Ear Definitions  ==  /
/  =--------------------=  /
////////////////////////////
*/
/datum/sprite_accessory/ears
	name = "You should not see this..."
	icon = 'icons/mob/fluff/ears.dmi'
	do_colouration = 0 //Set to 1 to convert greyscale to the haircolor

	var/colored_overlay
	var/desc = "You should not see this..."

/datum/sprite_accessory/ears/squirrel_orange
	name = "squirel, orange"
	desc = ""
	icon_state = "squirrel-orange"

/datum/sprite_accessory/ears/squirrel_red
	name = "squirrel, red"
	desc = ""
	icon_state = "squirrel-red"

/datum/sprite_accessory/ears/squirrel
	name = "squirrel, hair-colored"
	desc = ""
	icon_state = "squirrel"
	do_colouration = 1

/datum/sprite_accessory/ears/kitty
	name = "kitty, hair-colored"
	desc = ""
	icon_state = "kitty"
	do_colouration = 1
	colored_overlay = "kittyinner"

/datum/sprite_accessory/ears/bunny
	name = "bunny, hair-colored"
	desc = ""
	icon_state = "bunny"
	do_colouration = 1

/datum/sprite_accessory/ears/bunny_white
	name = "bunny, white"
	desc = ""
	icon_state = "bunny"

/datum/sprite_accessory/ears/bear_brown
	name = "bear, brown"
	desc = ""
	icon_state = "bear-brown"

/datum/sprite_accessory/ears/bear
	name = "bear, hair-colored"
	desc = ""
	icon_state = "bear"
	do_colouration = 1

/datum/sprite_accessory/ears/wolf_grey
	name = "wolf, grey"
	desc = ""
	icon_state = "wolf-grey"

/datum/sprite_accessory/ears/wolf_green
	name = "wolf, green"
	desc = ""
	icon_state = "wolf-green"

/datum/sprite_accessory/ears/wisewolf
	name = "wolf, wise"
	desc = ""
	icon_state = "wolf-wise"

/datum/sprite_accessory/ears/wolf
	name = "wolf, hair-colored"
	desc = ""
	icon_state = "wolf"
	do_colouration = 1
	colored_overlay = "wolfinner"

/datum/sprite_accessory/ears/mouse_grey
	name = "mouse, grey"
	desc = ""
	icon_state = "mouse-grey"

/datum/sprite_accessory/ears/mouse
	name = "mouse, hair-colored"
	desc = ""
	icon_state = "mouse"
	do_colouration = 1
	colored_overlay = "mouseinner"

/datum/sprite_accessory/ears/bee
	name = "bee antennae"
	desc = ""
	icon_state = "bee"

/datum/sprite_accessory/ears/oni_h1
	name = "oni horns"
	desc = ""
	icon_state = "oni-h1"
	do_colouration = 0

/datum/sprite_accessory/ears/demon_horns1
	name = "demon horns"
	desc = ""
	icon_state = "demon-horns1"
	do_colouration = 0


// Special snowflake ears go below here.

/datum/sprite_accessory/ears/molenar_kitsune
	name = "quintail kitsune ears (Molenar)"
	desc = ""
	icon_state = "molenar-kitsune"
	ckeys_allowed = list("molenar")

/datum/sprite_accessory/ears/molenar_deathclaw
	name = "deathclaw ears (Molenar)"
	desc = ""
	icon_state = "molenar-deathclaw"
	ckeys_allowed = list("molenar")

/datum/sprite_accessory/ears/runac
	name = "fennecsune ears (Runac)"
	desc = ""
	icon_state = "runac"
	ckeys_allowed = list("rebcom1807")

/datum/sprite_accessory/ears/kerena
	name = "wingwolf ears (Kerena)"
	desc = ""
	icon_state = "kerena"
	ckeys_allowed = list("somekindofpony")

/datum/sprite_accessory/ears/rosey
	name = "tritail kitsune ears (Rosey)"
	desc = ""
	icon_state = "rosey"
	ckeys_allowed = list("joey4298")

/datum/sprite_accessory/ears/aronai
	name = "aronai ears/head (Aronai)"
	desc = ""
	icon_state = "aronai"
	ckeys_allowed = list("arokha")

/*
////////////////////////////
/  =--------------------=  /
/  == Tail Definitions ==  /
/  =--------------------=  /
////////////////////////////
*/
/datum/sprite_accessory/tail
	name = "You should not see this..."
	icon = 'icons/mob/fluff/tails.dmi'
	do_colouration = 0

	var/colored_overlay
	var/show_species_tail
	var/desc = "You should not see this..."

/datum/sprite_accessory/tail/invisible
	name = "hide species-sprite tail"
	icon = null
	icon_state = null

/datum/sprite_accessory/tail/squirrel_orange
	name = "squirel, orange"
	desc = ""
	icon_state = "squirrel-orange"

/datum/sprite_accessory/tail/squirrel_red
	name = "squirrel, red"
	desc = ""
	icon_state = "squirrel-red"

/datum/sprite_accessory/tail/squirrel
	name = "squirrel, hair-colored"
	desc = ""
	icon_state = "squirrel"
	do_colouration = 1

/datum/sprite_accessory/tail/kitty
	name = "kitty, hair-colored, downwards"
	desc = ""
	icon_state = "kittydown"
	do_colouration = 1

/datum/sprite_accessory/tail/kittyup
	name = "kitty, hair-colored, upwards"
	desc = ""
	icon_state = "kittyup"
	do_colouration = 1

/datum/sprite_accessory/tail/tiger_white
	name = "tiger, hair-colored, white stripes"
	desc = ""
	icon_state = "tiger"
	do_colouration = 1
	colored_overlay = "tigerinnerwhite"

/datum/sprite_accessory/tail/tiger_black
	name = "tiger, hair-colored, black stripes"
	desc = ""
	icon_state = "tiger"
	do_colouration = 1
	colored_overlay = "tigerinnerblack"

/datum/sprite_accessory/tail/stripey
	name = "stripey taj, hair-colored"
	desc = ""
	icon_state = "stripeytail"
	do_colouration = 1

/datum/sprite_accessory/tail/stripeytail_brown
	name = "stripey taj, brown"
	desc = ""
	icon_state = "stripeytail-brown"

/datum/sprite_accessory/tail/bunny
	name = "bunny, hair-colored"
	desc = ""
	icon_state = "bunny"
	do_colouration = 1

/datum/sprite_accessory/tail/bear_brown
	name = "bear, brown"
	desc = ""
	icon_state = "bear-brown"

/datum/sprite_accessory/tail/bear
	name = "bear, hair-colored"
	desc = ""
	icon_state = "bear"
	do_colouration = 1

/datum/sprite_accessory/tail/wolf_grey
	name = "wolf, grey"
	desc = ""
	icon_state = "wolf-grey"

/datum/sprite_accessory/tail/wolf_green
	name = "wolf, green"
	desc = ""
	icon_state = "wolf-green"

/datum/sprite_accessory/tail/wisewolf
	name = "wolf, wise"
	desc = ""
	icon_state = "wolf-wise"


/datum/sprite_accessory/tail/wisewolf
 	name = "wolf, black"
 	desc = ""
 	icon_state = "wolf"

/datum/sprite_accessory/tail/wolf
	name = "wolf, hair-colored"
	desc = ""
	icon_state = "wolf"
	do_colouration = 1
	colored_overlay = "wolfinner"

/datum/sprite_accessory/tail/mouse_grey
	name = "mouse, grey"
	desc = ""
	icon_state = "mouse-grey"

/datum/sprite_accessory/tail/crossfox
	name = "cross fox"
	desc = ""
	icon_state = "crossfox"

/datum/sprite_accessory/tail/mouse
	name = "mouse, hair-colored"
	desc = ""
	icon_state = "mouse"
	do_colouration = 1
	colored_overlay = "mouseinner"

/datum/sprite_accessory/tail/bee
	name = "bee thorax (+wings)"
	desc = ""
	icon_state = "bee"

/datum/sprite_accessory/tail/succubus_purple
	name = "succubus, purple (+wings)"
	desc = ""
	icon_state = "succubus-purple"

/datum/sprite_accessory/tail/succubus_red
	name = "succubus, red (+wings)"
	desc = ""
	icon_state = "succubus-red"

/datum/sprite_accessory/tail/succubus_black
	name = "succubus, black (+wings)"
	desc = ""
	icon_state = "succubus-black"

/datum/sprite_accessory/tail/bat_black
	name = "bat wings, black"
	desc = ""
	icon_state = "bat-black"
	show_species_tail = 1

/datum/sprite_accessory/tail/bat_red
	name = "bat wings, red"
	desc = ""
	icon_state = "bat-red"
	show_species_tail = 1

/datum/sprite_accessory/tail/snag
	name = "xenomorph tail w/ backplate"
	desc = ""
	icon_state = "snag"

/datum/sprite_accessory/tail/xenotail
	name = "xenomorph tail"
	desc = ""
	icon_state = "xenotail"

/datum/sprite_accessory/tail/molenar_kitsune
	name = "quintail kitsune tails (Molenar)"
	desc = ""
	icon_state = "molenar-kitsune"
	ckeys_allowed = list("molenar")

/datum/sprite_accessory/tail/molenar_deathclaw
	name = "deathclaw bits (Molenar)"
	desc = ""
	icon_state = "molenar-deathclaw"
	ckeys_allowed = list("molenar","jertheace")

/datum/sprite_accessory/tail/runac
	name = "fennecsune tails (Runac)"
	desc = ""
	icon_state = "runac"
	ckeys_allowed = list("rebcom1807")

/datum/sprite_accessory/tail/kerena
	name = "wingwolf tail (+wings) (Kerena)"
	desc = ""
	icon_state = "kerena"
	ckeys_allowed = list("somekindofpony")

/datum/sprite_accessory/tail/rosey
	name = "tritail kitsune tails (Rosey)"
	desc = ""
	icon_state = "rosey"
	ckeys_allowed = list("joey4298")

/datum/sprite_accessory/tail/scree
	name = "green taj tail (+wings) (Scree)"
	desc = ""
	icon_state = "scree"
	ckeys_allowed = list("scree")

/datum/sprite_accessory/tail/aronai
	name = "aronai tail (Aronai)"
	desc = ""
	icon_state = "aronai"
	ckeys_allowed = list("arokha")

/datum/sprite_accessory/tail/feathered
	name = "feathered wings"
	desc = ""
	icon_state = "feathered"


/datum/sprite_accessory/tail/special
	name = "Blank tail. Do not select."
	icon = 'icons/effects/species.dmi'

/datum/sprite_accessory/tail/special/unathi
	name = "unathi tail"
	desc = ""
	icon_state = "sogtail_s"

/datum/sprite_accessory/tail/special/tajaran
	name = "tajaran tail"
	desc = ""
	icon_state = "tajtail_s"

/datum/sprite_accessory/tail/special/sergal
	name = "sergal tail"
	desc = ""
	icon_state = "sergtail_s"

/datum/sprite_accessory/tail/special/akula
	name = "akula tail"
	desc = ""
	icon_state = "sharktail_s"

/datum/sprite_accessory/tail/special/nevrean
	name = "nevrean tail"
	desc = ""
	icon_state = "nevrean_s"

/datum/sprite_accessory/tail/special/unathihc
	name = "unathi tail, hair colored"
	desc = ""
	icon_state = "sogtail_s"
	do_colouration = 1

/datum/sprite_accessory/tail/special/tajaranhc
	name = "tajaran tail, hair colored"
	desc = ""
	icon_state = "tajtail_s"
	do_colouration = 1

/datum/sprite_accessory/tail/special/sergalhc
	name = "sergal tail, hair colored"
	desc = ""
	icon_state = "sergtail_s"
	do_colouration = 1

/datum/sprite_accessory/tail/special/akulahc
	name = "akula tail, hair colored"
	desc = ""
	icon_state = "sharktail_s"
	do_colouration = 1

/datum/sprite_accessory/tail/special/nevreanhc
	name = "nevrean tail, hair colored"
	desc = ""
	icon_state = "nevrean_s"
	do_colouration = 1

//skin styles - WIP
//going to have to re-integrate this with surgery
//let the icon_state hold an icon preview for now
/datum/sprite_accessory/skin
	icon = 'icons/mob/human_races/r_human.dmi'

	human
		name = "Default human skin"
		icon_state = "default"
		species_allowed = list("Human")

	human_tatt01
		name = "Tatt01 human skin"
		icon_state = "tatt1"
		species_allowed = list("Human")

	tajaran
		name = "Default tajaran skin"
		icon_state = "default"
		icon = 'icons/mob/human_races/r_tajaran.dmi'
		species_allowed = list("Tajaran")

	unathi
		name = "Default Unathi skin"
		icon_state = "default"
		icon = 'icons/mob/human_races/r_lizard.dmi'
		species_allowed = list("Unathi")

	skrell
		name = "Default skrell skin"
		icon_state = "default"
		icon = 'icons/mob/human_races/r_skrell.dmi'
		species_allowed = list("Skrell")

	kocasslani
		name = "Default Kocasslani skin"
		icon_state = "default"
		icon = 'icons/mob/human_races/r_kocasslani.dmi'
		species_allowed = list("Kocasslani")