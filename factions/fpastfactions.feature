Feature: /f pastfactions (player)

	Check the past factions players have been in for the server history.
	If no player is specified, it checks the senders pastfactions.
	Necessary so recruiting factions can see players experience.
	
	Example: "HM04's past-factions (2): LuckyBlock[Map 1], Taco[Map 2] 
	
		Scenario: a player does not exist
			Given player "taco" has not logged on the server
			When a player checks "taco"'s past factions
			Then inform the player "taco" does not exist
		
		Scenario: a player has no past factions
			Given player "bob" has been in no factions in the server history
			When a player checks "bob"'s past factions
			Then inform the player that "bob" has no past factions
			
		Scenario: a player has 2 past factions
			Given player "bob" has 2 past factions
			When a player checks "bob"'s past factions
			Then inform the player of the past factions and maps