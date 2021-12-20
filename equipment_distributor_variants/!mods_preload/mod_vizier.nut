::mods_queue("sato_additional_equipment_distributor_new", "sato_additional_equipment(>=2.0)", function() {
    ::mods_hookExactClass("entity/tactical/humans/vizier", function(o) {
        local assignRandomEquipment = ::mods_getMember(o, "assignRandomEquipment");

        o.assignRandomEquipment = function() {
            assignRandomEquipment();

            local banner = this.World.FactionManager.getFaction(this.getFaction()).getBanner();

            local armor = this.m.Items.getItemAtSlot(this.Const.ItemSlot.Body);
            if (armor.getID() == "armor.body.mail_and_lamellar_plating") {
                if (banner == 12) {
                    // green
                    armor.setVariant(40);
                    armor.updateVariant();
                    armor.updateAppearance();
                } else if (banner == 13) {
                    // purple
                    armor.setVariant(41);
                    armor.updateVariant();
                    armor.updateAppearance();
                } else if (banner == 14) {
                    // red
                    armor.setVariant(2);
                    armor.updateVariant();
                    armor.updateAppearance();
                }
            }
        }

    });
});
