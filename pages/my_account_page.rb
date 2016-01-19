class MyAccountPage < SitePrism::Page
	
	element :email, "#txtEmail"
	element :password, "#txtPassword"

	element :login, "#btnLogin"
end