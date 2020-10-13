class Stock < ApplicationRecord


	def self.query_stock(ticker)
		client = IEX::Api::Client.new(
  				publishable_token: Rails.application.credentials.iex[:sandbox_api_key],
  				endpoint: 'https://sandbox.iexapis.com/v1')	
		client.price(ticker)
	end 
end
