require 'rails_helper'

RSpec.describe GameTitlesController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # GameTitle. As you add validations to GameTitle, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip('Add a hash of attributes valid for your model')
  }

  let(:invalid_attributes) {
    skip('Add a hash of attributes invalid for your model')
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GameTitlesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'returns a success response' do
      GameTitle.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      game_title = GameTitle.create! valid_attributes
      get :show, params: {id: game_title.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    it 'returns a success response' do
      sign_in create :user
      get :new, params: {name: Faker::Game.title }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #edit' do
    it 'returns a success response' do
      game_title = GameTitle.create! valid_attributes
      get :edit, params: {id: game_title.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new GameTitle' do
        expect {
          post :create, params: {game_title: valid_attributes}, session: valid_session
        }.to change(GameTitle, :count).by(1)
      end

      it 'redirects to the created game_title' do
        post :create, params: {game_title: valid_attributes}, session: valid_session
        expect(response).to redirect_to(GameTitle.last)
      end
    end

    context 'with invalid params' do
      it 'returns a success response (i.e. to display the "new" template)' do
        post :create, params: {game_title: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) {
        skip('Add a hash of attributes valid for your model')
      }

      it 'updates the requested game_title' do
        game_title = GameTitle.create! valid_attributes
        put :update, params: {id: game_title.to_param, game_title: new_attributes}, session: valid_session
        game_title.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the game_title' do
        game_title = GameTitle.create! valid_attributes
        put :update, params: {id: game_title.to_param, game_title: valid_attributes}, session: valid_session
        expect(response).to redirect_to(game_title)
      end
    end

    context 'with invalid params' do
      it 'returns a success response (i.e. to display the "edit" template)' do
        game_title = GameTitle.create! valid_attributes
        put :update, params: {id: game_title.to_param, game_title: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested game_title' do
      game_title = GameTitle.create! valid_attributes
      expect {
        delete :destroy, params: {id: game_title.to_param}, session: valid_session
      }.to change(GameTitle, :count).by(-1)
    end

    it 'redirects to the game_titles list' do
      game_title = GameTitle.create! valid_attributes
      delete :destroy, params: {id: game_title.to_param}, session: valid_session
      expect(response).to redirect_to(game_titles_url)
    end
  end

end
