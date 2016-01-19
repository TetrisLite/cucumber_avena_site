Given(/^a logged in user puts items in a basket$/) do
	@avena = avena
	@avena.homepage.load

	@avena.homepage.header.my_account.click
	@avena.my_account.email.set "adamsmail100@gmail.com"
	@avena.my_account.password.set "100Pa55w0rd££"
	@avena.my_account.login.click

	@expected_title_text = @avena.homepage.featured_item.gift_items[0].title.text
	@avena.homepage.featured_item.gift_items[0].image.click
	@avena.gift_page.add_to_basket.click
	accept_alert
end


