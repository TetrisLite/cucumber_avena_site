class Homepage < SitePrism::Page
	set_url "/"

	element :yoruba, ".goog-te-menu2"

	section :header, Header, '#header'
	section :featured_item, FeaturedItem, '#featured_items'

	section :navigation, Navigation, "#main_nav > ul"
end