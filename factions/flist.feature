Feature: /f list (page#)

	View all factions in list format with one command.
	Factions are listed from most players online to least amount.
	All factions are listed regardless of the amount of players online.
	Number of pages scales with the number of factions on the server.
	Ten factions are listed each page.
	
	Data listed on /f list:
	- Amount of players online
	- Current DTR
	
		Scenario: there are five factions created on the server
			Given there are 5 total created factions on the server
			When a player runs /f list
			Then the faction list will be generated under the faction list heading
			| Faction List | (Page 1/1) |
			
			| AdamsFaction: | 25 / 25 Online | (7.5 / 7.5 DTR) |
			| MattsFaction: | 10 / 25 Online | (3.5 / 7.5 DTR) |
			| ECapsFaction: | 6 / 22 Online | (4.5 / 6.5 DTR)  |
			| ChubsFaction: | 4 / 17 Online | (2.5 / 5.5 DTR)  |
			| InsouFaction: | 0 / 4 Online | (2.5 / 2.5 DTR)   |
			
		Scenario: there are 20 factions created on the server
			Given there are 20 total created factions on the server
			When a player views the second page of the faction list
			Then the 10 factions with the least amount of players online will be listed
			
	