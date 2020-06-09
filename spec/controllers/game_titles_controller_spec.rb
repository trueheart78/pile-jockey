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

  before { sign_in create :user }

  describe 'GET #index' do
    it 'returns a success response' do
      create :game_title
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      game_title = create :game_title
      get :show, params: {id: game_title.to_param}
      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    it 'returns a success response' do
      get :new, params: {name: Faker::Game.title }
      expect(response).to be_successful
    end
  end

  describe 'GET #edit' do
    it 'returns a success response' do
      game_title = create :game_title
      get :edit, params: {id: game_title.to_param}
      expect(response).to be_successful
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) {
        skip('Add a hash of attributes valid for your model')
      }

      it 'updates the requested game_title' do
        game_title = create :game_title
        put :update, params: {id: game_title.to_param, game_title: new_attributes}
        game_title.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the game_title' do
        game_title = create :game_title
        put :update, params: {id: game_title.to_param, game_title: valid_attributes}
        expect(response).to redirect_to(game_title)
      end
    end

    context 'with invalid params' do
      it 'returns a success response (i.e. to display the "edit" template)' do
        game_title = create :game_title
        put :update, params: {id: game_title.to_param, game_title: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested game_title' do
      game_title = create :game_title
      expect {
        delete :destroy, params: {id: game_title.to_param}
      }.to change(GameTitle, :count).by(-1)
    end

    it 'redirects to the game_titles list' do
      game_title = create :game_title
      delete :destroy, params: {id: game_title.to_param}
      expect(response).to redirect_to(game_titles_url)
    end
  end

end
