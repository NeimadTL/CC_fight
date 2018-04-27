require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

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

end
