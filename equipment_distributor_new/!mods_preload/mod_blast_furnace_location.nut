::mods_queue("sato_additional_equipment_distributor_new", "sato_additional_equipment(>=2.3)", function() {
    ::mods_hookExactClass("entity/world/attached_location/blast_furnace_location", function(bfl) {
        local onUpdateShopList = ::mods_getMember(bfl, "onUpdateShopList");

        bfl.onUpdateShopList = function( _id, _list )
        {
            if (_id == "building.armorsmith") {
                _list.push({
                    R = 30,
                    P = 1.0,
                    S = "helmets/closed_conic_helmet"
                });
                _list.push({
                    R = 35,
                    P = 1.0,
                    S = "helmets/closed_conic_helmet_with_neckguard"
                });
                _list.push({
                    R = 30,
                    P = 1.0,
                    S = "helmets/closed_conic_helmet_with_mail"
                });
                _list.push({
                    R = 45,
                    P = 1.0,
                    S = "helmets/visored_plumed_bascinet_helmet"
                });
                _list.push({
                    R = 50,
                    P = 1.0,
                    S = "helmets/hooded_full_helm"
                });
                _list.push({
                    R = 65,
                    P = 1.0,
                    S = "helmets/visored_barbute_helmet"
                });
                _list.push({
                    R = 85,
                    P = 1.0,
                    S = "helmets/iron_pot_helm"
                });
            }
            onUpdateShopList( _id, _list );
        }
    });
});
