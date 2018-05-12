require 'rails_helper'

RSpec.describe ShieldsController, type: :controller do

  describe "when GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "when GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "when POST #create" do
    it "with good params, returns http redirect" do
      post :create, shield: { name: 'vibranium suit' }
      created_shell = Shield.last
      expect(created_shell.name).to eq 'vibranium suit'
      expect(flash[:notice]).to match('Shield created with success')
      expect(response).to have_http_status(:redirect)
      expect(response).to redirect_to(root_path)
    end

    it "with bad params, returns http unprocessable_entity" do
      post :create, shield: { name: nil }
      expect(response).to have_http_status(:unprocessable_entity)
      expect(response).to render_template(:new)
    end
  end

end
