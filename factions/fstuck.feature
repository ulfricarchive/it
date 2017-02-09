Feature: /f stuck

	Used to get out of positions where there is no other way out.
	Example: In an enemy's claim and can't escape. In a hole somewhere and have no /f home.
	This is necessary because there is no /spawn. Also, you cannot warp at all in enemy claims.
	It takes 180 seconds without moving more than 5 blocks to activate /f stuck.
	/f stuck teleports the player to the nearest wilderness claim above ground in the area.
	The /f stuck timer runs on the scoreboard
	
		Scenario: a player is stuck in enemy claim
			Given a player is in an enemy claim
			And the player is in a hole and can't escape
			When the player uses the command
			And the player doesn't move more than 5 blocks in 180 seconds
			Then teleports the player to the nearest wilderness claim above ground
		
		Scenario: a player moves more than 5 blocks
			Given a player is in an enemy claim
			And the player is in a hole and can't escape
			When the player uses the command
			And an enemy hits the player and they move more than 5 blocks
			Then the teleport is cancelled