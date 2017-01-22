Feature: /f color <color>
	
	Used by a server admin to set the system-faction color.
	This color is the color of the faction name.
	It is seen when entering the system-factions territory.
	And shown whenever the system-faction name is shown.
	
		Scenario: a player does not have permission
			Given a player does not have permission
			When the player specifies a color
			Then inform the player they do not have permission
			
			
		Scenario: a server admin sets the 'spawn' system-faction as aqua
			Given the system-faction 'spawn' exists
			When the admin specifies 'AQUA' as the color
			Then the system faction's color is now AQUA.