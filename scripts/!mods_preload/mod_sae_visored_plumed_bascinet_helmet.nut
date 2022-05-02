::mods_queue("sato_additional_equipment", "", function() {
	::mods_hookExactClass("entity/tactical/humans/hedge_knight", function(hk) {
		local assignRandomEquipment = ::mods_getMember(hk, "assignRandomEquipment");

		hk.assignRandomEquipment = function() {
			local hasFamedHelmet = m.Items.getItemAtSlot(Const.ItemSlot.Head) != null;

			assignRandomEquipment();

			if (!hasFamedHelmet && Math.rand(1, 100) <= 33) {
				m.Items.unequip(m.Items.getItemAtSlot(Const.ItemSlot.Head));
				m.Items.equip(new("scripts/items/helmets/visored_plumed_bascinet_helmet"));
			}
		}
	});

	::mods_hookExactClass("entity/world/attached_location/blast_furnace_location", function(bfl) {
		local onUpdateShopList = ::mods_getMember(bfl, "onUpdateShopList");

		bfl.onUpdateShopList = function( _id, _list ) {
			if (_id == "building.armorsmith")
				_list.push({ R = 45, P = 1.0, S = "helmets/visored_plumed_bascinet_helmet" });

			onUpdateShopList( _id, _list );
		}
	});
});
