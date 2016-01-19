Given(/^user is on the homepage$/) do
  @avena = avena
  @avena.homepage.load
end

Given(/^puts items in the basket$/) do
  @expected_title_text = @avena.homepage.featured_item.gift_items[0].title.text
  @avena.homepage.featured_item.gift_items[0].image.click
  @avena.gift_page.add_to_basket.click
  accept_alert
end

When(/^They choose to view basket content$/) do
  @avena.gift_page.header.view_basket.click
end

Then(/^the added item should be dislayed$/) do
  expect(@avena.shopping_basket.cart_item.title.text).to match(@expected_title_text)
end

When(/^user chooses to change language$/) do
  @avena.homepage.header.select_language.click
  pending "iframe issues"
end

Then(/^they should be presented with a list of languages to select$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^user checks out$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^They should be able to pay for items in basket$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^user has items in a basket$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^they should asked to log in before paying\.$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^all items in the basket before logging should be available after logging in$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^user choose to see items on sale$/) do
  @avena.homepage.navigation.sale.click
end

Then(/^sale items should be displayed$/) do
  expect(@avena.sale_item_page.product_list[0].title.text)
end
