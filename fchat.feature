Feature: /f chat <p,f,a>

	Used by players to switch between different chat modes.
	You do not have to change chat modes to receive messages, only to send them.
	This command is only usable by players in factions.
	Three different chat modes are available: global, faction, and ally.
	This is required so players can interact privately with their factions and allies.

		Scenario: a player is not in a faction
			Given the player is not in a faction
			When the player switches chat modes
			Then inform the player they are not in a faction
				
		Scenario: a player is switches chat modes
			Given the player is in a faction
			When the player changes chat mode
			Then switch the player to the next available chat mode
				
		Scenario: a player switches to specified chat mode
			Given the player is in a faction
			When the player switches chat mode
			And the player specified a chat mode
			Then switch the player to the specified chat mode
		
		Scenario: a player speaks in a specified chat mode
			Given the player is faction chat
			When the player sends a message
			Then only players in his faction can see the message