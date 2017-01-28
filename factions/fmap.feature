feature: /f map

	Visually display all faction claims within 22 blocks of the player.
	Claims are displayed with pillars in each corner of the claim going to block limit. 
	Claims pillars also go to bedrock. (only the command executor can see the pillars)
	This command is toggled. You run it once to view the pillars and run it again to stop viewing.
	
	This is needed so players can easily see their faction claim sizes, and others.
	
		Scenario: no claims nearby
			Given a player is not within 22 blocks of a claim
			When the player attempts to show nearby claims
			Then inform the player there are no claims within 22 blocks
			
		Scenario: a player is 5 blocks from 'spawmn' claims
			Given a player is 5 within 5 blocks of the faction 'spawn''s claims
			When the player attempts to show nearby claims
			Then red stained glass pillars are displayed from bedrock to skylimit
			And inform the player of the current faction's claims it is displaying
			
		Scenario: a player wants to stop viewing claims
			Given a player is viewing all nearby claims
			When the player runs the command again
			Then stop displaying all claim pillars
			And inform the player the pillars have stopped being displayed
			
		Scenario: a player attempts to break a pillar
			Given a player is viewing pillars
			When the player attempts to break a block in the pillar
			Then the block is replaced