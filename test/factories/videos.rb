FactoryGirl.define do
  factory :video do
    link { generate :url }
    title { generate :string }
    description { generate :string }
    order_number { generate :integer }
    city_id { City.last ? City.last.id : create(:city).id }
  end
end
