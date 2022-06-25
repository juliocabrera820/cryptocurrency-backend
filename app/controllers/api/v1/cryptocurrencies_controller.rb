module Api
  module V1
    class CryptocurrenciesController < ApplicationController
      def index
        # @cryptocurrencies = Cryptocurrency.all
        response = Cryptocurrency::CryptocurrenciesService.call
        render json: response.body, status: :ok
      end
    end
  end
end
