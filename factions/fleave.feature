feature: /f leave
	
	Players can leave their current faction.
	Necessary if a player wants to move on to another faction.
	
	Leaders cannot leave their faction without assigning a new leader.
	
		Scenario: a player is not in a faction
			Given a player is not in a faction
			When the player attempts to leave a faction
			Then inform the player they are not in a faction
			
		Scenario: a player is the leader of their faction
			Given a player is in a faction
			And the player is the leader of the faction
			When the player attempts to leave a faction
			Then inform the player they must assign a new leader first
		
		Scenario: a player successfully leaves their faction
			Given a player is in a faction
			And the player is not leader of the faction
			When the player attempts to leave a faction
			Then remove the player from the faction
			