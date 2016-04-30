

//Overhaul drinking glasses, they're a hack, it'll take some effort at first, but will make things easier in the future.

//Add a drink colour variable, maybe 'var/dcolour'? If we do that we can set it so drinks we miss are just set to a default glass, but
//any we set will have the right icons.
//descriptions are a slight issue, and names.
/*
/obj/item/weapon/reagent_containers/food/drinks/drinkingglass
	name = "glass"
	desc = "Your standard drinking glass."
	icon_state = "glass_empty"
	amount_per_transfer_from_this = 10
	matter = list("glass" = 500)
	volume = 50

	on_reagent_change()
		if (reagents.reagent_list.len > 0)
			switch(reagents.get_master_reagent_id())
				if ("[the_id]"
				icon_state = "beerglass"

*/