bascinet_with_klappvisier <- inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		helmet.create();
		m.ID = "armor.head.bascinet_with_klappvisier";
		m.Name = "Bascinet with Klappvisier";
		m.Description = "A bascinet with a rudimentary visor, worn with a mail aventail.";
		m.ShowOnCharacter = true;
		m.IsDroppedAsLoot = true;
		m.HideHair = true;
		m.HideBeard = true;

		m.VariantString = "helmet_sae";

		/*
		 * 37 -> Default
		 * 38 -> Black
		 * 39 -> Red-Orange
		 * 40 -> Blue-White
		 * 41 -> Green-White-Yellow
		 * 42 -> Red
		 */
		local variants = [ 37, 38, 39, 40, 41, 42 ];
		m.Variant = variants[Math.rand(0, variants.len() - 1)];
		updateVariant();

		m.ImpactSound = Const.Sound.ArmorHalfplateImpact;
		m.InventorySound = Const.Sound.ArmorHalfplateImpact;

		m.Value = 2750;
		m.Condition = 270;
		m.ConditionMax = 270;
		m.StaminaModifier = -18;
		m.Vision = -3;
	}

	function setPlainVariant() {
		setVariant(37);
	}

	function onPaint( _color ) {
		switch(_color) {
			case Const.Items.Paint.None:
				m.Variant = 37;
				break;

			case Const.Items.Paint.Black:
				m.Variant = 38;
				break;

			case Const.Items.Paint.WhiteBlue:
				m.Variant = 40;
				break;

			case Const.Items.Paint.WhiteGreenYellow:
				m.Variant = 41;
				break;

			case Const.Items.Paint.OrangeRed:
				m.Variant = 39;
				break;

			case Const.Items.Paint.Red:
				m.Variant = 42;
				break;
		}

		updateVariant();
		updateAppearance();
	}

});

