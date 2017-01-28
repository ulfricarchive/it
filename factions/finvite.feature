feature: /f invite <player>

	Invite players to your current faction.
	Players must be at least captain in their faction to invite others.
	This is needed to be able to allow players to use the /f accept command.
	
		Scenario: a target player is not found
			Given a player is in a faction
			And the player has permission to invite others
			When the player invites the target
			And the target name cannot be found on the server
			Then inform the player the invited player could not be found
			
		Scenario: a player is successfully invited to a faction
			Given a player is in a faction
			And the player has permission to invite others
			When the player invites the target
			And the target is found
			Then invite the target to the player's faction