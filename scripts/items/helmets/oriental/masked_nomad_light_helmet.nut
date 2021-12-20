this.masked_nomad_light_helmet <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.masked_nomad_light_helmet";
		this.m.Name = "Masked Nomad Light Helmet";
		this.m.Description = "A light helmet typical of the southern desert regions. A mask woven with light mail protects the wearer\'s face.";
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		this.m.ReplaceSprite = true;
		this.m.VariantString = "helmet_southern";
		local variants = [
			101,	// Default
			101,
			101,
			101,
			101,
			102,	// Yellow-Red
			// 103,	// Blue-White
			104,	// Red-Black
			// 105,	// Green-Blue
			106,	// Red
			107,	// Green
			108,	// Blue-Black
			// 109,	// White
			// 110,	// White-Black
			111,	// Black-off-white
			113,	// Purple
			114		// Biege-Black
		];
		this.m.Variant = variants[this.Math.rand(0, variants.len() - 1)];
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;
		this.m.Value = 180;
		this.m.Condition = 90;
		this.m.ConditionMax = 90;
		this.m.StaminaModifier = -4;
	}

});
