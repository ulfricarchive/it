Feature: /f focus <faction/player>
	
	Send a message and sound to your faction to focus a player or faction.
	A focus is a message telling them to "focus" their effort on killing one player or faction.
	Example: "HM04 has focused on player Packet"
	Example: "HM04 has focused on faction LuckyPrison"
	This is necessary so players can use teamwork with players they are
	not physically speaking to.
	
	Names of factions and players are autocompleted if name specified cannot be found.
	
		Scenario: a player is not in a faction
			Given a player is not in a faction
			When the player attempts to focus a player or faction
			Then inform the player they must be in a faction
			
		Scenario: a player is focused
			Given a player is in a faction
			When the player focuses "b"
			And "b" is not an online faction or player
			And player "Bob" is online
			Then the faction is informed the player is focusing player "Bob"
			
		Scenario: a faction is focused
			Given a player is in a faction
			When the player focuses "LuckyB"
			And "LuckyB" is not an online faction or player
			And faction "LuckyBlock" is exists
			Then the faction is informed the player is focusing faction "LuckyBlock"
			
		Scenario: a faction or player cannot be found
			Given a player is in a faction
			When the player focuses "Z"
			And no factions or players starting with "Z" exist
			Then inform the player the player or faction couldn't be found
			
			
	
	