::mods_hookExactClass("entity/world/attached_location/blast_furnace_location", function(bfl) {
	local onUpdateShopList = ::mods_getMember(bfl, "onUpdateShopList");

	bfl.onUpdateShopList = function( _id, _list ) {
		if (_id == "building.armorsmith")
			_list.push({ R = 30, P = 1.0, S = "helmets/closed_conic_helmet_with_mail" });

		onUpdateShopList( _id, _list );
	}
});
