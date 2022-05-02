southern_conic_helmet_with_closed_mail <- inherit("scripts/items/helmets/helmet", {
	m = {},
	function create() {
		helmet.create();
		m.ID = "armor.head.southern_conic_helmet_with_closed_mail";
		m.Name = "Southern Conic Helmet with Closed Mail";
		m.Description = "A conic helmet with a full mail skirt protecting the face.";

		m.ShowOnCharacter = true;
		m.IsDroppedAsLoot = true;
		m.HideHair = true;
		m.HideBeard = true;
		m.ReplaceSprite = true;

		m.VariantString = "helmet_sae_southern";
		m.Variant = 16;
		updateVariant();

		m.ImpactSound = Const.Sound.ArmorChainmailImpact;
		m.InventorySound = Const.Sound.ArmorChainmailImpact;

		m.Value = 1900;
		m.Condition = 235;
		m.ConditionMax = 235;
		m.StaminaModifier = -15;
		m.Vision = -3;
	}

});
