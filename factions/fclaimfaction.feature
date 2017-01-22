Feature: /f claimfaction <faction>

	Used by a server adminisrator to claim land for a system-faction.
	(Read the System-Faction feature file for documentation.)
	It is necessary to be able to claim land for server factions like:
	spawn, KOTH's, etc.

	The claiming procedure-besides the rules-is the same as the /f claim procedures.
	(Read the /f claim feature file for documentation.)
	
		Scenario: a player does not have permission
			Given a player does not have permission
			When the player tries to use the command
			Then inform the player they do not have permission
		
		Scenario: an admin claims for the 'spawn' faction
			Given the system-faction 'spawn' exists
			When the player specifies the spawn faction
			Then the player receives the claim wand
			And can claim for the spawn system faction.