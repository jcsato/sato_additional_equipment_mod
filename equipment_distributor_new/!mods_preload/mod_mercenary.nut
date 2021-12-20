::mods_queue("sato_additional_equipment_distributor_new", "sato_additional_equipment(>=2.0)", function() {
    ::mods_hookExactClass("entity/tactical/humans/mercenary", function(m) {
        local assignRandomEquipment = ::mods_getMember(m, "assignRandomEquipment");

        m.assignRandomEquipment = function() {
            assignRandomEquipment();

            if (this.m.Items.getItemAtSlot(this.Const.ItemSlot.Head) != null)
            {
                this.m.Items.unequip(this.m.Items.getItemAtSlot(this.Const.ItemSlot.Head));

                local helmetList = [
                    "scripts/items/helmets/nasal_helmet",
                    "scripts/items/helmets/nasal_helmet_with_mail",
                    "scripts/items/helmets/mail_coif",
                    "scripts/items/helmets/reinforced_mail_coif",
                    "scripts/items/helmets/headscarf",
                    "scripts/items/helmets/kettle_hat",
                    "scripts/items/helmets/kettle_hat_with_mail",
                    "scripts/items/helmets/flat_top_helmet",
                    "scripts/items/helmets/flat_top_with_mail",
                    "scripts/items/helmets/closed_flat_top_helmet",
                    "scripts/items/helmets/closed_mail_coif",
                    "scripts/items/helmets/bascinet_with_mail"
                ];

                if (this.Const.DLC.Wildmen)
                {
                    helmetList.extend([
                        "scripts/items/helmets/nordic_helmet",
                        "scripts/items/helmets/steppe_helmet_with_mail"
                    ]);
                }

                helmetList.extend([
                    "scripts/items/helmets/closed_conic_helmet"
                ]);

                this.m.Items.equip(this.new(helmetList[this.Math.rand(1, helmetList.len() - 1)]));
            }
        };
    });
});
