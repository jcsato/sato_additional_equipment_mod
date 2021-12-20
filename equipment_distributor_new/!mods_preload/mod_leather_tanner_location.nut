::mods_queue("sato_additional_equipment_distributor_new", "sato_additional_equipment(>=2.0)", function() {
    ::mods_hookExactClass("entity/world/attached_location/leather_tanner_location", function(ltl) {
        local onUpdateShopList = ::mods_getMember(ltl, "onUpdateShopList");

        ltl.onUpdateShopList = function( _id, _list )
        {
            if (_id == "building.armorsmith") {
                _list.push({
                    R = 45,
                    P = 1.0,
                    S = "helmets/closed_conic_helmet"
                });
            }
            onUpdateShopList( _id, _list );
        }
    });
});
