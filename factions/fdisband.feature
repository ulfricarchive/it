feature: /f disband (faction)

  Used by a faction leader to delete their current faction.
  This feature is necessary if a leader of a faction wants to completely
  delete their faction.

  This could also be used by staff to delete an inactive faction.
  (The faction parameter is only usable by admins.)
  

    Scenario: a player is not in a faction
      Given a player is not in a faction
      When the player attempts to disband the faction
      Then inform the player they are not in a faction.

    Scenario: a player is not the leader of their faction
      Given a player is in a faction
      And the player is not the leader of the faction
      When the player attempts to disband the faction
      Then inform the player they do not have permission

    Scenario: a leader disbands their faction
      Given a player is in a faction
      And the player is the leader of the faction
      When the player attempts to disband the faction
      And the player accepts the confirmation
      Then delete the faction

    Scenario: an admin disbands a faction
      Given a faction is inactive
      And an admin wants to disband the faction
      When the admin disbands the faction
      Then the faction is deleted
