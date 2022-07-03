class CoinGecko::FetchCryptocurrencies < ApplicationService
  include HTTParty

  BASE_URI = 'https://api.coingecko.com/api/v3/'.freeze

  def self.call
    HTTParty.get("#{BASE_URI}coins/markets?vs_currency=usd")
  end
end
