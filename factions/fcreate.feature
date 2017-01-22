Feature: /f create <factionName>

	Used by players to create factions for themselves and friends.
	Needed so players can play the game-mode and interact with others.
	
		Scenario: a player is already in a faction
			Given a player is already in a faction
			When the player creates a new faction
			Then inform the player they must leave their faction first
			
		Scenario: a faction name already exists
			Given a player is not in a faction
			When the player creates a new faction
			And the faction name already exists
			Then inform the player the name is already in use
			
		Scenario: a player successfully creates a faction
			Given a player is not in a faction
			When the player creates a new faction
			And the faction name is not in use
			Then the faction is successfully created