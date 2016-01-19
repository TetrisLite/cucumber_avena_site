Feature: Homepage

	Scenario: Display populated basket
		Given user is on the homepage
		And puts items in the basket
		When They choose to view basket content
		Then the added item should be dislayed

	@iframe_no_id	
	Scenario: Change language settings
		Given user is on the homepage
		When user chooses to change language
		Then they should be presented with a list of languages to select

	@incomplete
	Scenario: Checkout of shop
		Given a logged in user puts items in a basket
		When user checks out
		Then They should be able to pay for items in basket

	Scenario: Checkout of shop (with account but not logged in)
		Given user has items in a basket
		When user checks out
		Then they should asked to log in before paying.
		And all items in the basket before logging should be available after logging in
	@wip
	Scenario: View sale items
		Given user is on the homepage
		When user choose to see items on sale
		Then sale items should be displayed
