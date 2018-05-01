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

  describe "GET #show_first_character_picture" do
    it 'returns http success' do
      xhr :get, :show_first_character_picture, id: characters(:game_boss).id, format: :js
      expect(response).to have_http_status(:success)
    end

    it "with a not found character, renders 404.html file" do
      xhr :get, :show_first_character_picture, id: Random.new.rand(2000..3000), format: :js
      expect(response).to render_template(:file => "#{Rails.root}/public/404.html")
    end
  end

  describe "GET #show_second_character_picture" do
    it 'returns http success' do
      xhr :get, :show_second_character_picture, id: characters(:game_looser).id, format: :js
      expect(response).to have_http_status(:success)
    end

    it "with a not found character, renders 404.html file" do
      xhr :get, :show_second_character_picture, id: Random.new.rand(2000..3000), format: :js
      expect(response).to render_template(:file => "#{Rails.root}/public/404.html")
    end
  end

end
