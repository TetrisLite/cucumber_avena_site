class GiftItem < SitePrism::Section
	element :image, '.item .image'
	element :title, '.item .title'
	element :price, '.item div.price'
end