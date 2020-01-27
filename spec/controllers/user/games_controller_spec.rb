require 'rails_helper'

RSpec.describe User::GamesController, type: :controller do
  include Devise::Test::ControllerHelpers

  describe "GET #index" do
    it "returns a redirect when not logged in" do
      get :index
      expect(response).to have_http_status(:redirect)
    end
  end

end
