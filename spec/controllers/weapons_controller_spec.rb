require 'rails_helper'

RSpec.describe WeaponsController, type: :controller do

  describe "when GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "when POST #create" do
    it "with good params, returns http redirect" do
      post :create, weapon: { name: 'gun' }
      created_weapon = Weapon.last
      expect(created_weapon.name).to eq 'gun'
      expect(flash[:notice]).to match('Weapon created with success')
      expect(response).to have_http_status(:redirect)
      expect(response).to redirect_to(root_path)
    end

    it "with bad params, returns http unprocessable_entity" do
      post :create, weapon: { name: nil }
      expect(response).to have_http_status(:unprocessable_entity)
      expect(response).to render_template(:new)
    end
  end

end
