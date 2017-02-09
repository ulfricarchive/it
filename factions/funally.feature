Feature: /f unally <factionName>

	Remove a faction from your factions allied list.
	This is necessary to remove allys. 
	Factions would want to do this because:
	- They are at the ally limit and want to replace one with another
	- They do not like their current allies
	
	Must be atleast captain to execute.
	
		Scenario: a player is not in a faction
			Given a player is not in a faction
			When the player attempts to unally a faction
			Then inform the player they must be in a faction
			
		Scenario: a player does not have permission
			Given a player is in a faction
			When the player attempts to unally a faction
			Then inform the player they do not have permission
			
		Scenario: the faction is not allied with the specified faction
			Given a player is in a faction named 'taco'
			And the player has permission to unally
			When the player attempts to unally the faction 'apple'
			And the 'taco' is not allied to 'apple'
			Then inform the player they are not allied to that faction
			
		Scenario: a player successfully unallies a faction
			Given a player is in a faction named 'taco'
			And the player has permission to unally
			When the player attempts to unally the faction 'apple'
			And the faction 'taco' is allied to 'apple'
			Then unally 'taco' from 'apple'