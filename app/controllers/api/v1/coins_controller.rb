module Api
  module V1
    class CoinsController < ApplicationController
      def index
        response = CoinGecko::FetchCryptocurrencies.call
        render json: response.body, status: :ok
      end
    end
  end
end
