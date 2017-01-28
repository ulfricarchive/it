feature: /f sethome

	Set the home of the faction.
	Only captains and leaders can set the faction home.
	Faction homes must be inside their own claim.
	
	This is necessary so players can teleport to their base with /f home.
	
		Scenario: a player is not in a faction
			Given a player is not in a faction
			When the player attempts to set the faction home
			Then inform the player they must be in a faction
			
		Scenario: a player does not have permission
			Given a player is in a faction
			And the player is member
			When the player attempts to set the faction home
			Then inform the player they don't have permission
			
		Scenario: the area is not inside the factions claim
			Given a player is in a faction
			And the player has permission to claim
			When the player attempts to set the faction home
			And the point is not inside their faction claim
			Then inform the player they can't claim there
			
		Scenario: a player successfully sets the faction home
			Given a player is in a faction
			And the player has permission
			When the player attempts to set the faction home
			And the point is inside their faction claim
			Then set the faction home for the faction