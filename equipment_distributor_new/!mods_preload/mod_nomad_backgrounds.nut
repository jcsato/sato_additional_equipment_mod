::mods_queue("sato_additional_equipment_distributor_new", "sato_additional_equipment(>=2.0)", function() {
	::mods_hookNewObject("skills/backgrounds/nomad_background", function(nb) {
		local onAddEquipment = nb.onAddEquipment;

		nb.onAddEquipment = function() {
			onAddEquipment();

			local items = this.getContainer().getActor().getItems();
			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Head));

			local r = this.Math.rand(0, 6);

			if (r <= 1)
			{
				items.equip(this.new("scripts/items/helmets/oriental/nomad_head_wrap"));
			}
			else if (r <= 3)
			{
				items.equip(this.new("scripts/items/helmets/oriental/nomad_leather_cap"));
			}
			else if (r <= 5)
			{
				items.equip(this.new("scripts/items/helmets/oriental/nomad_light_helmet"));
			}
			else
			{
				items.equip(this.new("scripts/items/helmets/oriental/masked_nomad_light_helmet"));
			}
		}
	});

	::mods_hookNewObject("skills/backgrounds/nomad_ranged_background", function(nb) {
		local onAddEquipment = nb.onAddEquipment;

		nb.onAddEquipment = function() {
			onAddEquipment();

			local items = this.getContainer().getActor().getItems();
			items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Head));

			local r = this.Math.rand(0, 6);

			if (r <= 1)
			{
				items.equip(this.new("scripts/items/helmets/oriental/nomad_head_wrap"));
			}
			else if (r <= 3)
			{
				items.equip(this.new("scripts/items/helmets/oriental/nomad_leather_cap"));
			}
			else if (r <= 5)
			{
				items.equip(this.new("scripts/items/helmets/oriental/nomad_light_helmet"));
			}
			else
			{
				items.equip(this.new("scripts/items/helmets/oriental/masked_nomad_light_helmet"));
			}
		}
	});
});
