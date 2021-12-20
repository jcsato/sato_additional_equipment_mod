this.visored_barbute_helmet <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.visored_barbute_helmet";
		this.m.Name = "Barbute with Visor";
		this.m.Description = "A barbute helmet, already uncommon in these lands, made moreso by the inclusion of a full visor. It is made from especially light and durable steel.";
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		local variants = [
			400,
			400,
			400,
			400,
			400,
			400,
			400,
			401, // Black
			402, // Red-Orange
			403, // Blue-White
			404, // Green-White-Yellow
			405  // Red
		];
		this.m.Variant = variants[this.Math.rand(0, variants.len() - 1)];
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;
		this.m.Value = 3600;
		this.m.Condition = 240;
		this.m.ConditionMax = 240;
		this.m.StaminaModifier = -12;
		this.m.Vision = -3;
	}

	function setPlainVariant()
	{
		this.setVariant(400);
	}

	function onPaint( _color )
	{
		switch(_color)
		{
		case this.Const.Items.Paint.None:
			this.m.Variant = 400;
			break;

		case this.Const.Items.Paint.Black:
			this.m.Variant = 401;
			break;

		case this.Const.Items.Paint.WhiteBlue:
			this.m.Variant = 403;
			break;

		case this.Const.Items.Paint.WhiteGreenYellow:
			this.m.Variant = 404;
			break;

		case this.Const.Items.Paint.OrangeRed:
			this.m.Variant = 402;
			break;

		case this.Const.Items.Paint.Red:
			this.m.Variant = 405;
			break;
		}

		this.updateVariant();
		this.updateAppearance();
	}

});

