feature: /f freeze <faction> <time>

  This means regardless of the deaths of the faction members, the DTR
  will not go down.
  
  When a player in a faction dies, the dtr is frozen for an hour.
  (If multiple players die, the freeze time doesn't stack)
  This allows factions to have time to get a faction raidable before the
  DTR regenerates.
  
  Command is usually run server side, not by an admin.

    Scenario: a player dies in a faction
		Given a player is in a faction with 1.0 DTR remaining
		When the player dies the factions DTR is now 0
		Then the factions DTR is frozen on 0 for one hour
		
	Scenario: two players die in a faction
		Given two players are in a faction with 2.0 DTR remaining
		When one of the player dies, the current DTR is now 1.0 is frozen for one hour
		And the second player dies 10 minutes later
		Then the DTR is now 0 and is frozen for 1 hour again
