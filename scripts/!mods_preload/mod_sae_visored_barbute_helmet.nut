::mods_queue("sato_additional_equipment", "", function() {
	::mods_hookExactClass("entity/world/attached_location/blast_furnace_location", function(bfl) {
		local onUpdateShopList = ::mods_getMember(bfl, "onUpdateShopList");

		bfl.onUpdateShopList = function( _id, _list ) {
			if (_id == "building.armorsmith")
				_list.push({ R = 65, P = 1.0, S = "helmets/visored_barbute_helmet" });

			onUpdateShopList( _id, _list );
		}
	});

	::mods_hookBaseClass("entity/world/settlement", function(s) {
		while(!("onUpdateShopList" in s)) s = s[s.SuperName];

		local onUpdateShopList = s.onUpdateShopList;

		s.onUpdateShopList = function( _id, _list ) {
			if (Const.DLC.Unhold && _id == "building.armorsmith")
				_list.push({ R = 85, P = 1.0, S = "helmets/visored_barbute_helmet" });

			onUpdateShopList( _id, _list );
		}
	});
});
