closed_conic_helmet_with_mail <- inherit("scripts/items/helmets/helmet", {
	m = {},
	function create() {
		helmet.create();
		m.ID = "armor.head.closed_conic_helmet_with_mail";
		m.Name = "Closed Conic Helmet with Mail";
		m.Description = "A closed conic helmet with complete faceguard and a mail coif covering the neck. Great in the way of protection but hard to breathe in and limiting the field of view.";
		m.ShowOnCharacter = true;
		m.IsDroppedAsLoot = true;
		m.HideHair = true;
		m.HideBeard = true;

		m.VariantString = "helmet_sae";

		/*
		 * 13 -> Default
		 * 14 -> Blue
		 * 15 -> Green
		 * 16 -> Red-Yellow
		 * 17 -> Black
		 * 18 -> Red
		 */
		local variants = [ 13, 13, 13, 13, 13, 13, 13, 14, 15, 16, 17, 18 ];
		m.Variant = variants[Math.rand(0, variants.len() - 1)];
		updateVariant();

		m.ImpactSound = Const.Sound.ArmorChainmailImpact;
		m.InventorySound = Const.Sound.ArmorChainmailImpact;

		m.Value = 2450;
		m.Condition = 250;
		m.ConditionMax = 250;
		m.StaminaModifier = -16;
		m.Vision = -3;
	}

	function setPlainVariant() {
		setVariant(13);
	}

	function onPaint( _color )
	{
		switch(_color) {
			case Const.Items.Paint.None:
				m.Variant = 13;
				break;

			case Const.Items.Paint.Black:
				m.Variant = 17;
				break;

			case Const.Items.Paint.WhiteBlue:
				m.Variant = 14;
				break;

			case Const.Items.Paint.WhiteGreenYellow:
				m.Variant = 15;
				break;

			case Const.Items.Paint.OrangeRed:
				m.Variant = 16;
				break;

			case Const.Items.Paint.Red:
				m.Variant = 18;
				break;
		}

		updateVariant();
		updateAppearance();
	}

});

