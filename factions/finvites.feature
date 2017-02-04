Feature: /f invites
	
	Display all of your current faction invites.
	If you receive multiple faction invites, you can view them all.
	Needed in case players receive invites from multiple factions
	and want to see all their options.
	
		Scenario: No pending invites
			Given a player has no pending invites
			When the player checks their current invites
			Then inform the player they have no invites
		
		Scenario: A player is invited to a faction
			Given a player is invited to a faction
			And the player has no other invites
			When the player checks their current invites
			Then display the invite on their pending invites
			
		Scenario: a player is invited to two factions
			Given a player is invited to 'taco' and 'goat'
			And those are the only two pending invites for the player
			When the player checks their current invites
			Then inform the player they have invites from 'taco' and 'goat'