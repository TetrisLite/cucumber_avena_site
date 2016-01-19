module GenericHelpers
	def accept_alert
		alert = page.driver.browser.switch_to.alert
		page.driver.browser.switch_to.alert.accept
	end
end
