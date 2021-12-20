::mods_queue("sato_additional_equipment_distributor_variants_only", "sato_additional_equipment(>=2.0)", function() {
    ::mods_hookExactClass("entity/world/attached_location/blast_furnace_location", function(bfl) {
        local onUpdateShopList = ::mods_getMember(bfl, "onUpdateShopList");

        bfl.onUpdateShopList = function( _id, _list )
        {
            if (_id == "building.armorsmith") {
                _list.push({
                    R = 50,
                    P = 1.0,
                    S = "helmets/hooded_full_helm"
                });
            }
            onUpdateShopList( _id, _list );
        }
    });
});
