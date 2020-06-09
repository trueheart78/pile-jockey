require 'rails_helper'

RSpec.describe "game_titles/show", type: :view do
  before(:each) do
    @game_title = assign(:game_title, GameTitle.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
