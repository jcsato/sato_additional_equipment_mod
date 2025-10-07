::mods_registerMod("sato_additional_equipment", 3.5.1, "Sato's Additional Equipment");

::mods_queue("sato_additional_equipment", null, function() {
	::include("script_hooks/mod_sae_bascinet_with_klappvisier");
	::include("script_hooks/mod_sae_closed_conic_helmet_with_mail");
	::include("script_hooks/mod_sae_closed_conic_helmet_with_neckguard");
	::include("script_hooks/mod_sae_closed_conic_helmet");
	::include("script_hooks/mod_sae_decorated_great_helm");
	::include("script_hooks/mod_sae_hood_with_mouth_piece");
	::include("script_hooks/mod_sae_masked_nomad_light_helmet");
	::include("script_hooks/mod_sae_named_nomad_light_helmet");
	::include("script_hooks/mod_sae_reinforced_padded_armor");
	::include("script_hooks/mod_sae_southern_conic_helmet_with_closed_mail");
	::include("script_hooks/mod_sae_visored_barbute_helmet");
	::include("script_hooks/mod_sae_visored_plumed_bascinet_helmet");
});
