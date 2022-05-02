iron_pot_helm <- inherit("scripts/items/helmets/helmet", {
	m = {},
	function create() {
		helmet.create();
		m.ID = "armor.head.iron_pot_helm";
		m.Name = "Iron Pot Helm";
		m.Description = "A thick iron pot helm with a curved brim. Extremely sturdy, but extraordinarily heavy and hard to breathe in.";
		m.ShowOnCharacter = true;
		m.IsDroppedAsLoot = true;
		m.HideHair = true;
		m.HideBeard = true;

		m.VariantString = "helmet_sae";

		/*
		 * 28 -> Default
		 * 29 -> Black
		 * 30 -> Red-Orange
		 * 31 -> Blue-White
		 * 32 -> Green-White-Yellow
		 * 33 -> Red
		 */
		local variants = [ 28, 28, 28, 28, 28, 29, 29, 29, 30, 31, 32, 33 ];
		m.Variant = variants[Math.rand(0, variants.len() - 1)];
		updateVariant();

		m.ImpactSound = Const.Sound.ArmorChainmailImpact;
		m.InventorySound = Const.Sound.ArmorChainmailImpact;

		m.Value = 3800;
		m.Condition = 330;
		m.ConditionMax = 330;
		m.StaminaModifier = -28;
		m.Vision = -3;
	}

	function setPlainVariant() {
		setVariant(28);
	}

	function onPaint( _color ) {
		switch(_color) {
			case Const.Items.Paint.None:
				m.Variant = 28;
				break;

			case Const.Items.Paint.Black:
				m.Variant = 29;
				break;

			case Const.Items.Paint.OrangeRed:
				m.Variant = 30;
				break;

			case Const.Items.Paint.WhiteBlue:
				m.Variant = 31;
				break;

			case Const.Items.Paint.WhiteGreenYellow:
				m.Variant = 32;
				break;

			case Const.Items.Paint.Red:
				m.Variant = 33;
				break;
		}

		updateVariant();
		updateAppearance();
	}

});

