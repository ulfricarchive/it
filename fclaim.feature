Feature: /f claim

	Used by players to claim land for their faction.
	Players cannot interact with anything in the land unless they are in the faction of the land.
	The items lore is directions on how to use
	Directions:
	Left click your first claiming location
	right click your second location
	shift and left click to claim your selected points,
	and right click twice to clear your points
	
	Rules:
	Selected points must be in wilderness
	Selected points must be at least 5 blocks apart
	
	
		Scenario: a player is not in a faction
			Given the player is not in a faction
			When the player tries to claim
			Then inform the player they must be in a faction
		
		Scenario: a player is not captain
			Given the player is in a faction
			When the player tries to claim
			And the player is not captain rank
			Then inform the player they do not have permission
			
		Scenario: a player claims land
			Given a player is in a faction
			When the player tries to claim
			And the player has permission to claim
			And the player selects a first point
			And the player selects a sufficient second point
			And the player has the sufficient funds to claim the land
			And the player confirms the claim
			Then the players faction owns that land