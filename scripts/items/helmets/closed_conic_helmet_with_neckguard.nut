closed_conic_helmet_with_neckguard <- inherit("scripts/items/helmets/helmet", {
	m = {},
	function create() {
		helmet.create();
		m.ID = "armor.head.closed_conic_helmet_with_neckguard";
		m.Name = "Closed and Padded Conic Helmet";
		m.Description = "A closed conic helmet with complete faceguard and a padded coif underneath. Hard to breathe in and limiting the field of view.";
		m.ShowOnCharacter = true;
		m.IsDroppedAsLoot = true;
		m.HideHair = true;
		m.HideBeard = true;

		m.VariantString = "helmet_sae";

		/*
		 * 07 -> Default
		 * 08 -> Blue
		 * 09 -> Green
		 * 10 -> Red-Yellow
		 * 11 -> Black
		 * 12 -> Red
		 */
		local variants = [ 7, 7, 7, 7, 7, 7, 7, 8, 9, 10, 11, 12 ];
		m.Variant = variants[Math.rand(0, variants.len() - 1)];
		updateVariant();

		m.ImpactSound = Const.Sound.ArmorChainmailImpact;
		m.InventorySound = Const.Sound.ArmorChainmailImpact;

		m.Value = 850;
		m.Condition = 160;
		m.ConditionMax = 160;
		m.StaminaModifier = -9;
		m.Vision = -3;
	}

	function setPlainVariant() {
		setVariant(7);
	}

	function onPaint( _color )
	{
		switch(_color) {
			case Const.Items.Paint.None:
				m.Variant = 7;
				break;

			case Const.Items.Paint.Black:
				m.Variant = 11;
				break;

			case Const.Items.Paint.WhiteBlue:
				m.Variant = 8;
				break;

			case Const.Items.Paint.WhiteGreenYellow:
				m.Variant = 9;
				break;

			case Const.Items.Paint.OrangeRed:
				m.Variant = 10;
				break;

			case Const.Items.Paint.Red:
				m.Variant = 12;
				break;
		}

		updateVariant();
		updateAppearance();
	}

});

