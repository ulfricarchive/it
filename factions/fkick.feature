feature: /f kick <player>

	Remove players from your current faction.
	Must be at least captain to run this command on members.
	Captains cannot kick leaders, or other captains.
	
		Scenario: a player is not in a faciton
			Given a player is not in a faction
			When the player attempts to kick a target player
			Then inform the player they must be in a faction
		
		Scenario: a player does not have permission
			Given a player is in a faction
			And the player is not captain rank
			When the player attempts to kick a target player
			Then inform the player they do not have permission
			
		Scenario: the target player is not a member
			Given a player is in a faction
			And the player is captain rank
			When the player attempts to kick the target
			And the target player is not a member
			Then inform the player they can't kick that player
			
		Scenario: the target player cannot be found
			Given a player is in a faction
			And the player is captain rank
			When the player attempts to kick the target
			And the target cannot be found in the faction
			Then inform the player the target is not in the faction
			
		Scenario: a player successfully kicks a target
			Given a player is in a faction
			And the player is captain rank
			When the player attempts to kick a target player
			And the target player is a member
			Then remove the target player from the faction
			