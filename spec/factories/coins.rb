FactoryBot.define do
  factory :coin do
    name { "MyString" }
    symbol { "MyString" }
    image_url { "MyString" }
    current_price { "9.99" }
    market_capital { "9.99" }
    total_volume { "9.99" }
    market_capital_ranking { 1 }
    higher_in_24_hours { "9.99" }
    lower_in_24_hrs { "9.99" }
  end
end
