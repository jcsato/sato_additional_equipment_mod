this.closed_conic_helmet_with_mail <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.closed_conic_helmet_with_mail";
		this.m.Name = "Closed Conic Helmet with Mail";
		this.m.Description = "A closed conic helmet with complete faceguard and a mail coif covering the neck. Great in the way of protection but hard to breathe in and limiting the field of view.";
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		local variants = [
			313,
			313,
			313,
			313,
			313,
			313,
			313,
			314, // Blue
			315, // Green
			316, // Red-Yellow
			317, // Black
			318  // Red
		];
		this.m.Variant = variants[this.Math.rand(0, variants.len() - 1)];
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;
		this.m.Value = 2450;
		this.m.Condition = 250;
		this.m.ConditionMax = 250;
		this.m.StaminaModifier = -16;
		this.m.Vision = -3;
	}

	function setPlainVariant()
	{
		this.setVariant(313);
	}

	function onPaint( _color )
	{
		switch(_color)
		{
		case this.Const.Items.Paint.None:
			this.m.Variant = 313;
			break;

		case this.Const.Items.Paint.Black:
			this.m.Variant = 317;
			break;

		case this.Const.Items.Paint.WhiteBlue:
			this.m.Variant = 314;
			break;

		case this.Const.Items.Paint.WhiteGreenYellow:
			this.m.Variant = 315;
			break;

		case this.Const.Items.Paint.OrangeRed:
			this.m.Variant = 316;
			break;

		case this.Const.Items.Paint.Red:
			this.m.Variant = 318;
			break;
		}

		this.updateVariant();
		this.updateAppearance();
	}

});

