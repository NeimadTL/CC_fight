require 'rails_helper'

RSpec.describe FightsController, type: :controller do


  Character.delete_all

  strong_monster = Character.create!(name: "Strong monster", life_score: 50, attack_score: 95)
  weak_monster = Character.create!(name: "Weak monster", life_score: 35, attack_score: 60)


  describe "when POST #create" do

    it "with good params, returns http redirect" do
      post :create, fight: { first_character_id: strong_monster.id, second_character_id: weak_monster.id }
      created_fight = Fight.last
      expect(created_fight.first_character_id).to eq strong_monster.id
      expect(created_fight.second_character_id).to eq weak_monster.id
      expect(flash[:notice]).to include('The fight has happened,')
      expect(response).to have_http_status(:redirect)
      expect(response).to redirect_to(root_path)
    end

    it "with bad params, returns http redirect" do
      previous_count = Fight.all.count
      post :create, fight: { first_character_id: nil, second_character_id: nil }
      expect(Fight.all.count).to eq previous_count
      expect(flash[:alert]).to include('The fight hasn\'t happened')
      expect(response).to have_http_status(:redirect)
      expect(response).to redirect_to(root_path)
    end
  end

end
