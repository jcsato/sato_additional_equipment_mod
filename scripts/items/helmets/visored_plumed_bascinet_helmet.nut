this.visored_plumed_bascinet_helmet <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.visored_plumed_bascinet_helmet";
		this.m.Name = "Plumed Bascinet with Visor";
		this.m.Description = "A plumed bascinet with a moveable visor, worn atop a thick mail coif.";
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		local variants = [
			410
		];
		this.m.Variant = variants[this.Math.rand(0, variants.len() - 1)];
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 2750;
		this.m.Condition = 270;
		this.m.ConditionMax = 270;
		this.m.StaminaModifier = -18;
		this.m.Vision = -3;
	}

});

