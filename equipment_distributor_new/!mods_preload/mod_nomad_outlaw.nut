::mods_queue("sato_additional_equipment_distributor_new", "sato_additional_equipment(>=2.0)", function() {
    ::mods_hookBaseClass("entity/tactical/human", function(h)
    {
        while(!("assignRandomEquipment" in h)) h = h[h.SuperName];

        local assignRandomEquipment = h.assignRandomEquipment;

        h.assignRandomEquipment = function()
        {
            assignRandomEquipment();
            if (this.m.Type == this.Const.EntityType.NomadOutlaw)
            {
                this.m.Items.unequip(this.m.Items.getItemAtSlot(this.Const.ItemSlot.Head));
                local helmet = [
                    "helmets/oriental/nomad_leather_cap",
                    "helmets/oriental/nomad_light_helmet",
                    "helmets/oriental/nomad_reinforced_helmet",
                    "helmets/oriental/leather_head_wrap"
                ];

                if (this.Math.rand(1, 100) <= 75) {
                    helmet.extend(["helmets/oriental/masked_nomad_light_helmet"]);
                }

                this.m.Items.equip(this.new("scripts/items/" + helmet[this.Math.rand(0, helmet.len() - 1)]));
            }
        }
    });
});
