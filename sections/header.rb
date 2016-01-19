class Header < SitePrism::Section
	element :view_basket, '.view_basket a'
	element :select_language, '.goog-te-menu-value'
	element :my_account, "a[href='/my-account/']"

	
end