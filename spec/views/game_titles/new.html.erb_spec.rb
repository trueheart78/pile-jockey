require 'rails_helper'

RSpec.describe "game_titles/new", type: :view do
  before(:each) do
    assign(:game_title, GameTitle.new(
      :name => "MyString"
    ))
  end

  it "renders new game_title form" do
    render

    assert_select "form[action=?][method=?]", game_titles_path, "post" do

      assert_select "input[name=?]", "game_title[name]"
    end
  end
end
