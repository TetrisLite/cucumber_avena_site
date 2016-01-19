class FeaturedItem < SitePrism::Section
	sections :gift_items, GiftItem, '.carousel .owl-item '
end