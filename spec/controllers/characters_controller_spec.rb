require 'rails_helper'

RSpec.describe CharactersController, type: :controller do

  fixtures :all


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

  describe "when GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "when GET #show" do
    it "with a found character, returns http success" do
      get :show, id: characters(:game_boss).id
      expect(response).to have_http_status(:success)
    end

    it "with a not found character, renders 404.html file" do
      get :show, id: Random.new.rand(2000..3000)
      expect(response).to render_template(:file => "#{Rails.root}/public/404.html")
    end
  end

end
