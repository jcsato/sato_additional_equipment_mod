::mods_queue("sato_additional_equipment_distributor_variants_only", "sato_additional_equipment(>=2.0)", function() {
    ::mods_hookExactClass("entity/tactical/humans/knight", function(k) {
        local assignRandomEquipment = ::mods_getMember(k, "assignRandomEquipment");

        k.assignRandomEquipment = function() {
            assignRandomEquipment();

            local armor = this.m.Items.getItemAtSlot(this.Const.ItemSlot.Body);
            if (armor.getID() == "armor.body.coat_of_plates" && armor.getVariant() != 37) {
                armor.setVariant(37);
                armor.updateVariant();
                armor.updateAppearance();
            } else if (armor.getID() == "armor.body.coat_of_scales" && armor.getVariant() != 38) {
                armor.setVariant(38);
                armor.updateVariant();
                armor.updateAppearance();
            }
        }

    });
});
