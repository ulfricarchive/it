feature: /f leader <player>

	Set another faction member as a leader of your faction.
	Once doing so, the former leader becomes an officer.
	
	This is required if a leader wants to step down and make a more dedicated
	faction member the leader of the faction.
	Also, if the leader of a faction does not want to disband the faction, but wants to leave,
	they must assign leadership to another member.
	
		Scenario: a player is not in a faction
			Given a player is not in a faction
			When the player attempts to assign leadership to another player
			Then inform the player they are not in a faction
		
		Scenario: a player is not leader of their faction
			Given a player is in a faction
			And the player is not leader
			When the player attempts to assign leadership to another player
			Then inform the player they don't have permission
			
		Scenario: the target player is not in the faction
			Given a player is in a faction
			And the player is the leader
			When the player attempts to assign leadership to another player
			And the target player is not in the faction
			Then inform the leader the player could not be found
			
		Scenario: a player successfully transfers leadership
			Given a player is in a faction
			And the player is the leader
			When the player attempts to assign leadership to another player
			And the target player is in the faction
			Then make the target player the faction leader
			And the former owner an officer in the faction