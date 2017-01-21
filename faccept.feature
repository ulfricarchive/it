Feature: /f accept <factionName>

	Used by players to accept a faction invite sent by a faction captain or leader.
	Accepting faction invites sets the player in the joined faction.
	This is required so other players can play alongside their friends as a team.
		
		Scenario: a player has no pending invites
			Given a player is not in a faction
			When the player executes the command
			And has no pending invites
			Then inform the player they were not invited to the faction
			
		Scenario: a player is already in a faction
			Given a player is invited to a faction
			When the player accepts the invitation
			And the player is already in a faction
			Then inform the player they must leave their current faction
						
		Scenario: a faction has a max player limit
			Given a player is invited to a faction
			When the player accepts the invitation
			And the faction player limit is full
			Then inform the player the faction is full
						
		Scenario: the specified faction name can't be found
			Given a player is invited to a faction
			When the player accepts the invitation
			And the faction no longer exists
			Then inform the player the faction doesnt exist
						
		Scenario: a player sucessfully joins a faction
			Given a player is invited to a faction
			When the player accepts the invitation
			And the player is not in a faction
			Then the player is now in the faction
					