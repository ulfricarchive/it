Feature: /f ally <factionName>

	Used by players in factions to ally other factions.
	Allying factions is needed to allow two factions to team together.
	The amount of allys a faction can have varies in different maps.
	This is because having little or no allies promotes more PvP.
	
		Scenario: a player is not in a faction
			Given a player is not in a faction
			When the player allies another faction
			Then inform the player they must be in a faction
			
		Scenario: a player doesnt have permission
			Given a player is in a faction
			When the player allies another faction
			And the player is not captain rank
			Then inform the player they do not have permission
		
		Scenario: a faction has the max amount of allies
			Given a player is in a faction
			And the player has permission to ally
			When the player allies another faction
			And a faction has the max amount of allies
			Then inform the player they can not ally that faction
			
		Scenario: an ally request is sent
			Given a player is in a faction
			And the player has permission to ally
			When the player allies another faction
			Then inform the target faction they have been requested to ally
		
		Scenario: an ally request is accepted
			Given a player is in a faction
			And the player has permission to ally
			When the player allies another faction
			And the faction doesnt have max allies
			And the faction allies the players faction back
			Then the two factions are now allied	
