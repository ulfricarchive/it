feature: /f msg <message>

	Send a message to your faction without toggling chat modes.
	This is used to quickly send a message to your faction.
	You can also send a message to your faction by starting your message with '@'
	
		Scenario: a player is not in a faction
			Given a player is not in a faction
			When the player attempts send a message to a faction
			Then inform the player they are not in a faction
			
		Scenario: a player sends the message 'hey' to their faction via command
			Given a player is in a faction
			When the player uses 'hey' as the message paramter
			Then send the message 'hey' to the players faction
			
		Scenario: a player sends the message 'hey' to their faction via @
			Given a player is in a faction
			When the player sends the message '@hey'
			Then send the message 'hey' to the players faction