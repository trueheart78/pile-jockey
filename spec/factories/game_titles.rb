FactoryBot.define do
  factory :game_title do
    name { Faker::Game.title }
  end
end
