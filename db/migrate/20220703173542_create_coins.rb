class CreateCoins < ActiveRecord::Migration[6.0]
  def change
    create_table :coins do |t|
      t.string :name
      t.string :symbol
      t.string :image_url
      t.decimal :current_price
      t.decimal :market_capital
      t.decimal :total_volume
      t.integer :market_capital_ranking
      t.decimal :higher_in_24_hours
      t.decimal :lower_in_24_hrs

      t.timestamps
    end
  end
end
