this.mail_and_lamellar_plating <- this.inherit("scripts/items/armor/armor", {
	m = {},
	function create()
	{
		this.armor.create();
		this.m.ID = "armor.body.mail_and_lamellar_plating";
		this.m.Name = "Mail with Lamellar Plating";
		this.m.Description = "A lamellar shirt made from interlapping metal plates worn atop a mail shirt.";
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		this.m.VariantString = "body_southern";
		local variants = [
			2,  // Default
			40, // Green
			41  // Purple
		];
		this.m.Variant = variants[this.Math.rand(0, variants.len() - 1)];
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;
		this.m.Value = 750;
		this.m.Condition = 135;
		this.m.ConditionMax = 135;
		this.m.StaminaModifier = -15;
	}

});

