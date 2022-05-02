visored_plumed_bascinet_helmet <- inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		helmet.create();
		m.ID = "armor.head.visored_plumed_bascinet_helmet";
		m.Name = "Plumed Bascinet with Visor";
		m.Description = "A plumed bascinet with a moveable visor, worn atop a thick mail coif.";
		m.ShowOnCharacter = true;
		m.IsDroppedAsLoot = true;
		m.HideHair = true;
		m.HideBeard = true;

		m.VariantString = "helmet_sae";

		local variants = [ 27 ];
		m.Variant = variants[Math.rand(0, variants.len() - 1)];
		updateVariant();

		m.ImpactSound = Const.Sound.ArmorHalfplateImpact;
		m.InventorySound = Const.Sound.ArmorHalfplateImpact;

		m.Value = 2750;
		m.Condition = 270;
		m.ConditionMax = 270;
		m.StaminaModifier = -18;
		m.Vision = -3;
	}

});

