require 'rails_helper'

RSpec.describe CharactersController, type: :controller do

  describe "when GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "when POST #create" do
    it "with good params, returns http redirect" do
      post :create, character: { name: 'character 1', life_score: '45', attack_score: '60' }
      created_character = Character.last
      expect(created_character.name).to eq 'character 1'
      expect(created_character.life_score).to eq 45
      expect(created_character.attack_score).to eq 60
      expect(flash[:notice]).to match('Character created with success')
      expect(response).to have_http_status(:redirect)
      expect(response).to redirect_to(root_path)
    end

    it "with bad params, returns http unprocessable_entity" do
      post :create, character: { name: nil, life_score: nil, attack_score: nil }
      expect(response).to have_http_status(:unprocessable_entity)
      expect(response).to render_template(:new)
    end
  end

end
