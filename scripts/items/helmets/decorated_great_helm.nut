decorated_great_helm <- inherit("scripts/items/helmets/helmet", {
	m = {},
	function create() {
		helmet.create();
		m.ID = "armor.head.decorated_great_helm";
		m.Name = "Decorated Great Helm";
		m.Description = "This well-loved helmet offers extraordinary protection, but its antiquated design is cumbersome and difficult to breathe in.";
		m.ShowOnCharacter = true;
		m.IsDroppedAsLoot = true;
		m.HideHair = true;
		m.HideBeard = true;

		m.VariantString = "helmet_sae";

		/*
		 * 34 -> Red-Blue
		 * 35 -> Turquoise-Gold
		 * 36 -> White-Black
		 */
		local variants = [ 34, 35, 36 ];
		m.Variant = variants[Math.rand(0, variants.len() - 1)];
		updateVariant();

		m.ImpactSound = Const.Sound.ArmorChainmailImpact;
		m.InventorySound = Const.Sound.ArmorChainmailImpact;

		m.Value = 3850;
		m.Condition = 325;
		m.ConditionMax = 325;
		m.StaminaModifier = -23;
		m.Vision = -3;
	}
});
