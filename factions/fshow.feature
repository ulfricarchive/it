Feature: /f show (factionName)

	List all data about a faction:
	- Name of faction, playersOnline/total, /f home coordinates, invite-only status,
	leader, captains, members, faction kills, and DTR
	Running the command with no arguments shows your own faction.
	This is necessary so players can get quick information about a faction on the server.
	
	
	Alias:
	/f who (factionName)
	
		Scenario: a player is not in a faction
			Given a player is not in a faction
			When the player attempts to view his own faction
			Then inform the player they are not in a faction
			
		Scenario: the faction 'taco' does not exist
			Given the faction 'taco' does not exist
			When a player tries to show the faction 'taco'
			Then inform the player the faction could not be found
			
		Scenario: show a factions online players
			Given the faction 'taco' exists
			And the faction has 25 total players in it
			And the faction has 15 players online
			When a player shows the faction 'taco'
			Then the faction info should display [15/25] players
			
		Scenario: a factions home is not set
			Given the faction 'taco' exists
			And the factions /f home is not set
			When a player shows the faction 'taco'
			Then the faction home should say the home is not set
			
		Scenario: a factions home is set
			Given the faction 'taco' exists
			And the factions /f home is set
			When a player shows the faction 'taco'
			Then the faction home should display the x and z coordinate
			
		Scenario: a factions status is closed
			Given the faction 'taco' exists
			And the faction is invite-only
			When a player shows the faction 'taco'
			Then the open status should display 'Closed'

		Scenario: a factions status is open
			Given the faction 'taco' exists
			And the faction is not invite-only
			When a player shows the faction 'taco'
			Then the open status should display 'Open'
			
		Scenario: a faction member is dead
			Given the faction 'taco' exists
			And a faction member is dead
			When a player shows the faction 'taco'
			Then the player's name should display red
			
		Scenario: a faction member is offline
			Given the faction 'taco' exists
			And a faction member is offline
			When a player shows the faction 'taco'
			Then the player's name should display gray

		Scenario: a faction member is online
			Given the faction 'taco' exists
			And a faction member is online
			When a player shows the faction 'taco'
			Then the player's name should display green
			
		Scenario: a faction has no captains
			Given the faction 'taco' exists
			And the faction has no captains
			When a player shows the faction 'taco'
			Then the captains section should not be displayed
			
		Scenario: a faction has only has a leader
			Given the faction 'taco' exists
			And the faction only has a leader
			When a player shows the faction 'taco'
			Then the captains and members section should not be displayed
			
		Scenario: a faction members kills are displayed
			Given the faction 'taco' exists
			And the player 'HM04' is in the faction
			And 'HM04' has zero kills
			When a player shows the faction 'taco'
			Then display '[0]' at the end of "HM04's" name
			
		Scenario: a faction's kills are displayed
			Given the faction 'taco' exists
			And the faction 'taco' has 50 total kills
			When a player shows the faction 'taco'
			Then the Kills should display '50'
			
		Scenario: a faction's DTR is shown
			Given the faction 'taco' exists
			And the faction has 7.5 total DTR
			And the faction has 5.5 remaining DTR
			When a player shows the faction 'taco'
			Then DTR should display '5.5/7.5 DTR'