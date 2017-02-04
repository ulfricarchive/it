Feature: /f open
	
	Run by a faction leader to allow players to join without invitation.
	This is necessary in case a faction leader wants to easily
	and quickly gain members to their faction.
	
	
		Scenario: a player is not in a faction
			Given a player is not in a faction
			When the player attempts to open a faction
			Then inform the player he is not in a faction
			
		Scenario: a player does not have permission
			Given a player is in a faction
			And the player is not leader
			When the player attempts to open the faction
			Then inform the player they do not have permission
			
		Scenario: a player successfully opens his or her faction
			Given a player is in a faction
			And the player is the leader
			When the player attempts to open the faction
			Then inform the player their faction is now open
			And broadcast to the server the faction is now open
			And the faction will be open to join without invitation