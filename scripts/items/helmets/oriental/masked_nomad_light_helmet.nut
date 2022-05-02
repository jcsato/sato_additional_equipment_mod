masked_nomad_light_helmet <- inherit("scripts/items/helmets/helmet", {
	m = {},
	function create() {
		helmet.create();
		m.ID = "armor.head.masked_nomad_light_helmet";
		m.Name = "Masked Nomad Light Helmet";
		m.Description = "A light helmet typical of the southern desert regions. A mask woven with light mail protects the wearer\'s face.";

		m.ShowOnCharacter = true;
		m.IsDroppedAsLoot = true;
		m.HideHair = true;
		m.HideBeard = true;
		m.ReplaceSprite = true;

		m.VariantString = "helmet_sae_southern";

		/*
		 * 01 -> Default
		 * 02 -> Yellow-Red
		 * 04 -> Red-Black
		 * 06 -> Red
		 * 07 -> Green
		 * 08 -> Blue-Black
		 * 11 -> Black-Off-white
		 * 13 -> Purple
		 */
		local variants = [ 1, 1, 1, 1, 1, 2, 4, 6, 7, 8, 11, 13 ];
		m.Variant = variants[Math.rand(0, variants.len() - 1)];
		updateVariant();

		m.ImpactSound = Const.Sound.ArmorChainmailImpact;
		m.InventorySound = Const.Sound.ArmorChainmailImpact;

		m.Value = 180;
		m.Condition = 90;
		m.ConditionMax = 90;
		m.StaminaModifier = -4;
	}

});
