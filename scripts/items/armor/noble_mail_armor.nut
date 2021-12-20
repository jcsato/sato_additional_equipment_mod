this.noble_mail_armor <- this.inherit("scripts/items/armor/armor", {
	m = {},
	function create()
	{
		this.armor.create();
		this.m.ID = "armor.body.noble_mail";
		this.m.Name = "Noble Mail";
		this.m.Description = "A truly masterfully crafted set of mail armor. Very light and flexible to reduce encumberance while still offering good protection.";
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		local variants = [
			87,
			87,
			87,
			910, // White
			911, // Black
			912, // Blue-White
			913, // Blue-Green
			914, // Yellow-Red
			915, // Blue-Red
			916, // Red
			917, // Yellow-Green
			918, // White-Green
            919  // Blue
		];
		this.m.Variant = variants[this.Math.rand(0, variants.len() - 1)];
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;
		this.m.Value = 2500;
		this.m.Condition = 160;
		this.m.ConditionMax = 160;
		this.m.StaminaModifier = -15;
	}

});

