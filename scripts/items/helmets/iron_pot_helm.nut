this.iron_pot_helm <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.iron_pot_helm";
		this.m.Name = "Iron Pot Helm";
		this.m.Description = "A thick iron pot helm with a curved brim. Extremely sturdy, but extraordinarily heavy and hard to breathe in.";
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		local variants = [
			411,
			411,
			411,
			411,
			411,
			412, // Black
			412, // Black
			412, // Black
			413, // Red-Orange
			414, // Blue-White
			415, // Green-White-Yellow
			416  // Red
		];
		this.m.Variant = variants[this.Math.rand(0, variants.len() - 1)];
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;
		this.m.Value = 3800;
		this.m.Condition = 330;
		this.m.ConditionMax = 330;
		this.m.StaminaModifier = -28;
		this.m.Vision = -3;
	}

	function setPlainVariant()
	{
		this.setVariant(411);
	}

	function onPaint( _color )
	{
		switch(_color)
		{
		case this.Const.Items.Paint.None:
			this.m.Variant = 411;
			break;

		case this.Const.Items.Paint.Black:
			this.m.Variant = 412;
			break;

		case this.Const.Items.Paint.OrangeRed:
			this.m.Variant = 413;
			break;

		case this.Const.Items.Paint.WhiteBlue:
			this.m.Variant = 414;
			break;

		case this.Const.Items.Paint.WhiteGreenYellow:
			this.m.Variant = 415;
			break;

		case this.Const.Items.Paint.Red:
			this.m.Variant = 416;
			break;
		}

		this.updateVariant();
		this.updateAppearance();
	}

});

