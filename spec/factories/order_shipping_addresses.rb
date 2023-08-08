FactoryBot.define do
  factory :order_shipping_address do
    post_code {'123-4567'}
    prefecture_id { rand(2..48) }
    municipalities {'昆布出市'}
    address {'豆腐1-1-1'}
    building {'一本木ヒルズ101号室'}
    phone_number {'09012345678'}
    token {"tok_abcdefghijk00000000000000000"}
  end
end