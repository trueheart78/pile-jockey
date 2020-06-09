require 'rails_helper'

RSpec.describe "GameTitles", type: :request do
  describe "GET /game_titles" do
    it "works! (now write some real specs)" do
      sign_in create :user
      get game_titles_path
      expect(response).to have_http_status(200)
    end
  end
end
