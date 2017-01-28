feature: /f home

	Teleport to the faction home that is set with /f sethome
	In the overworld, you must wait 10 seconds without movement to be teleported.
	In the nether, you must wait 20 seconds without movement to be teleported.
	You cannot teleport home in the end.
	
	This is necessary to players can teleport back to their base
	when they are far away.
	
		Scenario: a player is not in a faction
			Given a player is not in a faction
			When the player attempts to teleport home
			Then inform the player they must be in a faction
			
		Scenario: a faction's home is not set
			Given a player is in a faction
			And the faction's home is not set
			When the player attempts to teleport home
			Then inform the player the home is not set
			
		Scenario: a player successfully teleports home
			Given a player is in a faction
			And the factions home is set
			And the player is not in the end
			When the player attempts to teleport home
			And the player is not hit for the teleport time
			Then teleport the player to the faction home