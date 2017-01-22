Feature: /f announcement <message>
	
	Used by faction leader to set the factions announcement.
	The announcement is shown on the /f who page.
	This is used to allow leaders to easily set faction objectives.
	
		Scenario: a player is not in a faction
			Given a player is not in a faction
			When the player sets an announcement
			Then inform the player they must be in a faction
			
		Scenario: a player doesnt have permission
			Given a player is in a faction
			And the player is not leader
			When the player sets an announcement
			Then inform the player they do not have permission
			
		Scenario: a player sets an announcement
			Given a player is in a faction
			And the player is leader
			When the player sets an announcement
			Then set the faction announcement to the specified message