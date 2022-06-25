class CreateCryptocurrencies < ActiveRecord::Migration[6.0]
  def change
    create_table :cryptocurrencies do |t|
      t.string :name
      t.string :symbol
      t.string :image_url
      t.string :current_price
      t.string :market_capital
      t.string :total_volume
      t.string :market_capital_ranking
      t.string :higher_in_24_hours
      t.string :lower_in_24_hrs

      t.timestamps
    end
  end
end
