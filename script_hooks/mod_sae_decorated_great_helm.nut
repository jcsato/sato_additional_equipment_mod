::mods_hookExactClass("skills/backgrounds/paladin_background", function(pb) {
	local onAddEquipment = ::mods_getMember(pb, "onAddEquipment");

	pb.onAddEquipment = function() {
		onAddEquipment();

		if (Math.rand(1, 12) == 1) {
			getContainer().getActor().getItems().unequip(getContainer().getActor().getItems().getItemAtSlot(Const.ItemSlot.Head));
			getContainer().getActor().getItems().equip(new("scripts/items/helmets/decorated_great_helm"));
		}
	}
});

::mods_hookExactClass("entity/tactical/humans/oathbringer", function(o) {
	local assignRandomEquipment = ::mods_getMember(o, "assignRandomEquipment");

	o.assignRandomEquipment = function() {
		assignRandomEquipment();

		if (Math.rand(1, 10) == 1) {
			getItems().unequip(getItems().getItemAtSlot(Const.ItemSlot.Head));
			getItems().equip(new("scripts/items/helmets/decorated_great_helm"));
		}
	}
});
