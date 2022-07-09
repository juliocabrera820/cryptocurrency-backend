class CoinContract < Dry::Validation::Contract
  params do
    required(:name).filled(:string)
    required(:symbol).filled(:string)
    required(:image_url).filled(:string)
    required(:current_price).filled(:decimal)
    required(:market_capital).filled(:decimal)
    required(:total_volume).filled(:decimal)
    required(:market_capital_ranking).filled(:integer)
    required(:higher_in_24_hours).filled(:decimal)
    required(:lower_in_24_hrs).filled(:decimal)
  end
end
