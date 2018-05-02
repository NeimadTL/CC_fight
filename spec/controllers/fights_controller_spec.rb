require 'rails_helper'

RSpec.describe FightsController, type: :controller do

  fixtures :all


  describe "when POST #create" do

    it "with good params, returns http redirect" do
      strong_monster = characters(:game_boss)
      weak_monster = characters(:game_looser)
      bomb = weapons(:bomb)
      knife = weapons(:knife)
      post :create, fight: { first_character_id: strong_monster.id, second_character_id: weak_monster.id,
        first_character_weapon_id: bomb.id, second_character_weapon_id: knife.id }
      created_fight = Fight.last
      expect(created_fight.first_character_id).to eq strong_monster.id
      expect(created_fight.second_character_id).to eq weak_monster.id
      expect(created_fight.first_character_weapon_id).to eq bomb.id
      expect(created_fight.second_character_weapon_id).to eq knife.id
      expect(flash[:notice]).to match("The fight has happened, #{strong_monster.name} won")
      expect(response).to have_http_status(:redirect)
      expect(response).to redirect_to(root_path)
    end

    it "with bad params, returns http redirect" do
      previous_count = Fight.all.count
      post :create, fight: { first_character_id: nil, second_character_id: nil,
        first_character_weapon_id: nil, second_character_weapon_id: nil }
      expect(Fight.all.count).to eq previous_count
      expect(flash[:alert]).to match('The fight hasn\'t happened')
      expect(response).to have_http_status(:redirect)
      expect(response).to redirect_to(root_path)
    end
  end


  describe "when GET #index" do

    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
