::mods_queue("sato_additional_equipment_distributor_new", "sato_additional_equipment(>=2.0)", function() {
    ::mods_hookBaseClass("entity/world/settlement", function(s) {
        while(!("onUpdateShopList" in s)) s = s[s.SuperName];

        local onUpdateShopList = s.onUpdateShopList;

        s.onUpdateShopList = function( _id, _list )
        {
            if (_id == "building.armorsmith") {
                if (this.Const.DLC.Unhold) {
                    _list.extend([
                        {
                            R = 85,
                            P = 1.0,
                            S = "helmets/visored_barbute_helmet"
                        }
                    ]);
                }
            }
            onUpdateShopList( _id, _list );
        }
    });
});
