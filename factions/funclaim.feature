Feature: /f unclaim

	Unclaim a section of land from your faction.
	Must be at least captain to unclaim land.
	This is necessary to remove a claim your faction has previously claimed.
	
	To unclaim:
	Stand in a section of land claimed with the claim wand.
	Execute the command to unclaim the entire area.
	Note: unclaiming land with /f home will remove the /f home

		Scenario: a player is not in a faction
			Given a player is not in a faction
			When the player attempts to unclaim land
			Then inform the player they must be in a faction
		
		Scenario: a player does not have permission
			Given a player is in a faction
			When the player attempts to unclaim land
			Then inform the player they do not have permission
			
		Scenario: the section of land is not claimed by the players faction
			Given a player is in a faction
			And the player has permission to unclaim
			When the player attempts to unclaim land
			And the land is not claimed by the players faction
			Then inform the player they do not own that land
			
		Scenario: a player successfully unclaims land
			Given a player is in a faction
			And the player has permission to unclaim
			When the player attempts to unclaim land
			And the land is claimed by the players faction
			Then unclaim the land