class CoinSerializer < ActiveModel::Serializer
  attributes :name, :symbol, :image_url, :current_price, :market_capital, :total_volume, :market_capital_ranking,
             :higher_in_24_hours, :lower_in_24_hrs
end
