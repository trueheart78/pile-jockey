require 'rails_helper'

RSpec.describe 'game_titles/index', type: :view do
  before(:each) do
    assign(:game_titles, [
      GameTitle.create!(name: names.first),
      GameTitle.create!(name: names.second)
    ])
  end

  let(:names) { [Faker::Game.title, Faker::Game.title] }

  it 'renders a list of game_titles' do
    render
    assert_select 'tr>td', text: names.first, count:  1
    assert_select 'tr>td', text: names.second, count: 1
  end
end
