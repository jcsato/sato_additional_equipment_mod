::mods_hookExactClass("skills/backgrounds/assassin_southern_background", function(ab) {
	local onAddEquipment = ::mods_getMember(ab, "onAddEquipment");

	ab.onAddEquipment = function() {
		onAddEquipment();

		if (Math.rand(1, 100) <= 33) {
			getContainer().getActor().getItems().unequip(getContainer().getActor().getItems().getItemAtSlot(Const.ItemSlot.Body));
			getContainer().getActor().getItems().equip(new("scripts/items/armor/oriental/reinforced_padded_armor"));
		}
	}
});
