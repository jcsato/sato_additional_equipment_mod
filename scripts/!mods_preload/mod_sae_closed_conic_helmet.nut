::mods_queue("sato_additional_equipment", "", function() {
	::mods_hookExactClass("entity/world/attached_location/blast_furnace_location", function(bfl) {
		local onUpdateShopList = ::mods_getMember(bfl, "onUpdateShopList");

		bfl.onUpdateShopList = function( _id, _list ) {
			if (_id == "building.armorsmith")
				_list.push({ R = 30, P = 1.0, S = "helmets/closed_conic_helmet" });

			onUpdateShopList( _id, _list );
		}
	});

	::mods_hookExactClass("entity/world/attached_location/leather_tanner_location", function(ltl) {
		local onUpdateShopList = ::mods_getMember(ltl, "onUpdateShopList");

		ltl.onUpdateShopList = function( _id, _list ) {
			if (_id == "building.armorsmith")
				_list.push({ R = 45, P = 1.0, S = "helmets/closed_conic_helmet" });

			onUpdateShopList( _id, _list );
		}
	});

	::mods_hookExactClass("entity/tactical/humans/mercenary", function(m) {
		local assignRandomEquipment = ::mods_getMember(m, "assignRandomEquipment");

		m.assignRandomEquipment = function() {
			assignRandomEquipment();

			if (Math.rand(1, 100) <= 6) {
				m.Items.unequip(m.Items.getItemAtSlot(Const.ItemSlot.Head));
				m.Items.equip(new("scripts/items/helmets/closed_conic_helmet"));
			}
		}
	});
});
