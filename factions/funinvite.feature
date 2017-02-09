Feature: /f uninvite <player>

	Revoke an invite to your faction from a player.
	Must be at least captain to uninvite a player
	Used if you accidently invite someone you didn't mean to invite.
	
		Scenario: a player is not in a faction
			Given a player is not in a faction
			When the player attempts to uninvite a player
			Then inform the player they must be in a faction
			
		Scenario: a player does not have permission
			Given a player is in a faction
			When the player attempts to uninvite a player
			Then inform the player they do not have permission
			
		Scenario: a player does not have a pending invite
			Given a player is in a faction named 'taco'
			And the player has permission to uninvite
			When the player attempts to uninvite 'player1' from their faction
			And 'player1' has no invites to 'taco'
			Then inform the player that 'player1' is not invited to their faction
		
		Scenario: a player is successfully uninvited from a faction
			Given 'player1' is invited to a faction named 'taco'
			When a player in 'taco' attempts to uninvite 'player1'
			And the player has permission to uninvite
			Then revoke "player1"'s permission to "taco"