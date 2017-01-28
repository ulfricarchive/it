feature: /f promote <player>

	Promote members to captains of the faction.
	This is necessary to give trusted members more permissions in the faction.
	
	Only leaders can promote members.
	Only members are promotable.
	
		Scenario: a player is not in a faction
			Given a player is not in a faction
			When the player attempts to promote a target player
			Then inform the player they must be in a faction
			
		Scenario: a player does not have permission
			Given a player is in a faction
			And the player is not leader of the faction
			When the player attempts to promote a target player
			Then inform the player they do not have permission
			
		Scenario: the target player is not promotable
			Given a player is in a faction
			And the player is the leader of the faction
			When the player attempts to promote a target player
			And the target is not member
			Then inform the player they can't promote that player
			
		Scenario: a player successfully promotes a target player
			Given a player is in a faction
			And the player is the leader of the faction
			When the player attempts to promote a target player
			And the target player is a member
			Then promote the target player to captain
			