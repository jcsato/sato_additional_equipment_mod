hood_with_mouth_piece <- inherit("scripts/items/helmets/helmet", {
	m = {},
	function create() {
		helmet.create();
		m.ID = "armor.head.hood_with_mouth_piece";
		m.Name = "Hood with Mouth Piece";
		m.Description = "A simple hood to protect against weather and scratches, with a piece of cloth covering the lower face.";
		m.ShowOnCharacter = true;
		m.IsDroppedAsLoot = true;
		m.HideHair = true;
		m.HideBeard = true;
		m.ReplaceSprite = true;

		m.VariantString = "helmet_sae";

		local variants = [ 19, 20 ];
		m.Variant = variants[Math.rand(0, variants.len() - 1)];
		updateVariant();

		m.ImpactSound = Const.Sound.ArmorLeatherImpact;
		m.InventorySound = Const.Sound.ClothEquip;

		m.Value = 65;
		m.Condition = 40;
		m.ConditionMax = 40;
		m.StaminaModifier = 0;
	}
});

