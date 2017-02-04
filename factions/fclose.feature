Feature: /f close
	
	Run by a faction leader to restrict joining the faction to invite only.
	This is necessary in case a faction leader wants to reverse
	running the /f open command.
	
	Factions are invite-only by default.
	
	
		Scenario: a player is not in a faction
			Given a player is not in a faction
			When the player attempts to close a faction
			Then inform the player he is not in a faction
			
		Scenario: a player does not have permission
			Given a player is in a faction
			And the player is not leader
			When the player attempts to close the faction
			Then inform the player they do not have permission
			
		Scenario: a player successfully close his or her faction
			Given a player is in a faction
			And the player is the leader
			When the player attempts to close the faction
			Then inform the player their faction is now closed
			And the faction will now be invite-only