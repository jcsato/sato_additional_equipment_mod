::mods_hookExactClass("entity/tactical/humans/officer", function(o) {
	local assignRandomEquipment = ::mods_getMember(o, "assignRandomEquipment");

	o.assignRandomEquipment = function() {
		local hasFamedHelmet = m.Items.getItemAtSlot(Const.ItemSlot.Head) != null;

		assignRandomEquipment();

		if (!hasFamedHelmet && Math.rand(1, 100) <= 25) {
			m.Items.unequip(m.Items.getItemAtSlot(Const.ItemSlot.Head));
			m.Items.equip(new("scripts/items/helmets/oriental/southern_conic_helmet_with_closed_mail"));
		}
	}
});

::mods_hookBaseClass("entity/world/settlement", function(s) {
	while(!("onUpdateShopList" in s)) s = s[s.SuperName];

	local onUpdateShopList = s.onUpdateShopList;

	s.onUpdateShopList = function( _id, _list ) {
		if (Const.DLC.Desert && _id == "building.armorsmith_oriental")
			_list.push({ R = 35, P = 1.0, S = "helmets/oriental/southern_conic_helmet_with_closed_mail" });

		onUpdateShopList( _id, _list );
	}
});
