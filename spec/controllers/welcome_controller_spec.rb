require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

  fixtures :all


  describe "when GET #index" do
    it 'returns http succes' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index" do
    it 'should be root' do
      expect(get: root_url(subdomain: nil)).to route_to(controller: "welcome", action: "index")
    end
  end

  describe "GET #show_character_picture" do
    it 'for first character, returns http success' do
      xhr :get, :show_character_picture, id: characters(:game_boss).id, first_character: true, format: :js
      expect(response).to have_http_status(:success)
    end

    it "with a not found character, renders 404.html file" do
      xhr :get, :show_character_picture, id: Random.new.rand(2000..3000), first_character: true, format: :js
      expect(response).to render_template(:file => "#{Rails.root}/public/404.html")
    end

    it 'for second character, returns http success' do
      xhr :get, :show_character_picture, id: characters(:game_looser).id, first_character: true, format: :js
      expect(response).to have_http_status(:success)
    end

    it "with a not found character, renders 404.html file" do
      xhr :get, :show_character_picture, id: Random.new.rand(2000..3000), first_character: true, format: :js
      expect(response).to render_template(:file => "#{Rails.root}/public/404.html")
    end
  end




end
