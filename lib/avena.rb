class Avena
	def homepage
		Homepage.new
	end

	def checkout
		CheckoutPage.new
	end

	def my_account
		MyAccountPage.new
	end

	def sale_items
		SaleItemsPage.new
	end

	def search_results
		SearchResultsPage.new
	end

	def shopping_basket
		ShoppingBasket.new
	end

	def gift_page
		GiftPage.new
	end
end