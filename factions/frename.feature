feature: /f rename <factionName>

	Rename the name of your faction.
	Necessary if a faction leader wants to change the name of their faction
	
	Naming Rules:
	- Must be alphanumeric
	- Must be at least 3 characters long
	- No duplicate names
	- Can't use system-faction names
		
		Scenario: a player is not in a faction
			Given a player is not in a faction
			When the player attempts to rename a faction
			Then inform the player they are not in a faction
			
		Scenario: the player does not have permission
			Given a player is in a faction
			And the player is not the leader
			Whjen the player attempts to rename the faction
			Then inform the player they do not have permission
			
		Scenario: the factionName parameter is 2 characters long 
			Given a player is in a faction
			And the player is the leader of the faction
			When the player attempts to rename the faction 'qq'
			Then inform the player the faction name must be at least 3 characters long
			
		Scenario: the factionName parameter is not alphanumeric
			Given a player is in a faction
			And the player is the leader of the faction
			When the player attempts to rename the faction 'bob&bill'
			Then inform the player the faction name must be alphanumeric
			
		Scenario: the factionName is already taken
			Given a player is in a faction
			And the player is the leader of the faction
			When the player attempts to rename the faction 'spawn'
			And the faction name 'spawn' is already taken
			Then inform the player the name is already taken
			
		Scenario: a player successfully renames a faction
			Given a player is in a faction
			And the player is the leader of the faction
			When the player attempts to rename the faction
			And the name meets all requirements
			Then change the faction name
		