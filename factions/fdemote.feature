feature: /f demote <player>

  Used by faction leaders to demote captains.
  This is necessary to allow players to remove someone who could be abusing
  their power in a faction.

    Scenario: a player is not in a faction
      Given a player is not in a faction
      When the player attempts to demote a player
      Then inform the player they are not in a faction

    Scenario: a player is not the leader of their faction
      Given a player is in a faction
      And the player is not the leader of the faction
      When the player attempts to demote a player
      Then inform them they do not have permission

    Scenario: a player attempts to demote a member
      Given a player is in a faction
      And the player is the leader of their faction
      When the player attempts to demote a player
      And the player is a member
      Then inform the player the player cannot be demoted any more

    Scenario: the demoted player does not exist
      Given a player is in a faction
      And the player is the leader of their faction
      When the player attempts to demote a player
      And the player is not in the faction
      Then inform the player the player doesn't exist
