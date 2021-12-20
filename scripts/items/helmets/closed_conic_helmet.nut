this.closed_conic_helmet <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.closed_conic_helmet";
		this.m.Name = "Closed Conic Helmet";
		this.m.Description = "A closed conic helmet with complete faceguard. Hard to breathe in and limiting the field of view.";
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		local variants = [
			301,
			301,
			301,
			301,
			301,
			301,
			301,
			302, // Blue
			303, // Green
			304, // Red-Yellow
			305, // Black
			306  // Red
		];
		this.m.Variant = variants[this.Math.rand(0, variants.len() - 1)];
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;
		this.m.Value = 700;
		this.m.Condition = 145;
		this.m.ConditionMax = 145;
		this.m.StaminaModifier = -8;
		this.m.Vision = -3;
	}

	function setPlainVariant()
	{
		this.setVariant(301);
	}

	function onPaint( _color )
	{
		switch(_color)
		{
		case this.Const.Items.Paint.None:
			this.m.Variant = 301;
			break;

		case this.Const.Items.Paint.Black:
			this.m.Variant = 305;
			break;

		case this.Const.Items.Paint.WhiteBlue:
			this.m.Variant = 302;
			break;

		case this.Const.Items.Paint.WhiteGreenYellow:
			this.m.Variant = 303;
			break;

		case this.Const.Items.Paint.OrangeRed:
			this.m.Variant = 304;
			break;

		case this.Const.Items.Paint.Red:
			this.m.Variant = 306;
			break;
		}

		this.updateVariant();
		this.updateAppearance();
	}

});

