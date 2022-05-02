::mods_queue("sato_additional_equipment", "", function() {
	::mods_hookExactClass("entity/tactical/humans/nomad_outlaw", function(no) {
		local assignRandomEquipment = ::mods_getMember(no, "assignRandomEquipment");

		no.assignRandomEquipment = function() {
			assignRandomEquipment();

			if (Math.rand(1, 100) <= 20) {
				m.Items.unequip(m.Items.getItemAtSlot(Const.ItemSlot.Head));
				m.Items.equip(new("scripts/items/helmets/oriental/masked_nomad_light_helmet"));
			}
		}
	});

	::mods_hookExactClass("skills/backgrounds/nomad_background", function(nb) {
		local onAddEquipment = ::mods_getMember(nb, "onAddEquipment");

		nb.onAddEquipment = function() {
			onAddEquipment();

			if (Math.rand(1, 100) <= 25) {
				getContainer().getActor().getItems().unequip(getContainer().getActor().getItems().getItemAtSlot(Const.ItemSlot.Head));
				getContainer().getActor().getItems().equip(new("scripts/items/helmets/oriental/masked_nomad_light_helmet"));
			}
		}
	});

	::mods_hookExactClass("skills/backgrounds/nomad_ranged_background", function(nrb) {
		local onAddEquipment = ::mods_getMember(nrb, "onAddEquipment");

		nrb.onAddEquipment = function() {
			onAddEquipment();

			if (Math.rand(1, 100) <= 25) {
				getContainer().getActor().getItems().unequip(getContainer().getActor().getItems().getItemAtSlot(Const.ItemSlot.Head));
				getContainer().getActor().getItems().equip(new("scripts/items/helmets/oriental/masked_nomad_light_helmet"));
			}
		}
	});
});
