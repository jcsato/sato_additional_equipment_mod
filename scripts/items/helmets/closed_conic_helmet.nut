closed_conic_helmet <- inherit("scripts/items/helmets/helmet", {
	m = {},
	function create() {
		helmet.create();
		m.ID = "armor.head.closed_conic_helmet";
		m.Name = "Closed Conic Helmet";
		m.Description = "A closed conic helmet with complete faceguard. Hard to breathe in and limiting the field of view.";
		m.ShowOnCharacter = true;
		m.IsDroppedAsLoot = true;
		m.HideHair = true;
		m.HideBeard = true;

		m.VariantString = "helmet_sae";

		/*
		 * 1 -> Default
		 * 2 -> Blue
		 * 3 -> Green
		 * 4 -> Red-Yellow
		 * 5 -> Black
		 * 6 -> Red
		 */
		local variants = [ 1, 1, 1, 1, 1, 1, 1, 2, 3, 4, 5, 6 ];
		m.Variant = variants[Math.rand(0, variants.len() - 1)];
		updateVariant();

		m.ImpactSound = Const.Sound.ArmorChainmailImpact;
		m.InventorySound = Const.Sound.ArmorChainmailImpact;

		m.Value = 700;
		m.Condition = 145;
		m.ConditionMax = 145;
		m.StaminaModifier = -8;
		m.Vision = -3;
	}

	function setPlainVariant() {
		setVariant(1);
	}

	function onPaint( _color ) {
		switch(_color)
		{
		case Const.Items.Paint.None:
			m.Variant = 1;
			break;

		case Const.Items.Paint.Black:
			m.Variant = 5;
			break;

		case Const.Items.Paint.WhiteBlue:
			m.Variant = 2;
			break;

		case Const.Items.Paint.WhiteGreenYellow:
			m.Variant = 3;
			break;

		case Const.Items.Paint.OrangeRed:
			m.Variant = 4;
			break;

		case Const.Items.Paint.Red:
			m.Variant = 6;
			break;
		}

		updateVariant();
		updateAppearance();
	}

});

