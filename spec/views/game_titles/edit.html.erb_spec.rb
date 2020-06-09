require 'rails_helper'

RSpec.describe "game_titles/edit", type: :view do
  before(:each) do
    @game_title = assign(:game_title, GameTitle.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit game_title form" do
    render

    assert_select "form[action=?][method=?]", game_title_path(@game_title), "post" do

      assert_select "input[name=?]", "game_title[name]"
    end
  end
end
