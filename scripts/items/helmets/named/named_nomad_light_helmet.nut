named_nomad_light_helmet <- inherit("scripts/items/helmets/named/named_helmet", {
	m = {},
	function create() {
		named_helmet.create();
		m.ID = "armor.head.named_nomad_light_helmet";
		m.NameList = [ "Helmet of the Sands", "Decorated Nomad Helmet", "Vizier\'s Travel Turban", "Desert Viper\'s Crown", "Assassin Mask" ];
		m.Description = "A masterfully crafted helmet in the fashion of the southern desert regions. Decorated with gold inlay, it provides additional protection with cheek guards and a woven chainmail mask.";
		m.ShowOnCharacter = true;
		m.IsDroppedAsLoot = true;
		m.HideHair = true;
		m.HideBeard = true;
		m.ReplaceSprite = true;

		m.VariantString = "helmet_sae_southern_named";
		m.Variant = 1;
		updateVariant();

		m.ImpactSound = Const.Sound.ArmorChainmailImpact;
		m.InventorySound = Const.Sound.ArmorChainmailImpact;

		m.Value = 2000;
		m.Condition = 120;
		m.ConditionMax = 120;
		m.StaminaModifier = -6;

		randomizeValues();
	}

});
