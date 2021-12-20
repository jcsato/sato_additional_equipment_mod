this.closed_conic_helmet_with_neckguard <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.closed_conic_helmet_with_neckguard";
		this.m.Name = "Closed and Padded Conic Helmet";
		this.m.Description = "A closed conic helmet with complete faceguard and a padded coif underneath. Hard to breathe in and limiting the field of view.";
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		local variants = [
			307,
			307,
			307,
			307,
			307,
			307,
			307,
			308, // Blue
			309, // Green
			310, // Red-Yellow
			311, // Black
			312  // Red
		];
		this.m.Variant = variants[this.Math.rand(0, variants.len() - 1)];
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;
		this.m.Value = 850;
		this.m.Condition = 160;
		this.m.ConditionMax = 160;
		this.m.StaminaModifier = -9;
		this.m.Vision = -3;
	}

	function setPlainVariant()
	{
		this.setVariant(307);
	}

	function onPaint( _color )
	{
		switch(_color)
		{
		case this.Const.Items.Paint.None:
			this.m.Variant = 307;
			break;

		case this.Const.Items.Paint.Black:
			this.m.Variant = 311;
			break;

		case this.Const.Items.Paint.WhiteBlue:
			this.m.Variant = 308;
			break;

		case this.Const.Items.Paint.WhiteGreenYellow:
			this.m.Variant = 309;
			break;

		case this.Const.Items.Paint.OrangeRed:
			this.m.Variant = 310;
			break;

		case this.Const.Items.Paint.Red:
			this.m.Variant = 312;
			break;
		}

		this.updateVariant();
		this.updateAppearance();
	}

});

