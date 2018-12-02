FactoryBot.define do
  factory :post do
    title Faker::TvShows::RickAndMorty.character
    body Faker::TvShows::RickAndMorty.quote
  end
end
