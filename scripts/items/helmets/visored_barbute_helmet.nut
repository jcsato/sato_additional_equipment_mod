visored_barbute_helmet <- inherit("scripts/items/helmets/helmet", {
	m = {},
	function create() {
		helmet.create();
		m.ID = "armor.head.visored_barbute_helmet";
		m.Name = "Barbute with Visor";
		m.Description = "A barbute helmet, already uncommon in these lands, made moreso by the inclusion of a full visor. It is made from especially light and durable steel.";
		m.ShowOnCharacter = true;
		m.IsDroppedAsLoot = true;
		m.HideHair = true;
		m.HideBeard = true;

		m.VariantString = "helmet_sae";

		/*
		 * 21 -> Default
		 * 22 -> Black
		 * 23 -> Red-Orange
		 * 24 -> Blue-White
		 * 25 -> Green-White-Yellow
		 * 26 -> Red
		 */
		local variants = [ 21, 21, 21, 21, 21, 21, 21, 22, 23, 24, 25, 26 ];
		m.Variant = variants[Math.rand(0, variants.len() - 1)];
		updateVariant();

		m.ImpactSound = Const.Sound.ArmorChainmailImpact;
		m.InventorySound = Const.Sound.ArmorChainmailImpact;

		m.Value = 3600;
		m.Condition = 240;
		m.ConditionMax = 240;
		m.StaminaModifier = -12;
		m.Vision = -3;
	}

	function setPlainVariant() {
		setVariant(21);
	}

	function onPaint( _color ) {
		switch(_color) {
			case Const.Items.Paint.None:
				m.Variant = 21;
				break;

			case Const.Items.Paint.Black:
				m.Variant = 22;
				break;

			case Const.Items.Paint.WhiteBlue:
				m.Variant = 24;
				break;

			case Const.Items.Paint.WhiteGreenYellow:
				m.Variant = 25;
				break;

			case Const.Items.Paint.OrangeRed:
				m.Variant = 23;
				break;

			case Const.Items.Paint.Red:
				m.Variant = 26;
				break;
		}

		updateVariant();
		updateAppearance();
	}

});

