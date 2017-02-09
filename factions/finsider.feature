Feature: /f insider <player>

	Declare a player as an insider on the server.
	An insider is someone who betrays their own faction.
	This is used by the server to set a player in the insider list.
	
	How to be declared as an insider:
	- Leaving your faction and killing an ex-faction member in their own claim within 10 minutes.
	- Stealing or breaking valuable items then immediately leaving the faction.
	- Stealing or breaking valuable items then leaving when no other faction members are online.
	
	Cons of being in the insider list:
	- Insider tag in game and on the website.
	- Brodcasted to the entire server when added.
	- Factions are warned whenever you are invited to them.
	
	
	If the command is ran again, the player is removed from the insider list.
	
		Scenario: a player insides via killing
			Given a player left their faction
			And within 10 minutes the player kills an ex faction member
			And the death was in the factions claim
			Then add the player to the insider list
			
		Scenario: a player insides via stealing
			Given a player left their faction
			And then immediately the player takes a stack of diamonds from the factions chest
			Then add the player to the insider list
			
		Scenario: an insider is invited to a faction
			Given player "bob" is on the insider list
			When player "taco" invites "bob" to their faction
			Then inform "taco" that "bob" is an insider
			Then ask player "taco" to continue or decline the invitation
			