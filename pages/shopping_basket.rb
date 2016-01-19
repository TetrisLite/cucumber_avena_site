class ShoppingBasket < SitePrism::Page
	section :cart_item, CartItem, "#cart .cart_item"
end