::mods_queue("sato_additional_equipment_distributor_new", "sato_additional_equipment(>=2.0)", function() {
    ::mods_hookExactClass("entity/tactical/humans/hedge_knight", function(hk) {
        local assignRandomEquipment = ::mods_getMember(hk, "assignRandomEquipment");

        hk.assignRandomEquipment = function() {
            local hasFamedHelmet = this.m.Items.getItemAtSlot(this.Const.ItemSlot.Head) != null;

            assignRandomEquipment();

            if (!hasFamedHelmet) {
                this.m.Items.unequip(this.m.Items.getItemAtSlot(this.Const.ItemSlot.Head));
                local helmetList = [
                    "helmets/closed_flat_top_with_mail",
                    "helmets/full_helm",
                    "helmets/hooded_full_helm",
                    "helmets/visored_plumed_bascinet_helmet"
                ];

                this.m.Items.equip(this.new("scripts/items/" + helmetList[this.Math.rand(0, helmetList.len() - 1)]));
            }
        }
    });
});
