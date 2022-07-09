module Api
  module V1
    class CoinsController < ApplicationController
      def index
        response = CoinGecko::FetchCryptocurrencies.call
        render json: response.body, status: :ok
      end

      def create
        contract = CoinContract.new
        result = contract.call(coin_params)

        return render json: { errors: result.errors } if result.errors

        coin = Coin.new(coin_params)
        coin.save
        render json: { message: 'coin was successfully created' }, status: 201
      end

      private

      def coin_params
        params.permit(:name, :symbol, :image_url, :current_price, :market_capital, :total_volume, :market_capital_ranking,
                      :higher_in_24_hours, :lower_in_24_hrs)
      end
    end
  end
end
