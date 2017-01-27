feature: /f createsystem <name>

  This command creates a system-faction.
  System-factions are server owned factions.
  They are necessary for claiming territory for system-factions such as:
  spawn, koth's, etc

    Scenario: a player doesn't have permission
      Given a player does not have permission
      When the player tries to create a system-faction
      Then inform the player they do not have permission

    Scenario: an admin creates a system-faction named 'spawn'
      Given a player has permission
      When the player creates a system faction named 'spawn'
      And the name is not already in use
      Then create the system-faction named 'spawn'

    Scenario: the name 'spawn' is already in use
      Given a player has permission
      When the player creates a system faction named 'spawn'
      And the faction name 'spawn' is already in use
      Then inform the player the name is already taken
