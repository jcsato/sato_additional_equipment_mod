::mods_queue("sato_additional_equipment", "", function() {
	::mods_hookExactClass("entity/tactical/humans/bandit_marksman", function(bm) {
		local assignRandomEquipment = ::mods_getMember(bm, "assignRandomEquipment");

		bm.assignRandomEquipment = function() {
			assignRandomEquipment();

			if (Math.rand(1, 100) <= 16) {
				m.Items.unequip(m.Items.getItemAtSlot(Const.ItemSlot.Head));
				m.Items.equip(new("scripts/items/helmets/hood_with_mouth_piece"));
			}
		}
	});

	::mods_hookExactClass("entity/tactical/humans/bandit_marksman_low", function(bml) {
		local assignRandomEquipment = ::mods_getMember(bml, "assignRandomEquipment");

		bml.assignRandomEquipment = function() {
			assignRandomEquipment();

			if (Math.rand(1, 100) <= 33) {
				m.Items.unequip(m.Items.getItemAtSlot(Const.ItemSlot.Head));
				m.Items.equip(new("scripts/items/helmets/hood_with_mouth_piece"));
			}
		}
	});

	::mods_hookExactClass("skills/backgrounds/killer_on_the_run_background", function(kotrb) {
		local onAddEquipment = ::mods_getMember(kotrb, "onAddEquipment");

		kotrb.onAddEquipment = function() {
			onAddEquipment();

			if (Math.rand(1, 100) <= 50) {
				getContainer().getActor().getItems().unequip(getContainer().getActor().getItems().getItemAtSlot(Const.ItemSlot.Head));
				getContainer().getActor().getItems().equip(new("scripts/items/helmets/hood_with_mouth_piece"));
			}
		}
	});
});
