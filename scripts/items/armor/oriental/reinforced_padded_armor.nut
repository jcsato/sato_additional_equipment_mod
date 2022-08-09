reinforced_padded_armor <- inherit("scripts/items/armor/armor", {
	m = { },
	function create()
	{
		armor.create();

		m.ID					= "armor.body.reinforced_padded_armor";
		m.Name					= "Reinforced Padded Armor";
		m.Description			= "A transitional armor composed of reinforced leather and metal plates protecting key areas, worn with a dark cloak.";
		m.IsDroppedAsLoot		= true;
		m.ShowOnCharacter		= true;

		m.VariantString			= "body_sae_southern";
		m.Variant = 1;
		updateVariant();

		m.ImpactSound			= Const.Sound.ArmorLeatherImpact;
		m.InventorySound		= Const.Sound.ClothEquip;

		m.Value					= 380;

		m.Condition				= 100;
		m.ConditionMax			= 100;
		m.StaminaModifier		= -9;
	}
});
